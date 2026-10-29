import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed526
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody526_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody526_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody526_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody526_3 : StackLang.HolProg 64 :=
.seq NamedBody526_1 NamedBody526_2

def NamedBody526_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody526_3 NamedBody526_4

def NamedBody526_6 : StackLang.HolProg 64 :=
.seq NamedBody526_0 NamedBody526_5

def NamedBody526_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody526_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1721#64)

def NamedBody526_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_11 : StackLang.HolProg 64 :=
.seq NamedBody526_9 NamedBody526_10

def NamedBody526_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody526_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody526_15 : StackLang.HolProg 64 :=
.seq NamedBody526_13 NamedBody526_14

def NamedBody526_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody526_15 NamedBody526_16

def NamedBody526_18 : StackLang.HolProg 64 :=
.seq NamedBody526_12 NamedBody526_17

def NamedBody526_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody526_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 3

def NamedBody526_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody526_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody526_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody526_28 : StackLang.HolProg 64 :=
.seq NamedBody526_26 NamedBody526_27

def NamedBody526_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody526_30 : StackLang.HolProg 64 :=
.seq NamedBody526_28 NamedBody526_29

def NamedBody526_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_32 : StackLang.HolProg 64 :=
.seq NamedBody526_30 NamedBody526_31

def NamedBody526_33 : StackLang.HolProg 64 :=
.seq NamedBody526_25 NamedBody526_32

def NamedBody526_34 : StackLang.HolProg 64 :=
.seq NamedBody526_24 NamedBody526_33

def NamedBody526_35 : StackLang.HolProg 64 :=
.seq NamedBody526_23 NamedBody526_34

def NamedBody526_36 : StackLang.HolProg 64 :=
.seq NamedBody526_22 NamedBody526_35

def NamedBody526_37 : StackLang.HolProg 64 :=
.seq NamedBody526_21 NamedBody526_36

def NamedBody526_38 : StackLang.HolProg 64 :=
.seq NamedBody526_20 NamedBody526_37

def NamedBody526_39 : StackLang.HolProg 64 :=
.seq NamedBody526_19 NamedBody526_38

def NamedBody526_40 : StackLang.HolProg 64 :=
.seq NamedBody526_18 NamedBody526_39

def NamedBody526_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody526_48 : StackLang.HolProg 64 :=
.seq NamedBody526_46 NamedBody526_47

def NamedBody526_49 : StackLang.HolProg 64 :=
.seq NamedBody526_45 NamedBody526_48

def NamedBody526_50 : StackLang.HolProg 64 :=
.seq NamedBody526_44 NamedBody526_49

def NamedBody526_51 : StackLang.HolProg 64 :=
.seq NamedBody526_43 NamedBody526_50

def NamedBody526_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody526_54 : StackLang.HolProg 64 :=
.seq NamedBody526_52 NamedBody526_53

def NamedBody526_55 : StackLang.HolProg 64 :=
.call (some (NamedBody526_51, 1, 526, 2)) (Sum.inl 475) (some (NamedBody526_54, 526, 3))

def NamedBody526_56 : StackLang.HolProg 64 :=
.seq NamedBody526_42 NamedBody526_55

def NamedBody526_57 : StackLang.HolProg 64 :=
.seq NamedBody526_41 NamedBody526_56

def NamedBody526_58 : StackLang.HolProg 64 :=
.seq NamedBody526_40 NamedBody526_57

def NamedBody526_59 : StackLang.HolProg 64 :=
.seq NamedBody526_11 NamedBody526_58

def NamedBody526_60 : StackLang.HolProg 64 :=
.seq NamedBody526_8 NamedBody526_59

def NamedBody526_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody526_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody526_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody526_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody526_66 : StackLang.HolProg 64 :=
.seq NamedBody526_64 NamedBody526_65

def NamedBody526_67 : StackLang.HolProg 64 :=
.seq NamedBody526_63 NamedBody526_66

def NamedBody526_68 : StackLang.HolProg 64 :=
.seq NamedBody526_62 NamedBody526_67

def NamedBody526_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1722#64)

def NamedBody526_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_72 : StackLang.HolProg 64 :=
.seq NamedBody526_70 NamedBody526_71

def NamedBody526_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody526_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody526_76 : StackLang.HolProg 64 :=
.seq NamedBody526_74 NamedBody526_75

def NamedBody526_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody526_76 NamedBody526_77

def NamedBody526_79 : StackLang.HolProg 64 :=
.seq NamedBody526_73 NamedBody526_78

def NamedBody526_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody526_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 5

def NamedBody526_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody526_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody526_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody526_89 : StackLang.HolProg 64 :=
.seq NamedBody526_87 NamedBody526_88

def NamedBody526_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody526_91 : StackLang.HolProg 64 :=
.seq NamedBody526_89 NamedBody526_90

def NamedBody526_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_93 : StackLang.HolProg 64 :=
.seq NamedBody526_91 NamedBody526_92

def NamedBody526_94 : StackLang.HolProg 64 :=
.seq NamedBody526_86 NamedBody526_93

def NamedBody526_95 : StackLang.HolProg 64 :=
.seq NamedBody526_85 NamedBody526_94

def NamedBody526_96 : StackLang.HolProg 64 :=
.seq NamedBody526_84 NamedBody526_95

def NamedBody526_97 : StackLang.HolProg 64 :=
.seq NamedBody526_83 NamedBody526_96

def NamedBody526_98 : StackLang.HolProg 64 :=
.seq NamedBody526_82 NamedBody526_97

def NamedBody526_99 : StackLang.HolProg 64 :=
.seq NamedBody526_81 NamedBody526_98

def NamedBody526_100 : StackLang.HolProg 64 :=
.seq NamedBody526_80 NamedBody526_99

def NamedBody526_101 : StackLang.HolProg 64 :=
.seq NamedBody526_79 NamedBody526_100

def NamedBody526_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody526_109 : StackLang.HolProg 64 :=
.seq NamedBody526_107 NamedBody526_108

def NamedBody526_110 : StackLang.HolProg 64 :=
.seq NamedBody526_106 NamedBody526_109

def NamedBody526_111 : StackLang.HolProg 64 :=
.seq NamedBody526_105 NamedBody526_110

def NamedBody526_112 : StackLang.HolProg 64 :=
.seq NamedBody526_104 NamedBody526_111

def NamedBody526_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody526_115 : StackLang.HolProg 64 :=
.seq NamedBody526_113 NamedBody526_114

def NamedBody526_116 : StackLang.HolProg 64 :=
.call (some (NamedBody526_112, 1, 526, 4)) (Sum.inl 475) (some (NamedBody526_115, 526, 5))

def NamedBody526_117 : StackLang.HolProg 64 :=
.seq NamedBody526_103 NamedBody526_116

def NamedBody526_118 : StackLang.HolProg 64 :=
.seq NamedBody526_102 NamedBody526_117

def NamedBody526_119 : StackLang.HolProg 64 :=
.seq NamedBody526_101 NamedBody526_118

def NamedBody526_120 : StackLang.HolProg 64 :=
.seq NamedBody526_72 NamedBody526_119

def NamedBody526_121 : StackLang.HolProg 64 :=
.seq NamedBody526_69 NamedBody526_120

def NamedBody526_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 10#64)

def NamedBody526_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody526_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody526_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_128 : StackLang.HolProg 64 :=
.seq NamedBody526_126 NamedBody526_127

def NamedBody526_129 : StackLang.HolProg 64 :=
.seq NamedBody526_125 NamedBody526_128

def NamedBody526_130 : StackLang.HolProg 64 :=
.seq NamedBody526_124 NamedBody526_129

def NamedBody526_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1723#64)

def NamedBody526_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_134 : StackLang.HolProg 64 :=
.seq NamedBody526_132 NamedBody526_133

def NamedBody526_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody526_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody526_138 : StackLang.HolProg 64 :=
.seq NamedBody526_136 NamedBody526_137

def NamedBody526_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody526_138 NamedBody526_139

def NamedBody526_141 : StackLang.HolProg 64 :=
.seq NamedBody526_135 NamedBody526_140

def NamedBody526_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody526_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 7

def NamedBody526_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody526_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody526_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody526_151 : StackLang.HolProg 64 :=
.seq NamedBody526_149 NamedBody526_150

def NamedBody526_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody526_153 : StackLang.HolProg 64 :=
.seq NamedBody526_151 NamedBody526_152

def NamedBody526_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_155 : StackLang.HolProg 64 :=
.seq NamedBody526_153 NamedBody526_154

def NamedBody526_156 : StackLang.HolProg 64 :=
.seq NamedBody526_148 NamedBody526_155

def NamedBody526_157 : StackLang.HolProg 64 :=
.seq NamedBody526_147 NamedBody526_156

def NamedBody526_158 : StackLang.HolProg 64 :=
.seq NamedBody526_146 NamedBody526_157

def NamedBody526_159 : StackLang.HolProg 64 :=
.seq NamedBody526_145 NamedBody526_158

def NamedBody526_160 : StackLang.HolProg 64 :=
.seq NamedBody526_144 NamedBody526_159

def NamedBody526_161 : StackLang.HolProg 64 :=
.seq NamedBody526_143 NamedBody526_160

def NamedBody526_162 : StackLang.HolProg 64 :=
.seq NamedBody526_142 NamedBody526_161

def NamedBody526_163 : StackLang.HolProg 64 :=
.seq NamedBody526_141 NamedBody526_162

def NamedBody526_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody526_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_173 : StackLang.HolProg 64 :=
.seq NamedBody526_171 NamedBody526_172

def NamedBody526_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody526_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody526_176 : StackLang.HolProg 64 :=
.seq NamedBody526_174 NamedBody526_175

def NamedBody526_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody526_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody526_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody526_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody526_181 : StackLang.HolProg 64 :=
.seq NamedBody526_179 NamedBody526_180

def NamedBody526_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody526_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody526_185 : StackLang.HolProg 64 :=
.seq NamedBody526_183 NamedBody526_184

def NamedBody526_186 : StackLang.HolProg 64 :=
.seq NamedBody526_182 NamedBody526_185

def NamedBody526_187 : StackLang.HolProg 64 :=
.seq NamedBody526_181 NamedBody526_186

def NamedBody526_188 : StackLang.HolProg 64 :=
.seq NamedBody526_178 NamedBody526_187

def NamedBody526_189 : StackLang.HolProg 64 :=
.seq NamedBody526_177 NamedBody526_188

def NamedBody526_190 : StackLang.HolProg 64 :=
.seq NamedBody526_176 NamedBody526_189

def NamedBody526_191 : StackLang.HolProg 64 :=
.seq NamedBody526_173 NamedBody526_190

def NamedBody526_192 : StackLang.HolProg 64 :=
.seq NamedBody526_170 NamedBody526_191

def NamedBody526_193 : StackLang.HolProg 64 :=
.seq NamedBody526_169 NamedBody526_192

def NamedBody526_194 : StackLang.HolProg 64 :=
.seq NamedBody526_168 NamedBody526_193

def NamedBody526_195 : StackLang.HolProg 64 :=
.seq NamedBody526_167 NamedBody526_194

def NamedBody526_196 : StackLang.HolProg 64 :=
.seq NamedBody526_166 NamedBody526_195

def NamedBody526_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody526_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_200 : StackLang.HolProg 64 :=
.seq NamedBody526_198 NamedBody526_199

def NamedBody526_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody526_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody526_203 : StackLang.HolProg 64 :=
.seq NamedBody526_201 NamedBody526_202

def NamedBody526_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody526_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody526_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody526_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody526_208 : StackLang.HolProg 64 :=
.seq NamedBody526_206 NamedBody526_207

def NamedBody526_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody526_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody526_212 : StackLang.HolProg 64 :=
.seq NamedBody526_210 NamedBody526_211

def NamedBody526_213 : StackLang.HolProg 64 :=
.seq NamedBody526_209 NamedBody526_212

def NamedBody526_214 : StackLang.HolProg 64 :=
.seq NamedBody526_208 NamedBody526_213

def NamedBody526_215 : StackLang.HolProg 64 :=
.seq NamedBody526_205 NamedBody526_214

def NamedBody526_216 : StackLang.HolProg 64 :=
.seq NamedBody526_204 NamedBody526_215

def NamedBody526_217 : StackLang.HolProg 64 :=
.seq NamedBody526_203 NamedBody526_216

def NamedBody526_218 : StackLang.HolProg 64 :=
.seq NamedBody526_200 NamedBody526_217

def NamedBody526_219 : StackLang.HolProg 64 :=
.seq NamedBody526_197 NamedBody526_218

def NamedBody526_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody526_221 : StackLang.HolProg 64 :=
.seq NamedBody526_219 NamedBody526_220

def NamedBody526_222 : StackLang.HolProg 64 :=
.call (some (NamedBody526_196, 1, 526, 6)) (Sum.inl 470) (some (NamedBody526_221, 526, 7))

def NamedBody526_223 : StackLang.HolProg 64 :=
.seq NamedBody526_165 NamedBody526_222

def NamedBody526_224 : StackLang.HolProg 64 :=
.seq NamedBody526_164 NamedBody526_223

def NamedBody526_225 : StackLang.HolProg 64 :=
.seq NamedBody526_163 NamedBody526_224

def NamedBody526_226 : StackLang.HolProg 64 :=
.seq NamedBody526_134 NamedBody526_225

def NamedBody526_227 : StackLang.HolProg 64 :=
.seq NamedBody526_131 NamedBody526_226

def NamedBody526_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody526_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1724#64)

def NamedBody526_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_233 : StackLang.HolProg 64 :=
.seq NamedBody526_231 NamedBody526_232

def NamedBody526_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody526_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody526_237 : StackLang.HolProg 64 :=
.seq NamedBody526_235 NamedBody526_236

def NamedBody526_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody526_237 NamedBody526_238

def NamedBody526_240 : StackLang.HolProg 64 :=
.seq NamedBody526_234 NamedBody526_239

def NamedBody526_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody526_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 9

def NamedBody526_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody526_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody526_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody526_250 : StackLang.HolProg 64 :=
.seq NamedBody526_248 NamedBody526_249

def NamedBody526_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody526_252 : StackLang.HolProg 64 :=
.seq NamedBody526_250 NamedBody526_251

def NamedBody526_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_254 : StackLang.HolProg 64 :=
.seq NamedBody526_252 NamedBody526_253

def NamedBody526_255 : StackLang.HolProg 64 :=
.seq NamedBody526_247 NamedBody526_254

def NamedBody526_256 : StackLang.HolProg 64 :=
.seq NamedBody526_246 NamedBody526_255

def NamedBody526_257 : StackLang.HolProg 64 :=
.seq NamedBody526_245 NamedBody526_256

def NamedBody526_258 : StackLang.HolProg 64 :=
.seq NamedBody526_244 NamedBody526_257

def NamedBody526_259 : StackLang.HolProg 64 :=
.seq NamedBody526_243 NamedBody526_258

def NamedBody526_260 : StackLang.HolProg 64 :=
.seq NamedBody526_242 NamedBody526_259

def NamedBody526_261 : StackLang.HolProg 64 :=
.seq NamedBody526_241 NamedBody526_260

def NamedBody526_262 : StackLang.HolProg 64 :=
.seq NamedBody526_240 NamedBody526_261

def NamedBody526_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody526_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody526_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody526_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody526_274 : StackLang.HolProg 64 :=
.seq NamedBody526_272 NamedBody526_273

def NamedBody526_275 : StackLang.HolProg 64 :=
.seq NamedBody526_271 NamedBody526_274

def NamedBody526_276 : StackLang.HolProg 64 :=
.seq NamedBody526_270 NamedBody526_275

def NamedBody526_277 : StackLang.HolProg 64 :=
.seq NamedBody526_269 NamedBody526_276

def NamedBody526_278 : StackLang.HolProg 64 :=
.seq NamedBody526_268 NamedBody526_277

def NamedBody526_279 : StackLang.HolProg 64 :=
.seq NamedBody526_267 NamedBody526_278

def NamedBody526_280 : StackLang.HolProg 64 :=
.seq NamedBody526_266 NamedBody526_279

def NamedBody526_281 : StackLang.HolProg 64 :=
.seq NamedBody526_265 NamedBody526_280

def NamedBody526_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody526_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody526_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody526_286 : StackLang.HolProg 64 :=
.seq NamedBody526_284 NamedBody526_285

def NamedBody526_287 : StackLang.HolProg 64 :=
.seq NamedBody526_283 NamedBody526_286

def NamedBody526_288 : StackLang.HolProg 64 :=
.seq NamedBody526_282 NamedBody526_287

def NamedBody526_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody526_290 : StackLang.HolProg 64 :=
.seq NamedBody526_288 NamedBody526_289

def NamedBody526_291 : StackLang.HolProg 64 :=
.call (some (NamedBody526_281, 1, 526, 8)) (Sum.inl 102) (some (NamedBody526_290, 526, 9))

def NamedBody526_292 : StackLang.HolProg 64 :=
.seq NamedBody526_264 NamedBody526_291

def NamedBody526_293 : StackLang.HolProg 64 :=
.seq NamedBody526_263 NamedBody526_292

def NamedBody526_294 : StackLang.HolProg 64 :=
.seq NamedBody526_262 NamedBody526_293

def NamedBody526_295 : StackLang.HolProg 64 :=
.seq NamedBody526_233 NamedBody526_294

def NamedBody526_296 : StackLang.HolProg 64 :=
.seq NamedBody526_230 NamedBody526_295

def NamedBody526_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody526_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody526_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody526_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_304 : StackLang.HolProg 64 :=
.seq NamedBody526_302 NamedBody526_303

def NamedBody526_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1725#64)

def NamedBody526_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_308 : StackLang.HolProg 64 :=
.seq NamedBody526_306 NamedBody526_307

def NamedBody526_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody526_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody526_312 : StackLang.HolProg 64 :=
.seq NamedBody526_310 NamedBody526_311

def NamedBody526_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_314 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody526_312 NamedBody526_313

def NamedBody526_315 : StackLang.HolProg 64 :=
.seq NamedBody526_309 NamedBody526_314

def NamedBody526_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody526_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 11

def NamedBody526_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody526_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody526_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody526_325 : StackLang.HolProg 64 :=
.seq NamedBody526_323 NamedBody526_324

def NamedBody526_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody526_327 : StackLang.HolProg 64 :=
.seq NamedBody526_325 NamedBody526_326

def NamedBody526_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_329 : StackLang.HolProg 64 :=
.seq NamedBody526_327 NamedBody526_328

def NamedBody526_330 : StackLang.HolProg 64 :=
.seq NamedBody526_322 NamedBody526_329

def NamedBody526_331 : StackLang.HolProg 64 :=
.seq NamedBody526_321 NamedBody526_330

def NamedBody526_332 : StackLang.HolProg 64 :=
.seq NamedBody526_320 NamedBody526_331

def NamedBody526_333 : StackLang.HolProg 64 :=
.seq NamedBody526_319 NamedBody526_332

def NamedBody526_334 : StackLang.HolProg 64 :=
.seq NamedBody526_318 NamedBody526_333

def NamedBody526_335 : StackLang.HolProg 64 :=
.seq NamedBody526_317 NamedBody526_334

def NamedBody526_336 : StackLang.HolProg 64 :=
.seq NamedBody526_316 NamedBody526_335

def NamedBody526_337 : StackLang.HolProg 64 :=
.seq NamedBody526_315 NamedBody526_336

def NamedBody526_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_345 : StackLang.HolProg 64 :=
.seq NamedBody526_343 NamedBody526_344

def NamedBody526_346 : StackLang.HolProg 64 :=
.seq NamedBody526_342 NamedBody526_345

def NamedBody526_347 : StackLang.HolProg 64 :=
.seq NamedBody526_341 NamedBody526_346

def NamedBody526_348 : StackLang.HolProg 64 :=
.seq NamedBody526_340 NamedBody526_347

def NamedBody526_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody526_351 : StackLang.HolProg 64 :=
.seq NamedBody526_349 NamedBody526_350

def NamedBody526_352 : StackLang.HolProg 64 :=
.call (some (NamedBody526_348, 1, 526, 10)) (Sum.inl 490) (some (NamedBody526_351, 526, 11))

def NamedBody526_353 : StackLang.HolProg 64 :=
.seq NamedBody526_339 NamedBody526_352

def NamedBody526_354 : StackLang.HolProg 64 :=
.seq NamedBody526_338 NamedBody526_353

def NamedBody526_355 : StackLang.HolProg 64 :=
.seq NamedBody526_337 NamedBody526_354

def NamedBody526_356 : StackLang.HolProg 64 :=
.seq NamedBody526_308 NamedBody526_355

def NamedBody526_357 : StackLang.HolProg 64 :=
.seq NamedBody526_305 NamedBody526_356

def NamedBody526_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody526_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody526_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody526_363 : StackLang.HolProg 64 :=
.seq NamedBody526_361 NamedBody526_362

def NamedBody526_364 : StackLang.HolProg 64 :=
.seq NamedBody526_360 NamedBody526_363

def NamedBody526_365 : StackLang.HolProg 64 :=
.seq NamedBody526_359 NamedBody526_364

def NamedBody526_366 : StackLang.HolProg 64 :=
.seq NamedBody526_358 NamedBody526_365

def NamedBody526_367 : StackLang.HolProg 64 :=
.seq NamedBody526_357 NamedBody526_366

def NamedBody526_368 : StackLang.HolProg 64 :=
.seq NamedBody526_304 NamedBody526_367

def NamedBody526_369 : StackLang.HolProg 64 :=
.seq NamedBody526_301 NamedBody526_368

def NamedBody526_370 : StackLang.HolProg 64 :=
.seq NamedBody526_300 NamedBody526_369

def NamedBody526_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_372 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody526_370 NamedBody526_371

def NamedBody526_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody526_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_377 : StackLang.HolProg 64 :=
.seq NamedBody526_375 NamedBody526_376

def NamedBody526_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1726#64)

def NamedBody526_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_381 : StackLang.HolProg 64 :=
.seq NamedBody526_379 NamedBody526_380

def NamedBody526_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody526_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody526_385 : StackLang.HolProg 64 :=
.seq NamedBody526_383 NamedBody526_384

def NamedBody526_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_387 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody526_385 NamedBody526_386

def NamedBody526_388 : StackLang.HolProg 64 :=
.seq NamedBody526_382 NamedBody526_387

def NamedBody526_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody526_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody526_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 13

def NamedBody526_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody526_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody526_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody526_398 : StackLang.HolProg 64 :=
.seq NamedBody526_396 NamedBody526_397

def NamedBody526_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody526_400 : StackLang.HolProg 64 :=
.seq NamedBody526_398 NamedBody526_399

def NamedBody526_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_402 : StackLang.HolProg 64 :=
.seq NamedBody526_400 NamedBody526_401

def NamedBody526_403 : StackLang.HolProg 64 :=
.seq NamedBody526_395 NamedBody526_402

def NamedBody526_404 : StackLang.HolProg 64 :=
.seq NamedBody526_394 NamedBody526_403

def NamedBody526_405 : StackLang.HolProg 64 :=
.seq NamedBody526_393 NamedBody526_404

def NamedBody526_406 : StackLang.HolProg 64 :=
.seq NamedBody526_392 NamedBody526_405

def NamedBody526_407 : StackLang.HolProg 64 :=
.seq NamedBody526_391 NamedBody526_406

def NamedBody526_408 : StackLang.HolProg 64 :=
.seq NamedBody526_390 NamedBody526_407

def NamedBody526_409 : StackLang.HolProg 64 :=
.seq NamedBody526_389 NamedBody526_408

def NamedBody526_410 : StackLang.HolProg 64 :=
.seq NamedBody526_388 NamedBody526_409

def NamedBody526_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody526_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody526_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody526_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody526_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody526_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_420 : StackLang.HolProg 64 :=
.seq NamedBody526_418 NamedBody526_419

def NamedBody526_421 : StackLang.HolProg 64 :=
.seq NamedBody526_417 NamedBody526_420

def NamedBody526_422 : StackLang.HolProg 64 :=
.seq NamedBody526_416 NamedBody526_421

def NamedBody526_423 : StackLang.HolProg 64 :=
.seq NamedBody526_415 NamedBody526_422

def NamedBody526_424 : StackLang.HolProg 64 :=
.seq NamedBody526_414 NamedBody526_423

def NamedBody526_425 : StackLang.HolProg 64 :=
.seq NamedBody526_413 NamedBody526_424

def NamedBody526_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody526_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody526_428 : StackLang.HolProg 64 :=
.seq NamedBody526_426 NamedBody526_427

def NamedBody526_429 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody526_430 : StackLang.HolProg 64 :=
.seq NamedBody526_428 NamedBody526_429

def NamedBody526_431 : StackLang.HolProg 64 :=
.call (some (NamedBody526_425, 1, 526, 12)) (Sum.inl 486) (some (NamedBody526_430, 526, 13))

def NamedBody526_432 : StackLang.HolProg 64 :=
.seq NamedBody526_412 NamedBody526_431

def NamedBody526_433 : StackLang.HolProg 64 :=
.seq NamedBody526_411 NamedBody526_432

def NamedBody526_434 : StackLang.HolProg 64 :=
.seq NamedBody526_410 NamedBody526_433

def NamedBody526_435 : StackLang.HolProg 64 :=
.seq NamedBody526_381 NamedBody526_434

def NamedBody526_436 : StackLang.HolProg 64 :=
.seq NamedBody526_378 NamedBody526_435

def NamedBody526_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody526_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody526_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody526_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody526_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_446 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody526_447 : StackLang.HolProg 64 :=
.seq NamedBody526_445 NamedBody526_446

def NamedBody526_448 : StackLang.HolProg 64 :=
.seq NamedBody526_444 NamedBody526_447

def NamedBody526_449 : StackLang.HolProg 64 :=
.seq NamedBody526_443 NamedBody526_448

def NamedBody526_450 : StackLang.HolProg 64 :=
.seq NamedBody526_442 NamedBody526_449

def NamedBody526_451 : StackLang.HolProg 64 :=
.seq NamedBody526_441 NamedBody526_450

def NamedBody526_452 : StackLang.HolProg 64 :=
.seq NamedBody526_440 NamedBody526_451

def NamedBody526_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_454 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody526_452 NamedBody526_453

def NamedBody526_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody526_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody526_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody526_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody526_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody526_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody526_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody526_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody526_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody526_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody526_467 : StackLang.HolProg 64 :=
.seq NamedBody526_465 NamedBody526_466

def NamedBody526_468 : StackLang.HolProg 64 :=
.seq NamedBody526_464 NamedBody526_467

def NamedBody526_469 : StackLang.HolProg 64 :=
.seq NamedBody526_463 NamedBody526_468

def NamedBody526_470 : StackLang.HolProg 64 :=
.seq NamedBody526_462 NamedBody526_469

def NamedBody526_471 : StackLang.HolProg 64 :=
.seq NamedBody526_461 NamedBody526_470

def NamedBody526_472 : StackLang.HolProg 64 :=
.seq NamedBody526_460 NamedBody526_471

def NamedBody526_473 : StackLang.HolProg 64 :=
.seq NamedBody526_459 NamedBody526_472

def NamedBody526_474 : StackLang.HolProg 64 :=
.seq NamedBody526_458 NamedBody526_473

def NamedBody526_475 : StackLang.HolProg 64 :=
.seq NamedBody526_457 NamedBody526_474

def NamedBody526_476 : StackLang.HolProg 64 :=
.seq NamedBody526_456 NamedBody526_475

def NamedBody526_477 : StackLang.HolProg 64 :=
.seq NamedBody526_455 NamedBody526_476

def NamedBody526_478 : StackLang.HolProg 64 :=
.seq NamedBody526_454 NamedBody526_477

def NamedBody526_479 : StackLang.HolProg 64 :=
.seq NamedBody526_439 NamedBody526_478

def NamedBody526_480 : StackLang.HolProg 64 :=
.seq NamedBody526_438 NamedBody526_479

def NamedBody526_481 : StackLang.HolProg 64 :=
.seq NamedBody526_437 NamedBody526_480

def NamedBody526_482 : StackLang.HolProg 64 :=
.seq NamedBody526_436 NamedBody526_481

def NamedBody526_483 : StackLang.HolProg 64 :=
.seq NamedBody526_377 NamedBody526_482

def NamedBody526_484 : StackLang.HolProg 64 :=
.seq NamedBody526_374 NamedBody526_483

def NamedBody526_485 : StackLang.HolProg 64 :=
.seq NamedBody526_373 NamedBody526_484

def NamedBody526_486 : StackLang.HolProg 64 :=
.seq NamedBody526_372 NamedBody526_485

def NamedBody526_487 : StackLang.HolProg 64 :=
.seq NamedBody526_299 NamedBody526_486

def NamedBody526_488 : StackLang.HolProg 64 :=
.seq NamedBody526_298 NamedBody526_487

def NamedBody526_489 : StackLang.HolProg 64 :=
.seq NamedBody526_297 NamedBody526_488

def NamedBody526_490 : StackLang.HolProg 64 :=
.seq NamedBody526_296 NamedBody526_489

def NamedBody526_491 : StackLang.HolProg 64 :=
.seq NamedBody526_229 NamedBody526_490

def NamedBody526_492 : StackLang.HolProg 64 :=
.seq NamedBody526_228 NamedBody526_491

def NamedBody526_493 : StackLang.HolProg 64 :=
.seq NamedBody526_227 NamedBody526_492

def NamedBody526_494 : StackLang.HolProg 64 :=
.seq NamedBody526_130 NamedBody526_493

def NamedBody526_495 : StackLang.HolProg 64 :=
.seq NamedBody526_123 NamedBody526_494

def NamedBody526_496 : StackLang.HolProg 64 :=
.seq NamedBody526_122 NamedBody526_495

def NamedBody526_497 : StackLang.HolProg 64 :=
.seq NamedBody526_121 NamedBody526_496

def NamedBody526_498 : StackLang.HolProg 64 :=
.seq NamedBody526_68 NamedBody526_497

def NamedBody526_499 : StackLang.HolProg 64 :=
.seq NamedBody526_61 NamedBody526_498

def NamedBody526_500 : StackLang.HolProg 64 :=
.seq NamedBody526_60 NamedBody526_499

def NamedBody526_501 : StackLang.HolProg 64 :=
.seq NamedBody526_7 NamedBody526_500

def NamedBody526_502 : StackLang.HolProg 64 :=
.seq NamedBody526_6 NamedBody526_501

def Named526 : Nat × StackLang.HolProg 64 := (526, NamedBody526_502)
theorem Named526_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed526 = Named526 := by
  kernel_rfl
#print axioms Named526_eq
end InitECandidate.Proofs.BackendStages
