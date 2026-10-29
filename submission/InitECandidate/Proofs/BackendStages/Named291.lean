import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed291
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody291_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody291_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody291_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody291_3 : StackLang.HolProg 64 :=
.seq NamedBody291_1 NamedBody291_2

def NamedBody291_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody291_3 NamedBody291_4

def NamedBody291_6 : StackLang.HolProg 64 :=
.seq NamedBody291_0 NamedBody291_5

def NamedBody291_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody291_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody291_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody291_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody291_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody291_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody291_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody291_14 : StackLang.HolProg 64 :=
.seq NamedBody291_12 NamedBody291_13

def NamedBody291_15 : StackLang.HolProg 64 :=
.seq NamedBody291_11 NamedBody291_14

def NamedBody291_16 : StackLang.HolProg 64 :=
.seq NamedBody291_10 NamedBody291_15

def NamedBody291_17 : StackLang.HolProg 64 :=
.seq NamedBody291_9 NamedBody291_16

def NamedBody291_18 : StackLang.HolProg 64 :=
.seq NamedBody291_8 NamedBody291_17

def NamedBody291_19 : StackLang.HolProg 64 :=
.seq NamedBody291_7 NamedBody291_18

def NamedBody291_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 793#64)

def NamedBody291_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody291_23 : StackLang.HolProg 64 :=
.seq NamedBody291_21 NamedBody291_22

def NamedBody291_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody291_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody291_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody291_27 : StackLang.HolProg 64 :=
.seq NamedBody291_25 NamedBody291_26

def NamedBody291_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody291_27 NamedBody291_28

def NamedBody291_30 : StackLang.HolProg 64 :=
.seq NamedBody291_24 NamedBody291_29

def NamedBody291_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody291_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody291_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 291 3

def NamedBody291_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody291_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody291_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody291_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody291_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody291_40 : StackLang.HolProg 64 :=
.seq NamedBody291_38 NamedBody291_39

def NamedBody291_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody291_42 : StackLang.HolProg 64 :=
.seq NamedBody291_40 NamedBody291_41

def NamedBody291_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody291_44 : StackLang.HolProg 64 :=
.seq NamedBody291_42 NamedBody291_43

def NamedBody291_45 : StackLang.HolProg 64 :=
.seq NamedBody291_37 NamedBody291_44

def NamedBody291_46 : StackLang.HolProg 64 :=
.seq NamedBody291_36 NamedBody291_45

def NamedBody291_47 : StackLang.HolProg 64 :=
.seq NamedBody291_35 NamedBody291_46

def NamedBody291_48 : StackLang.HolProg 64 :=
.seq NamedBody291_34 NamedBody291_47

def NamedBody291_49 : StackLang.HolProg 64 :=
.seq NamedBody291_33 NamedBody291_48

def NamedBody291_50 : StackLang.HolProg 64 :=
.seq NamedBody291_32 NamedBody291_49

def NamedBody291_51 : StackLang.HolProg 64 :=
.seq NamedBody291_31 NamedBody291_50

def NamedBody291_52 : StackLang.HolProg 64 :=
.seq NamedBody291_30 NamedBody291_51

def NamedBody291_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody291_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody291_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody291_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody291_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody291_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody291_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody291_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody291_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody291_65 : StackLang.HolProg 64 :=
.seq NamedBody291_63 NamedBody291_64

def NamedBody291_66 : StackLang.HolProg 64 :=
.seq NamedBody291_62 NamedBody291_65

def NamedBody291_67 : StackLang.HolProg 64 :=
.seq NamedBody291_61 NamedBody291_66

def NamedBody291_68 : StackLang.HolProg 64 :=
.seq NamedBody291_60 NamedBody291_67

def NamedBody291_69 : StackLang.HolProg 64 :=
.seq NamedBody291_59 NamedBody291_68

def NamedBody291_70 : StackLang.HolProg 64 :=
.seq NamedBody291_58 NamedBody291_69

def NamedBody291_71 : StackLang.HolProg 64 :=
.seq NamedBody291_57 NamedBody291_70

def NamedBody291_72 : StackLang.HolProg 64 :=
.seq NamedBody291_56 NamedBody291_71

def NamedBody291_73 : StackLang.HolProg 64 :=
.seq NamedBody291_55 NamedBody291_72

def NamedBody291_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody291_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody291_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody291_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody291_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody291_79 : StackLang.HolProg 64 :=
.seq NamedBody291_77 NamedBody291_78

def NamedBody291_80 : StackLang.HolProg 64 :=
.seq NamedBody291_76 NamedBody291_79

def NamedBody291_81 : StackLang.HolProg 64 :=
.seq NamedBody291_75 NamedBody291_80

def NamedBody291_82 : StackLang.HolProg 64 :=
.seq NamedBody291_74 NamedBody291_81

def NamedBody291_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody291_84 : StackLang.HolProg 64 :=
.seq NamedBody291_82 NamedBody291_83

def NamedBody291_85 : StackLang.HolProg 64 :=
.call (some (NamedBody291_73, 1, 291, 2)) (Sum.inl 92) (some (NamedBody291_84, 291, 3))

def NamedBody291_86 : StackLang.HolProg 64 :=
.seq NamedBody291_54 NamedBody291_85

def NamedBody291_87 : StackLang.HolProg 64 :=
.seq NamedBody291_53 NamedBody291_86

def NamedBody291_88 : StackLang.HolProg 64 :=
.seq NamedBody291_52 NamedBody291_87

def NamedBody291_89 : StackLang.HolProg 64 :=
.seq NamedBody291_23 NamedBody291_88

def NamedBody291_90 : StackLang.HolProg 64 :=
.seq NamedBody291_20 NamedBody291_89

def NamedBody291_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody291_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody291_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody291_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody291_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody291_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody291_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody291_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody291_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody291_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody291_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody291_108 : StackLang.HolProg 64 :=
.seq NamedBody291_106 NamedBody291_107

def NamedBody291_109 : StackLang.HolProg 64 :=
.seq NamedBody291_105 NamedBody291_108

def NamedBody291_110 : StackLang.HolProg 64 :=
.seq NamedBody291_104 NamedBody291_109

def NamedBody291_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody291_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody291_110 NamedBody291_111

def NamedBody291_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody291_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody291_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody291_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody291_119 : StackLang.HolProg 64 :=
.seq NamedBody291_117 NamedBody291_118

def NamedBody291_120 : StackLang.HolProg 64 :=
.seq NamedBody291_116 NamedBody291_119

def NamedBody291_121 : StackLang.HolProg 64 :=
.seq NamedBody291_115 NamedBody291_120

def NamedBody291_122 : StackLang.HolProg 64 :=
.seq NamedBody291_114 NamedBody291_121

def NamedBody291_123 : StackLang.HolProg 64 :=
.seq NamedBody291_113 NamedBody291_122

def NamedBody291_124 : StackLang.HolProg 64 :=
.seq NamedBody291_112 NamedBody291_123

def NamedBody291_125 : StackLang.HolProg 64 :=
.seq NamedBody291_103 NamedBody291_124

def NamedBody291_126 : StackLang.HolProg 64 :=
.seq NamedBody291_102 NamedBody291_125

def NamedBody291_127 : StackLang.HolProg 64 :=
.seq NamedBody291_101 NamedBody291_126

def NamedBody291_128 : StackLang.HolProg 64 :=
.seq NamedBody291_100 NamedBody291_127

def NamedBody291_129 : StackLang.HolProg 64 :=
.seq NamedBody291_99 NamedBody291_128

def NamedBody291_130 : StackLang.HolProg 64 :=
.seq NamedBody291_98 NamedBody291_129

def NamedBody291_131 : StackLang.HolProg 64 :=
.seq NamedBody291_97 NamedBody291_130

def NamedBody291_132 : StackLang.HolProg 64 :=
.seq NamedBody291_96 NamedBody291_131

def NamedBody291_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody291_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody291_136 : StackLang.HolProg 64 :=
.seq NamedBody291_134 NamedBody291_135

def NamedBody291_137 : StackLang.HolProg 64 :=
.seq NamedBody291_133 NamedBody291_136

def NamedBody291_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody291_132 NamedBody291_137

def NamedBody291_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody291_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody291_141 : StackLang.HolProg 64 :=
.seq NamedBody291_139 NamedBody291_140

def NamedBody291_142 : StackLang.HolProg 64 :=
.seq NamedBody291_138 NamedBody291_141

def NamedBody291_143 : StackLang.HolProg 64 :=
.seq NamedBody291_95 NamedBody291_142

def NamedBody291_144 : StackLang.HolProg 64 :=
.loop NamedBody291_143

def NamedBody291_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody291_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody291_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody291_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody291_149 : StackLang.HolProg 64 :=
.seq NamedBody291_147 NamedBody291_148

def NamedBody291_150 : StackLang.HolProg 64 :=
.seq NamedBody291_146 NamedBody291_149

def NamedBody291_151 : StackLang.HolProg 64 :=
.seq NamedBody291_145 NamedBody291_150

def NamedBody291_152 : StackLang.HolProg 64 :=
.seq NamedBody291_144 NamedBody291_151

def NamedBody291_153 : StackLang.HolProg 64 :=
.seq NamedBody291_94 NamedBody291_152

def NamedBody291_154 : StackLang.HolProg 64 :=
.seq NamedBody291_93 NamedBody291_153

def NamedBody291_155 : StackLang.HolProg 64 :=
.seq NamedBody291_92 NamedBody291_154

def NamedBody291_156 : StackLang.HolProg 64 :=
.seq NamedBody291_91 NamedBody291_155

def NamedBody291_157 : StackLang.HolProg 64 :=
.seq NamedBody291_90 NamedBody291_156

def NamedBody291_158 : StackLang.HolProg 64 :=
.seq NamedBody291_19 NamedBody291_157

def NamedBody291_159 : StackLang.HolProg 64 :=
.seq NamedBody291_6 NamedBody291_158

def Named291 : Nat × StackLang.HolProg 64 := (291, NamedBody291_159)
theorem Named291_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed291 = Named291 := by
  kernel_rfl
#print axioms Named291_eq
end InitECandidate.Proofs.BackendStages
