import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed843
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody843_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody843_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody843_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody843_3 : StackLang.HolProg 64 :=
.seq NamedBody843_1 NamedBody843_2

def NamedBody843_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody843_3 NamedBody843_4

def NamedBody843_6 : StackLang.HolProg 64 :=
.seq NamedBody843_0 NamedBody843_5

def NamedBody843_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody843_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody843_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody843_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_13 : StackLang.HolProg 64 :=
.seq NamedBody843_11 NamedBody843_12

def NamedBody843_14 : StackLang.HolProg 64 :=
.seq NamedBody843_10 NamedBody843_13

def NamedBody843_15 : StackLang.HolProg 64 :=
.seq NamedBody843_9 NamedBody843_14

def NamedBody843_16 : StackLang.HolProg 64 :=
.seq NamedBody843_8 NamedBody843_15

def NamedBody843_17 : StackLang.HolProg 64 :=
.seq NamedBody843_7 NamedBody843_16

def NamedBody843_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4215#64)

def NamedBody843_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_21 : StackLang.HolProg 64 :=
.seq NamedBody843_19 NamedBody843_20

def NamedBody843_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody843_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody843_25 : StackLang.HolProg 64 :=
.seq NamedBody843_23 NamedBody843_24

def NamedBody843_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody843_25 NamedBody843_26

def NamedBody843_28 : StackLang.HolProg 64 :=
.seq NamedBody843_22 NamedBody843_27

def NamedBody843_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody843_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 3

def NamedBody843_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody843_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody843_38 : StackLang.HolProg 64 :=
.seq NamedBody843_36 NamedBody843_37

def NamedBody843_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody843_40 : StackLang.HolProg 64 :=
.seq NamedBody843_38 NamedBody843_39

def NamedBody843_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_42 : StackLang.HolProg 64 :=
.seq NamedBody843_40 NamedBody843_41

def NamedBody843_43 : StackLang.HolProg 64 :=
.seq NamedBody843_35 NamedBody843_42

def NamedBody843_44 : StackLang.HolProg 64 :=
.seq NamedBody843_34 NamedBody843_43

def NamedBody843_45 : StackLang.HolProg 64 :=
.seq NamedBody843_33 NamedBody843_44

def NamedBody843_46 : StackLang.HolProg 64 :=
.seq NamedBody843_32 NamedBody843_45

def NamedBody843_47 : StackLang.HolProg 64 :=
.seq NamedBody843_31 NamedBody843_46

def NamedBody843_48 : StackLang.HolProg 64 :=
.seq NamedBody843_30 NamedBody843_47

def NamedBody843_49 : StackLang.HolProg 64 :=
.seq NamedBody843_29 NamedBody843_48

def NamedBody843_50 : StackLang.HolProg 64 :=
.seq NamedBody843_28 NamedBody843_49

def NamedBody843_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody843_58 : StackLang.HolProg 64 :=
.seq NamedBody843_56 NamedBody843_57

def NamedBody843_59 : StackLang.HolProg 64 :=
.seq NamedBody843_55 NamedBody843_58

def NamedBody843_60 : StackLang.HolProg 64 :=
.seq NamedBody843_54 NamedBody843_59

def NamedBody843_61 : StackLang.HolProg 64 :=
.seq NamedBody843_53 NamedBody843_60

def NamedBody843_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody843_64 : StackLang.HolProg 64 :=
.seq NamedBody843_62 NamedBody843_63

def NamedBody843_65 : StackLang.HolProg 64 :=
.call (some (NamedBody843_61, 1, 843, 2)) (Sum.inl 841) (some (NamedBody843_64, 843, 3))

def NamedBody843_66 : StackLang.HolProg 64 :=
.seq NamedBody843_52 NamedBody843_65

def NamedBody843_67 : StackLang.HolProg 64 :=
.seq NamedBody843_51 NamedBody843_66

def NamedBody843_68 : StackLang.HolProg 64 :=
.seq NamedBody843_50 NamedBody843_67

def NamedBody843_69 : StackLang.HolProg 64 :=
.seq NamedBody843_21 NamedBody843_68

def NamedBody843_70 : StackLang.HolProg 64 :=
.seq NamedBody843_18 NamedBody843_69

def NamedBody843_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 400#64)))

def NamedBody843_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4216#64)

def NamedBody843_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_78 : StackLang.HolProg 64 :=
.seq NamedBody843_76 NamedBody843_77

def NamedBody843_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody843_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody843_82 : StackLang.HolProg 64 :=
.seq NamedBody843_80 NamedBody843_81

def NamedBody843_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody843_82 NamedBody843_83

def NamedBody843_85 : StackLang.HolProg 64 :=
.seq NamedBody843_79 NamedBody843_84

def NamedBody843_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody843_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 5

def NamedBody843_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody843_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody843_95 : StackLang.HolProg 64 :=
.seq NamedBody843_93 NamedBody843_94

def NamedBody843_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody843_97 : StackLang.HolProg 64 :=
.seq NamedBody843_95 NamedBody843_96

def NamedBody843_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_99 : StackLang.HolProg 64 :=
.seq NamedBody843_97 NamedBody843_98

def NamedBody843_100 : StackLang.HolProg 64 :=
.seq NamedBody843_92 NamedBody843_99

def NamedBody843_101 : StackLang.HolProg 64 :=
.seq NamedBody843_91 NamedBody843_100

def NamedBody843_102 : StackLang.HolProg 64 :=
.seq NamedBody843_90 NamedBody843_101

def NamedBody843_103 : StackLang.HolProg 64 :=
.seq NamedBody843_89 NamedBody843_102

def NamedBody843_104 : StackLang.HolProg 64 :=
.seq NamedBody843_88 NamedBody843_103

def NamedBody843_105 : StackLang.HolProg 64 :=
.seq NamedBody843_87 NamedBody843_104

def NamedBody843_106 : StackLang.HolProg 64 :=
.seq NamedBody843_86 NamedBody843_105

def NamedBody843_107 : StackLang.HolProg 64 :=
.seq NamedBody843_85 NamedBody843_106

def NamedBody843_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody843_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_117 : StackLang.HolProg 64 :=
.seq NamedBody843_115 NamedBody843_116

def NamedBody843_118 : StackLang.HolProg 64 :=
.seq NamedBody843_114 NamedBody843_117

def NamedBody843_119 : StackLang.HolProg 64 :=
.seq NamedBody843_113 NamedBody843_118

def NamedBody843_120 : StackLang.HolProg 64 :=
.seq NamedBody843_112 NamedBody843_119

def NamedBody843_121 : StackLang.HolProg 64 :=
.seq NamedBody843_111 NamedBody843_120

def NamedBody843_122 : StackLang.HolProg 64 :=
.seq NamedBody843_110 NamedBody843_121

def NamedBody843_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_125 : StackLang.HolProg 64 :=
.seq NamedBody843_123 NamedBody843_124

def NamedBody843_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody843_127 : StackLang.HolProg 64 :=
.seq NamedBody843_125 NamedBody843_126

def NamedBody843_128 : StackLang.HolProg 64 :=
.call (some (NamedBody843_122, 1, 843, 4)) (Sum.inl 68) (some (NamedBody843_127, 843, 5))

def NamedBody843_129 : StackLang.HolProg 64 :=
.seq NamedBody843_109 NamedBody843_128

def NamedBody843_130 : StackLang.HolProg 64 :=
.seq NamedBody843_108 NamedBody843_129

def NamedBody843_131 : StackLang.HolProg 64 :=
.seq NamedBody843_107 NamedBody843_130

def NamedBody843_132 : StackLang.HolProg 64 :=
.seq NamedBody843_78 NamedBody843_131

def NamedBody843_133 : StackLang.HolProg 64 :=
.seq NamedBody843_75 NamedBody843_132

def NamedBody843_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody843_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody843_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody843_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody843_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody843_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_146 : StackLang.HolProg 64 :=
.seq NamedBody843_144 NamedBody843_145

def NamedBody843_147 : StackLang.HolProg 64 :=
.seq NamedBody843_143 NamedBody843_146

def NamedBody843_148 : StackLang.HolProg 64 :=
.seq NamedBody843_142 NamedBody843_147

def NamedBody843_149 : StackLang.HolProg 64 :=
.seq NamedBody843_141 NamedBody843_148

def NamedBody843_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 128#64)

def NamedBody843_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody843_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_155 : StackLang.HolProg 64 :=
.seq NamedBody843_153 NamedBody843_154

def NamedBody843_156 : StackLang.HolProg 64 :=
.seq NamedBody843_152 NamedBody843_155

def NamedBody843_157 : StackLang.HolProg 64 :=
.seq NamedBody843_151 NamedBody843_156

def NamedBody843_158 : StackLang.HolProg 64 :=
.seq NamedBody843_150 NamedBody843_157

def NamedBody843_159 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody843_149 NamedBody843_158

def NamedBody843_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody843_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_165 : StackLang.HolProg 64 :=
.seq NamedBody843_163 NamedBody843_164

def NamedBody843_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4217#64)

def NamedBody843_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_169 : StackLang.HolProg 64 :=
.seq NamedBody843_167 NamedBody843_168

def NamedBody843_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody843_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody843_173 : StackLang.HolProg 64 :=
.seq NamedBody843_171 NamedBody843_172

def NamedBody843_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_175 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody843_173 NamedBody843_174

def NamedBody843_176 : StackLang.HolProg 64 :=
.seq NamedBody843_170 NamedBody843_175

def NamedBody843_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody843_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 7

def NamedBody843_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody843_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody843_186 : StackLang.HolProg 64 :=
.seq NamedBody843_184 NamedBody843_185

def NamedBody843_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody843_188 : StackLang.HolProg 64 :=
.seq NamedBody843_186 NamedBody843_187

def NamedBody843_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_190 : StackLang.HolProg 64 :=
.seq NamedBody843_188 NamedBody843_189

def NamedBody843_191 : StackLang.HolProg 64 :=
.seq NamedBody843_183 NamedBody843_190

def NamedBody843_192 : StackLang.HolProg 64 :=
.seq NamedBody843_182 NamedBody843_191

def NamedBody843_193 : StackLang.HolProg 64 :=
.seq NamedBody843_181 NamedBody843_192

def NamedBody843_194 : StackLang.HolProg 64 :=
.seq NamedBody843_180 NamedBody843_193

def NamedBody843_195 : StackLang.HolProg 64 :=
.seq NamedBody843_179 NamedBody843_194

def NamedBody843_196 : StackLang.HolProg 64 :=
.seq NamedBody843_178 NamedBody843_195

def NamedBody843_197 : StackLang.HolProg 64 :=
.seq NamedBody843_177 NamedBody843_196

def NamedBody843_198 : StackLang.HolProg 64 :=
.seq NamedBody843_176 NamedBody843_197

def NamedBody843_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody843_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_207 : StackLang.HolProg 64 :=
.seq NamedBody843_205 NamedBody843_206

def NamedBody843_208 : StackLang.HolProg 64 :=
.seq NamedBody843_204 NamedBody843_207

def NamedBody843_209 : StackLang.HolProg 64 :=
.seq NamedBody843_203 NamedBody843_208

def NamedBody843_210 : StackLang.HolProg 64 :=
.seq NamedBody843_202 NamedBody843_209

def NamedBody843_211 : StackLang.HolProg 64 :=
.seq NamedBody843_201 NamedBody843_210

def NamedBody843_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody843_214 : StackLang.HolProg 64 :=
.seq NamedBody843_212 NamedBody843_213

def NamedBody843_215 : StackLang.HolProg 64 :=
.call (some (NamedBody843_211, 1, 843, 6)) (Sum.inl 177) (some (NamedBody843_214, 843, 7))

def NamedBody843_216 : StackLang.HolProg 64 :=
.seq NamedBody843_200 NamedBody843_215

def NamedBody843_217 : StackLang.HolProg 64 :=
.seq NamedBody843_199 NamedBody843_216

def NamedBody843_218 : StackLang.HolProg 64 :=
.seq NamedBody843_198 NamedBody843_217

def NamedBody843_219 : StackLang.HolProg 64 :=
.seq NamedBody843_169 NamedBody843_218

def NamedBody843_220 : StackLang.HolProg 64 :=
.seq NamedBody843_166 NamedBody843_219

def NamedBody843_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody843_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 256#64)

def NamedBody843_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4218#64)

def NamedBody843_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_230 : StackLang.HolProg 64 :=
.seq NamedBody843_228 NamedBody843_229

def NamedBody843_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody843_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody843_234 : StackLang.HolProg 64 :=
.seq NamedBody843_232 NamedBody843_233

def NamedBody843_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_236 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody843_234 NamedBody843_235

def NamedBody843_237 : StackLang.HolProg 64 :=
.seq NamedBody843_231 NamedBody843_236

def NamedBody843_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody843_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 9

def NamedBody843_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody843_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody843_247 : StackLang.HolProg 64 :=
.seq NamedBody843_245 NamedBody843_246

def NamedBody843_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody843_249 : StackLang.HolProg 64 :=
.seq NamedBody843_247 NamedBody843_248

def NamedBody843_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_251 : StackLang.HolProg 64 :=
.seq NamedBody843_249 NamedBody843_250

def NamedBody843_252 : StackLang.HolProg 64 :=
.seq NamedBody843_244 NamedBody843_251

def NamedBody843_253 : StackLang.HolProg 64 :=
.seq NamedBody843_243 NamedBody843_252

def NamedBody843_254 : StackLang.HolProg 64 :=
.seq NamedBody843_242 NamedBody843_253

def NamedBody843_255 : StackLang.HolProg 64 :=
.seq NamedBody843_241 NamedBody843_254

def NamedBody843_256 : StackLang.HolProg 64 :=
.seq NamedBody843_240 NamedBody843_255

def NamedBody843_257 : StackLang.HolProg 64 :=
.seq NamedBody843_239 NamedBody843_256

def NamedBody843_258 : StackLang.HolProg 64 :=
.seq NamedBody843_238 NamedBody843_257

def NamedBody843_259 : StackLang.HolProg 64 :=
.seq NamedBody843_237 NamedBody843_258

def NamedBody843_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody843_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_268 : StackLang.HolProg 64 :=
.seq NamedBody843_266 NamedBody843_267

def NamedBody843_269 : StackLang.HolProg 64 :=
.seq NamedBody843_265 NamedBody843_268

def NamedBody843_270 : StackLang.HolProg 64 :=
.seq NamedBody843_264 NamedBody843_269

def NamedBody843_271 : StackLang.HolProg 64 :=
.seq NamedBody843_263 NamedBody843_270

def NamedBody843_272 : StackLang.HolProg 64 :=
.seq NamedBody843_262 NamedBody843_271

def NamedBody843_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_274 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody843_275 : StackLang.HolProg 64 :=
.seq NamedBody843_273 NamedBody843_274

def NamedBody843_276 : StackLang.HolProg 64 :=
.call (some (NamedBody843_272, 1, 843, 8)) (Sum.inl 68) (some (NamedBody843_275, 843, 9))

def NamedBody843_277 : StackLang.HolProg 64 :=
.seq NamedBody843_261 NamedBody843_276

def NamedBody843_278 : StackLang.HolProg 64 :=
.seq NamedBody843_260 NamedBody843_277

def NamedBody843_279 : StackLang.HolProg 64 :=
.seq NamedBody843_259 NamedBody843_278

def NamedBody843_280 : StackLang.HolProg 64 :=
.seq NamedBody843_230 NamedBody843_279

def NamedBody843_281 : StackLang.HolProg 64 :=
.seq NamedBody843_227 NamedBody843_280

def NamedBody843_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody843_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_286 : StackLang.HolProg 64 :=
.seq NamedBody843_284 NamedBody843_285

def NamedBody843_287 : StackLang.HolProg 64 :=
.seq NamedBody843_283 NamedBody843_286

def NamedBody843_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4219#64)

def NamedBody843_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_291 : StackLang.HolProg 64 :=
.seq NamedBody843_289 NamedBody843_290

def NamedBody843_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody843_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody843_295 : StackLang.HolProg 64 :=
.seq NamedBody843_293 NamedBody843_294

def NamedBody843_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody843_295 NamedBody843_296

def NamedBody843_298 : StackLang.HolProg 64 :=
.seq NamedBody843_292 NamedBody843_297

def NamedBody843_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody843_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 11

def NamedBody843_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody843_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody843_308 : StackLang.HolProg 64 :=
.seq NamedBody843_306 NamedBody843_307

def NamedBody843_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody843_310 : StackLang.HolProg 64 :=
.seq NamedBody843_308 NamedBody843_309

def NamedBody843_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_312 : StackLang.HolProg 64 :=
.seq NamedBody843_310 NamedBody843_311

def NamedBody843_313 : StackLang.HolProg 64 :=
.seq NamedBody843_305 NamedBody843_312

def NamedBody843_314 : StackLang.HolProg 64 :=
.seq NamedBody843_304 NamedBody843_313

def NamedBody843_315 : StackLang.HolProg 64 :=
.seq NamedBody843_303 NamedBody843_314

def NamedBody843_316 : StackLang.HolProg 64 :=
.seq NamedBody843_302 NamedBody843_315

def NamedBody843_317 : StackLang.HolProg 64 :=
.seq NamedBody843_301 NamedBody843_316

def NamedBody843_318 : StackLang.HolProg 64 :=
.seq NamedBody843_300 NamedBody843_317

def NamedBody843_319 : StackLang.HolProg 64 :=
.seq NamedBody843_299 NamedBody843_318

def NamedBody843_320 : StackLang.HolProg 64 :=
.seq NamedBody843_298 NamedBody843_319

def NamedBody843_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_329 : StackLang.HolProg 64 :=
.seq NamedBody843_327 NamedBody843_328

def NamedBody843_330 : StackLang.HolProg 64 :=
.seq NamedBody843_326 NamedBody843_329

def NamedBody843_331 : StackLang.HolProg 64 :=
.seq NamedBody843_325 NamedBody843_330

def NamedBody843_332 : StackLang.HolProg 64 :=
.seq NamedBody843_324 NamedBody843_331

def NamedBody843_333 : StackLang.HolProg 64 :=
.seq NamedBody843_323 NamedBody843_332

def NamedBody843_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_336 : StackLang.HolProg 64 :=
.seq NamedBody843_334 NamedBody843_335

def NamedBody843_337 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody843_338 : StackLang.HolProg 64 :=
.seq NamedBody843_336 NamedBody843_337

def NamedBody843_339 : StackLang.HolProg 64 :=
.call (some (NamedBody843_333, 1, 843, 10)) (Sum.inl 839) (some (NamedBody843_338, 843, 11))

def NamedBody843_340 : StackLang.HolProg 64 :=
.seq NamedBody843_322 NamedBody843_339

def NamedBody843_341 : StackLang.HolProg 64 :=
.seq NamedBody843_321 NamedBody843_340

def NamedBody843_342 : StackLang.HolProg 64 :=
.seq NamedBody843_320 NamedBody843_341

def NamedBody843_343 : StackLang.HolProg 64 :=
.seq NamedBody843_291 NamedBody843_342

def NamedBody843_344 : StackLang.HolProg 64 :=
.seq NamedBody843_288 NamedBody843_343

def NamedBody843_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody843_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 256#64)

def NamedBody843_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4220#64)

def NamedBody843_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_352 : StackLang.HolProg 64 :=
.seq NamedBody843_350 NamedBody843_351

def NamedBody843_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody843_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody843_356 : StackLang.HolProg 64 :=
.seq NamedBody843_354 NamedBody843_355

def NamedBody843_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_358 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody843_356 NamedBody843_357

def NamedBody843_359 : StackLang.HolProg 64 :=
.seq NamedBody843_353 NamedBody843_358

def NamedBody843_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody843_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 13

def NamedBody843_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody843_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody843_369 : StackLang.HolProg 64 :=
.seq NamedBody843_367 NamedBody843_368

def NamedBody843_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody843_371 : StackLang.HolProg 64 :=
.seq NamedBody843_369 NamedBody843_370

def NamedBody843_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_373 : StackLang.HolProg 64 :=
.seq NamedBody843_371 NamedBody843_372

def NamedBody843_374 : StackLang.HolProg 64 :=
.seq NamedBody843_366 NamedBody843_373

def NamedBody843_375 : StackLang.HolProg 64 :=
.seq NamedBody843_365 NamedBody843_374

def NamedBody843_376 : StackLang.HolProg 64 :=
.seq NamedBody843_364 NamedBody843_375

def NamedBody843_377 : StackLang.HolProg 64 :=
.seq NamedBody843_363 NamedBody843_376

def NamedBody843_378 : StackLang.HolProg 64 :=
.seq NamedBody843_362 NamedBody843_377

def NamedBody843_379 : StackLang.HolProg 64 :=
.seq NamedBody843_361 NamedBody843_378

def NamedBody843_380 : StackLang.HolProg 64 :=
.seq NamedBody843_360 NamedBody843_379

def NamedBody843_381 : StackLang.HolProg 64 :=
.seq NamedBody843_359 NamedBody843_380

def NamedBody843_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody843_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_392 : StackLang.HolProg 64 :=
.seq NamedBody843_390 NamedBody843_391

def NamedBody843_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody843_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_395 : StackLang.HolProg 64 :=
.seq NamedBody843_393 NamedBody843_394

def NamedBody843_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_397 : StackLang.HolProg 64 :=
.seq NamedBody843_395 NamedBody843_396

def NamedBody843_398 : StackLang.HolProg 64 :=
.seq NamedBody843_392 NamedBody843_397

def NamedBody843_399 : StackLang.HolProg 64 :=
.seq NamedBody843_389 NamedBody843_398

def NamedBody843_400 : StackLang.HolProg 64 :=
.seq NamedBody843_388 NamedBody843_399

def NamedBody843_401 : StackLang.HolProg 64 :=
.seq NamedBody843_387 NamedBody843_400

def NamedBody843_402 : StackLang.HolProg 64 :=
.seq NamedBody843_386 NamedBody843_401

def NamedBody843_403 : StackLang.HolProg 64 :=
.seq NamedBody843_385 NamedBody843_402

def NamedBody843_404 : StackLang.HolProg 64 :=
.seq NamedBody843_384 NamedBody843_403

def NamedBody843_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_408 : StackLang.HolProg 64 :=
.seq NamedBody843_406 NamedBody843_407

def NamedBody843_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody843_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_411 : StackLang.HolProg 64 :=
.seq NamedBody843_409 NamedBody843_410

def NamedBody843_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_413 : StackLang.HolProg 64 :=
.seq NamedBody843_411 NamedBody843_412

def NamedBody843_414 : StackLang.HolProg 64 :=
.seq NamedBody843_408 NamedBody843_413

def NamedBody843_415 : StackLang.HolProg 64 :=
.seq NamedBody843_405 NamedBody843_414

def NamedBody843_416 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody843_417 : StackLang.HolProg 64 :=
.seq NamedBody843_415 NamedBody843_416

def NamedBody843_418 : StackLang.HolProg 64 :=
.call (some (NamedBody843_404, 1, 843, 12)) (Sum.inl 176) (some (NamedBody843_417, 843, 13))

def NamedBody843_419 : StackLang.HolProg 64 :=
.seq NamedBody843_383 NamedBody843_418

def NamedBody843_420 : StackLang.HolProg 64 :=
.seq NamedBody843_382 NamedBody843_419

def NamedBody843_421 : StackLang.HolProg 64 :=
.seq NamedBody843_381 NamedBody843_420

def NamedBody843_422 : StackLang.HolProg 64 :=
.seq NamedBody843_352 NamedBody843_421

def NamedBody843_423 : StackLang.HolProg 64 :=
.seq NamedBody843_349 NamedBody843_422

def NamedBody843_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody843_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody843_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4221#64)

def NamedBody843_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_431 : StackLang.HolProg 64 :=
.seq NamedBody843_429 NamedBody843_430

def NamedBody843_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody843_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody843_435 : StackLang.HolProg 64 :=
.seq NamedBody843_433 NamedBody843_434

def NamedBody843_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_437 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody843_435 NamedBody843_436

def NamedBody843_438 : StackLang.HolProg 64 :=
.seq NamedBody843_432 NamedBody843_437

def NamedBody843_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody843_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 15

def NamedBody843_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody843_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody843_448 : StackLang.HolProg 64 :=
.seq NamedBody843_446 NamedBody843_447

def NamedBody843_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody843_450 : StackLang.HolProg 64 :=
.seq NamedBody843_448 NamedBody843_449

def NamedBody843_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_452 : StackLang.HolProg 64 :=
.seq NamedBody843_450 NamedBody843_451

def NamedBody843_453 : StackLang.HolProg 64 :=
.seq NamedBody843_445 NamedBody843_452

def NamedBody843_454 : StackLang.HolProg 64 :=
.seq NamedBody843_444 NamedBody843_453

def NamedBody843_455 : StackLang.HolProg 64 :=
.seq NamedBody843_443 NamedBody843_454

def NamedBody843_456 : StackLang.HolProg 64 :=
.seq NamedBody843_442 NamedBody843_455

def NamedBody843_457 : StackLang.HolProg 64 :=
.seq NamedBody843_441 NamedBody843_456

def NamedBody843_458 : StackLang.HolProg 64 :=
.seq NamedBody843_440 NamedBody843_457

def NamedBody843_459 : StackLang.HolProg 64 :=
.seq NamedBody843_439 NamedBody843_458

def NamedBody843_460 : StackLang.HolProg 64 :=
.seq NamedBody843_438 NamedBody843_459

def NamedBody843_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody843_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody843_470 : StackLang.HolProg 64 :=
.seq NamedBody843_468 NamedBody843_469

def NamedBody843_471 : StackLang.HolProg 64 :=
.seq NamedBody843_467 NamedBody843_470

def NamedBody843_472 : StackLang.HolProg 64 :=
.seq NamedBody843_466 NamedBody843_471

def NamedBody843_473 : StackLang.HolProg 64 :=
.seq NamedBody843_465 NamedBody843_472

def NamedBody843_474 : StackLang.HolProg 64 :=
.seq NamedBody843_464 NamedBody843_473

def NamedBody843_475 : StackLang.HolProg 64 :=
.seq NamedBody843_463 NamedBody843_474

def NamedBody843_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody843_478 : StackLang.HolProg 64 :=
.seq NamedBody843_476 NamedBody843_477

def NamedBody843_479 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody843_480 : StackLang.HolProg 64 :=
.seq NamedBody843_478 NamedBody843_479

def NamedBody843_481 : StackLang.HolProg 64 :=
.call (some (NamedBody843_475, 1, 843, 14)) (Sum.inl 842) (some (NamedBody843_480, 843, 15))

def NamedBody843_482 : StackLang.HolProg 64 :=
.seq NamedBody843_462 NamedBody843_481

def NamedBody843_483 : StackLang.HolProg 64 :=
.seq NamedBody843_461 NamedBody843_482

def NamedBody843_484 : StackLang.HolProg 64 :=
.seq NamedBody843_460 NamedBody843_483

def NamedBody843_485 : StackLang.HolProg 64 :=
.seq NamedBody843_431 NamedBody843_484

def NamedBody843_486 : StackLang.HolProg 64 :=
.seq NamedBody843_428 NamedBody843_485

def NamedBody843_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody843_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody843_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_492 : StackLang.HolProg 64 :=
.seq NamedBody843_490 NamedBody843_491

def NamedBody843_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4222#64)

def NamedBody843_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_496 : StackLang.HolProg 64 :=
.seq NamedBody843_494 NamedBody843_495

def NamedBody843_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody843_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody843_500 : StackLang.HolProg 64 :=
.seq NamedBody843_498 NamedBody843_499

def NamedBody843_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_502 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody843_500 NamedBody843_501

def NamedBody843_503 : StackLang.HolProg 64 :=
.seq NamedBody843_497 NamedBody843_502

def NamedBody843_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody843_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody843_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 17

def NamedBody843_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody843_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody843_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody843_513 : StackLang.HolProg 64 :=
.seq NamedBody843_511 NamedBody843_512

def NamedBody843_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody843_515 : StackLang.HolProg 64 :=
.seq NamedBody843_513 NamedBody843_514

def NamedBody843_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_517 : StackLang.HolProg 64 :=
.seq NamedBody843_515 NamedBody843_516

def NamedBody843_518 : StackLang.HolProg 64 :=
.seq NamedBody843_510 NamedBody843_517

def NamedBody843_519 : StackLang.HolProg 64 :=
.seq NamedBody843_509 NamedBody843_518

def NamedBody843_520 : StackLang.HolProg 64 :=
.seq NamedBody843_508 NamedBody843_519

def NamedBody843_521 : StackLang.HolProg 64 :=
.seq NamedBody843_507 NamedBody843_520

def NamedBody843_522 : StackLang.HolProg 64 :=
.seq NamedBody843_506 NamedBody843_521

def NamedBody843_523 : StackLang.HolProg 64 :=
.seq NamedBody843_505 NamedBody843_522

def NamedBody843_524 : StackLang.HolProg 64 :=
.seq NamedBody843_504 NamedBody843_523

def NamedBody843_525 : StackLang.HolProg 64 :=
.seq NamedBody843_503 NamedBody843_524

def NamedBody843_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody843_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody843_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody843_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody843_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody843_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_536 : StackLang.HolProg 64 :=
.seq NamedBody843_534 NamedBody843_535

def NamedBody843_537 : StackLang.HolProg 64 :=
.seq NamedBody843_533 NamedBody843_536

def NamedBody843_538 : StackLang.HolProg 64 :=
.seq NamedBody843_532 NamedBody843_537

def NamedBody843_539 : StackLang.HolProg 64 :=
.seq NamedBody843_531 NamedBody843_538

def NamedBody843_540 : StackLang.HolProg 64 :=
.seq NamedBody843_530 NamedBody843_539

def NamedBody843_541 : StackLang.HolProg 64 :=
.seq NamedBody843_529 NamedBody843_540

def NamedBody843_542 : StackLang.HolProg 64 :=
.seq NamedBody843_528 NamedBody843_541

def NamedBody843_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody843_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody843_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody843_546 : StackLang.HolProg 64 :=
.seq NamedBody843_544 NamedBody843_545

def NamedBody843_547 : StackLang.HolProg 64 :=
.seq NamedBody843_543 NamedBody843_546

def NamedBody843_548 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody843_549 : StackLang.HolProg 64 :=
.seq NamedBody843_547 NamedBody843_548

def NamedBody843_550 : StackLang.HolProg 64 :=
.call (some (NamedBody843_542, 1, 843, 16)) (Sum.inl 840) (some (NamedBody843_549, 843, 17))

def NamedBody843_551 : StackLang.HolProg 64 :=
.seq NamedBody843_527 NamedBody843_550

def NamedBody843_552 : StackLang.HolProg 64 :=
.seq NamedBody843_526 NamedBody843_551

def NamedBody843_553 : StackLang.HolProg 64 :=
.seq NamedBody843_525 NamedBody843_552

def NamedBody843_554 : StackLang.HolProg 64 :=
.seq NamedBody843_496 NamedBody843_553

def NamedBody843_555 : StackLang.HolProg 64 :=
.seq NamedBody843_493 NamedBody843_554

def NamedBody843_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody843_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody843_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody843_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody843_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody843_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody843_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody843_569 : StackLang.HolProg 64 :=
.seq NamedBody843_567 NamedBody843_568

def NamedBody843_570 : StackLang.HolProg 64 :=
.seq NamedBody843_566 NamedBody843_569

def NamedBody843_571 : StackLang.HolProg 64 :=
.seq NamedBody843_565 NamedBody843_570

def NamedBody843_572 : StackLang.HolProg 64 :=
.seq NamedBody843_564 NamedBody843_571

def NamedBody843_573 : StackLang.HolProg 64 :=
.seq NamedBody843_563 NamedBody843_572

def NamedBody843_574 : StackLang.HolProg 64 :=
.seq NamedBody843_562 NamedBody843_573

def NamedBody843_575 : StackLang.HolProg 64 :=
.seq NamedBody843_561 NamedBody843_574

def NamedBody843_576 : StackLang.HolProg 64 :=
.seq NamedBody843_560 NamedBody843_575

def NamedBody843_577 : StackLang.HolProg 64 :=
.seq NamedBody843_559 NamedBody843_576

def NamedBody843_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody843_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody843_580 : StackLang.HolProg 64 :=
.seq NamedBody843_578 NamedBody843_579

def NamedBody843_581 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody843_577 NamedBody843_580

def NamedBody843_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody843_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody843_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody843_586 : StackLang.HolProg 64 :=
.seq NamedBody843_584 NamedBody843_585

def NamedBody843_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody843_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody843_589 : StackLang.HolProg 64 :=
.seq NamedBody843_587 NamedBody843_588

def NamedBody843_590 : StackLang.HolProg 64 :=
.seq NamedBody843_586 NamedBody843_589

def NamedBody843_591 : StackLang.HolProg 64 :=
.seq NamedBody843_583 NamedBody843_590

def NamedBody843_592 : StackLang.HolProg 64 :=
.seq NamedBody843_582 NamedBody843_591

def NamedBody843_593 : StackLang.HolProg 64 :=
.seq NamedBody843_581 NamedBody843_592

def NamedBody843_594 : StackLang.HolProg 64 :=
.seq NamedBody843_558 NamedBody843_593

def NamedBody843_595 : StackLang.HolProg 64 :=
.seq NamedBody843_557 NamedBody843_594

def NamedBody843_596 : StackLang.HolProg 64 :=
.seq NamedBody843_556 NamedBody843_595

def NamedBody843_597 : StackLang.HolProg 64 :=
.seq NamedBody843_555 NamedBody843_596

def NamedBody843_598 : StackLang.HolProg 64 :=
.seq NamedBody843_492 NamedBody843_597

def NamedBody843_599 : StackLang.HolProg 64 :=
.seq NamedBody843_489 NamedBody843_598

def NamedBody843_600 : StackLang.HolProg 64 :=
.seq NamedBody843_488 NamedBody843_599

def NamedBody843_601 : StackLang.HolProg 64 :=
.seq NamedBody843_487 NamedBody843_600

def NamedBody843_602 : StackLang.HolProg 64 :=
.seq NamedBody843_486 NamedBody843_601

def NamedBody843_603 : StackLang.HolProg 64 :=
.seq NamedBody843_427 NamedBody843_602

def NamedBody843_604 : StackLang.HolProg 64 :=
.seq NamedBody843_426 NamedBody843_603

def NamedBody843_605 : StackLang.HolProg 64 :=
.seq NamedBody843_425 NamedBody843_604

def NamedBody843_606 : StackLang.HolProg 64 :=
.seq NamedBody843_424 NamedBody843_605

def NamedBody843_607 : StackLang.HolProg 64 :=
.seq NamedBody843_423 NamedBody843_606

def NamedBody843_608 : StackLang.HolProg 64 :=
.seq NamedBody843_348 NamedBody843_607

def NamedBody843_609 : StackLang.HolProg 64 :=
.seq NamedBody843_347 NamedBody843_608

def NamedBody843_610 : StackLang.HolProg 64 :=
.seq NamedBody843_346 NamedBody843_609

def NamedBody843_611 : StackLang.HolProg 64 :=
.seq NamedBody843_345 NamedBody843_610

def NamedBody843_612 : StackLang.HolProg 64 :=
.seq NamedBody843_344 NamedBody843_611

def NamedBody843_613 : StackLang.HolProg 64 :=
.seq NamedBody843_287 NamedBody843_612

def NamedBody843_614 : StackLang.HolProg 64 :=
.seq NamedBody843_282 NamedBody843_613

def NamedBody843_615 : StackLang.HolProg 64 :=
.seq NamedBody843_281 NamedBody843_614

def NamedBody843_616 : StackLang.HolProg 64 :=
.seq NamedBody843_226 NamedBody843_615

def NamedBody843_617 : StackLang.HolProg 64 :=
.seq NamedBody843_225 NamedBody843_616

def NamedBody843_618 : StackLang.HolProg 64 :=
.seq NamedBody843_224 NamedBody843_617

def NamedBody843_619 : StackLang.HolProg 64 :=
.seq NamedBody843_223 NamedBody843_618

def NamedBody843_620 : StackLang.HolProg 64 :=
.seq NamedBody843_222 NamedBody843_619

def NamedBody843_621 : StackLang.HolProg 64 :=
.seq NamedBody843_221 NamedBody843_620

def NamedBody843_622 : StackLang.HolProg 64 :=
.seq NamedBody843_220 NamedBody843_621

def NamedBody843_623 : StackLang.HolProg 64 :=
.seq NamedBody843_165 NamedBody843_622

def NamedBody843_624 : StackLang.HolProg 64 :=
.seq NamedBody843_162 NamedBody843_623

def NamedBody843_625 : StackLang.HolProg 64 :=
.seq NamedBody843_161 NamedBody843_624

def NamedBody843_626 : StackLang.HolProg 64 :=
.seq NamedBody843_160 NamedBody843_625

def NamedBody843_627 : StackLang.HolProg 64 :=
.seq NamedBody843_159 NamedBody843_626

def NamedBody843_628 : StackLang.HolProg 64 :=
.seq NamedBody843_140 NamedBody843_627

def NamedBody843_629 : StackLang.HolProg 64 :=
.seq NamedBody843_139 NamedBody843_628

def NamedBody843_630 : StackLang.HolProg 64 :=
.seq NamedBody843_138 NamedBody843_629

def NamedBody843_631 : StackLang.HolProg 64 :=
.seq NamedBody843_137 NamedBody843_630

def NamedBody843_632 : StackLang.HolProg 64 :=
.seq NamedBody843_136 NamedBody843_631

def NamedBody843_633 : StackLang.HolProg 64 :=
.seq NamedBody843_135 NamedBody843_632

def NamedBody843_634 : StackLang.HolProg 64 :=
.seq NamedBody843_134 NamedBody843_633

def NamedBody843_635 : StackLang.HolProg 64 :=
.seq NamedBody843_133 NamedBody843_634

def NamedBody843_636 : StackLang.HolProg 64 :=
.seq NamedBody843_74 NamedBody843_635

def NamedBody843_637 : StackLang.HolProg 64 :=
.seq NamedBody843_73 NamedBody843_636

def NamedBody843_638 : StackLang.HolProg 64 :=
.seq NamedBody843_72 NamedBody843_637

def NamedBody843_639 : StackLang.HolProg 64 :=
.seq NamedBody843_71 NamedBody843_638

def NamedBody843_640 : StackLang.HolProg 64 :=
.seq NamedBody843_70 NamedBody843_639

def NamedBody843_641 : StackLang.HolProg 64 :=
.seq NamedBody843_17 NamedBody843_640

def NamedBody843_642 : StackLang.HolProg 64 :=
.seq NamedBody843_6 NamedBody843_641

def Named843 : Nat × StackLang.HolProg 64 := (843, NamedBody843_642)
theorem Named843_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed843 = Named843 := by
  kernel_rfl
#print axioms Named843_eq
end InitECandidate.Proofs.BackendStages
