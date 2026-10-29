import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed508
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody508_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody508_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody508_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody508_3 : StackLang.HolProg 64 :=
.seq NamedBody508_1 NamedBody508_2

def NamedBody508_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody508_3 NamedBody508_4

def NamedBody508_6 : StackLang.HolProg 64 :=
.seq NamedBody508_0 NamedBody508_5

def NamedBody508_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody508_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1614#64)

def NamedBody508_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_11 : StackLang.HolProg 64 :=
.seq NamedBody508_9 NamedBody508_10

def NamedBody508_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody508_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody508_15 : StackLang.HolProg 64 :=
.seq NamedBody508_13 NamedBody508_14

def NamedBody508_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody508_15 NamedBody508_16

def NamedBody508_18 : StackLang.HolProg 64 :=
.seq NamedBody508_12 NamedBody508_17

def NamedBody508_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody508_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 3

def NamedBody508_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody508_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody508_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody508_28 : StackLang.HolProg 64 :=
.seq NamedBody508_26 NamedBody508_27

def NamedBody508_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody508_30 : StackLang.HolProg 64 :=
.seq NamedBody508_28 NamedBody508_29

def NamedBody508_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_32 : StackLang.HolProg 64 :=
.seq NamedBody508_30 NamedBody508_31

def NamedBody508_33 : StackLang.HolProg 64 :=
.seq NamedBody508_25 NamedBody508_32

def NamedBody508_34 : StackLang.HolProg 64 :=
.seq NamedBody508_24 NamedBody508_33

def NamedBody508_35 : StackLang.HolProg 64 :=
.seq NamedBody508_23 NamedBody508_34

def NamedBody508_36 : StackLang.HolProg 64 :=
.seq NamedBody508_22 NamedBody508_35

def NamedBody508_37 : StackLang.HolProg 64 :=
.seq NamedBody508_21 NamedBody508_36

def NamedBody508_38 : StackLang.HolProg 64 :=
.seq NamedBody508_20 NamedBody508_37

def NamedBody508_39 : StackLang.HolProg 64 :=
.seq NamedBody508_19 NamedBody508_38

def NamedBody508_40 : StackLang.HolProg 64 :=
.seq NamedBody508_18 NamedBody508_39

def NamedBody508_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody508_48 : StackLang.HolProg 64 :=
.seq NamedBody508_46 NamedBody508_47

def NamedBody508_49 : StackLang.HolProg 64 :=
.seq NamedBody508_45 NamedBody508_48

def NamedBody508_50 : StackLang.HolProg 64 :=
.seq NamedBody508_44 NamedBody508_49

def NamedBody508_51 : StackLang.HolProg 64 :=
.seq NamedBody508_43 NamedBody508_50

def NamedBody508_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody508_54 : StackLang.HolProg 64 :=
.seq NamedBody508_52 NamedBody508_53

def NamedBody508_55 : StackLang.HolProg 64 :=
.call (some (NamedBody508_51, 1, 508, 2)) (Sum.inl 475) (some (NamedBody508_54, 508, 3))

def NamedBody508_56 : StackLang.HolProg 64 :=
.seq NamedBody508_42 NamedBody508_55

def NamedBody508_57 : StackLang.HolProg 64 :=
.seq NamedBody508_41 NamedBody508_56

def NamedBody508_58 : StackLang.HolProg 64 :=
.seq NamedBody508_40 NamedBody508_57

def NamedBody508_59 : StackLang.HolProg 64 :=
.seq NamedBody508_11 NamedBody508_58

def NamedBody508_60 : StackLang.HolProg 64 :=
.seq NamedBody508_8 NamedBody508_59

def NamedBody508_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody508_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody508_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody508_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody508_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_66 : StackLang.HolProg 64 :=
.seq NamedBody508_64 NamedBody508_65

def NamedBody508_67 : StackLang.HolProg 64 :=
.seq NamedBody508_63 NamedBody508_66

def NamedBody508_68 : StackLang.HolProg 64 :=
.seq NamedBody508_62 NamedBody508_67

def NamedBody508_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1615#64)

def NamedBody508_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_72 : StackLang.HolProg 64 :=
.seq NamedBody508_70 NamedBody508_71

def NamedBody508_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody508_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody508_76 : StackLang.HolProg 64 :=
.seq NamedBody508_74 NamedBody508_75

def NamedBody508_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody508_76 NamedBody508_77

def NamedBody508_79 : StackLang.HolProg 64 :=
.seq NamedBody508_73 NamedBody508_78

def NamedBody508_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody508_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 5

def NamedBody508_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody508_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody508_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody508_89 : StackLang.HolProg 64 :=
.seq NamedBody508_87 NamedBody508_88

def NamedBody508_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody508_91 : StackLang.HolProg 64 :=
.seq NamedBody508_89 NamedBody508_90

def NamedBody508_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_93 : StackLang.HolProg 64 :=
.seq NamedBody508_91 NamedBody508_92

def NamedBody508_94 : StackLang.HolProg 64 :=
.seq NamedBody508_86 NamedBody508_93

def NamedBody508_95 : StackLang.HolProg 64 :=
.seq NamedBody508_85 NamedBody508_94

def NamedBody508_96 : StackLang.HolProg 64 :=
.seq NamedBody508_84 NamedBody508_95

def NamedBody508_97 : StackLang.HolProg 64 :=
.seq NamedBody508_83 NamedBody508_96

def NamedBody508_98 : StackLang.HolProg 64 :=
.seq NamedBody508_82 NamedBody508_97

def NamedBody508_99 : StackLang.HolProg 64 :=
.seq NamedBody508_81 NamedBody508_98

def NamedBody508_100 : StackLang.HolProg 64 :=
.seq NamedBody508_80 NamedBody508_99

def NamedBody508_101 : StackLang.HolProg 64 :=
.seq NamedBody508_79 NamedBody508_100

def NamedBody508_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody508_109 : StackLang.HolProg 64 :=
.seq NamedBody508_107 NamedBody508_108

def NamedBody508_110 : StackLang.HolProg 64 :=
.seq NamedBody508_106 NamedBody508_109

def NamedBody508_111 : StackLang.HolProg 64 :=
.seq NamedBody508_105 NamedBody508_110

def NamedBody508_112 : StackLang.HolProg 64 :=
.seq NamedBody508_104 NamedBody508_111

def NamedBody508_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody508_115 : StackLang.HolProg 64 :=
.seq NamedBody508_113 NamedBody508_114

def NamedBody508_116 : StackLang.HolProg 64 :=
.call (some (NamedBody508_112, 1, 508, 4)) (Sum.inl 475) (some (NamedBody508_115, 508, 5))

def NamedBody508_117 : StackLang.HolProg 64 :=
.seq NamedBody508_103 NamedBody508_116

def NamedBody508_118 : StackLang.HolProg 64 :=
.seq NamedBody508_102 NamedBody508_117

def NamedBody508_119 : StackLang.HolProg 64 :=
.seq NamedBody508_101 NamedBody508_118

def NamedBody508_120 : StackLang.HolProg 64 :=
.seq NamedBody508_72 NamedBody508_119

def NamedBody508_121 : StackLang.HolProg 64 :=
.seq NamedBody508_69 NamedBody508_120

def NamedBody508_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody508_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody508_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody508_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody508_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody508_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody508_128 : StackLang.HolProg 64 :=
.seq NamedBody508_126 NamedBody508_127

def NamedBody508_129 : StackLang.HolProg 64 :=
.seq NamedBody508_125 NamedBody508_128

def NamedBody508_130 : StackLang.HolProg 64 :=
.seq NamedBody508_124 NamedBody508_129

def NamedBody508_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1616#64)

def NamedBody508_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_134 : StackLang.HolProg 64 :=
.seq NamedBody508_132 NamedBody508_133

def NamedBody508_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody508_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody508_138 : StackLang.HolProg 64 :=
.seq NamedBody508_136 NamedBody508_137

def NamedBody508_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody508_138 NamedBody508_139

def NamedBody508_141 : StackLang.HolProg 64 :=
.seq NamedBody508_135 NamedBody508_140

def NamedBody508_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody508_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 7

def NamedBody508_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody508_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody508_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody508_151 : StackLang.HolProg 64 :=
.seq NamedBody508_149 NamedBody508_150

def NamedBody508_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody508_153 : StackLang.HolProg 64 :=
.seq NamedBody508_151 NamedBody508_152

def NamedBody508_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_155 : StackLang.HolProg 64 :=
.seq NamedBody508_153 NamedBody508_154

def NamedBody508_156 : StackLang.HolProg 64 :=
.seq NamedBody508_148 NamedBody508_155

def NamedBody508_157 : StackLang.HolProg 64 :=
.seq NamedBody508_147 NamedBody508_156

def NamedBody508_158 : StackLang.HolProg 64 :=
.seq NamedBody508_146 NamedBody508_157

def NamedBody508_159 : StackLang.HolProg 64 :=
.seq NamedBody508_145 NamedBody508_158

def NamedBody508_160 : StackLang.HolProg 64 :=
.seq NamedBody508_144 NamedBody508_159

def NamedBody508_161 : StackLang.HolProg 64 :=
.seq NamedBody508_143 NamedBody508_160

def NamedBody508_162 : StackLang.HolProg 64 :=
.seq NamedBody508_142 NamedBody508_161

def NamedBody508_163 : StackLang.HolProg 64 :=
.seq NamedBody508_141 NamedBody508_162

def NamedBody508_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody508_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody508_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody508_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody508_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody508_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody508_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody508_178 : StackLang.HolProg 64 :=
.seq NamedBody508_176 NamedBody508_177

def NamedBody508_179 : StackLang.HolProg 64 :=
.seq NamedBody508_175 NamedBody508_178

def NamedBody508_180 : StackLang.HolProg 64 :=
.seq NamedBody508_174 NamedBody508_179

def NamedBody508_181 : StackLang.HolProg 64 :=
.seq NamedBody508_173 NamedBody508_180

def NamedBody508_182 : StackLang.HolProg 64 :=
.seq NamedBody508_172 NamedBody508_181

def NamedBody508_183 : StackLang.HolProg 64 :=
.seq NamedBody508_171 NamedBody508_182

def NamedBody508_184 : StackLang.HolProg 64 :=
.seq NamedBody508_170 NamedBody508_183

def NamedBody508_185 : StackLang.HolProg 64 :=
.seq NamedBody508_169 NamedBody508_184

def NamedBody508_186 : StackLang.HolProg 64 :=
.seq NamedBody508_168 NamedBody508_185

def NamedBody508_187 : StackLang.HolProg 64 :=
.seq NamedBody508_167 NamedBody508_186

def NamedBody508_188 : StackLang.HolProg 64 :=
.seq NamedBody508_166 NamedBody508_187

def NamedBody508_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody508_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody508_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody508_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody508_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody508_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody508_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody508_197 : StackLang.HolProg 64 :=
.seq NamedBody508_195 NamedBody508_196

def NamedBody508_198 : StackLang.HolProg 64 :=
.seq NamedBody508_194 NamedBody508_197

def NamedBody508_199 : StackLang.HolProg 64 :=
.seq NamedBody508_193 NamedBody508_198

def NamedBody508_200 : StackLang.HolProg 64 :=
.seq NamedBody508_192 NamedBody508_199

def NamedBody508_201 : StackLang.HolProg 64 :=
.seq NamedBody508_191 NamedBody508_200

def NamedBody508_202 : StackLang.HolProg 64 :=
.seq NamedBody508_190 NamedBody508_201

def NamedBody508_203 : StackLang.HolProg 64 :=
.seq NamedBody508_189 NamedBody508_202

def NamedBody508_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody508_205 : StackLang.HolProg 64 :=
.seq NamedBody508_203 NamedBody508_204

def NamedBody508_206 : StackLang.HolProg 64 :=
.call (some (NamedBody508_188, 1, 508, 6)) (Sum.inl 470) (some (NamedBody508_205, 508, 7))

def NamedBody508_207 : StackLang.HolProg 64 :=
.seq NamedBody508_165 NamedBody508_206

def NamedBody508_208 : StackLang.HolProg 64 :=
.seq NamedBody508_164 NamedBody508_207

def NamedBody508_209 : StackLang.HolProg 64 :=
.seq NamedBody508_163 NamedBody508_208

def NamedBody508_210 : StackLang.HolProg 64 :=
.seq NamedBody508_134 NamedBody508_209

def NamedBody508_211 : StackLang.HolProg 64 :=
.seq NamedBody508_131 NamedBody508_210

def NamedBody508_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody508_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody508_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1617#64)

def NamedBody508_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_217 : StackLang.HolProg 64 :=
.seq NamedBody508_215 NamedBody508_216

def NamedBody508_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody508_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody508_221 : StackLang.HolProg 64 :=
.seq NamedBody508_219 NamedBody508_220

def NamedBody508_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody508_221 NamedBody508_222

def NamedBody508_224 : StackLang.HolProg 64 :=
.seq NamedBody508_218 NamedBody508_223

def NamedBody508_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody508_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 9

def NamedBody508_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody508_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody508_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody508_234 : StackLang.HolProg 64 :=
.seq NamedBody508_232 NamedBody508_233

def NamedBody508_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody508_236 : StackLang.HolProg 64 :=
.seq NamedBody508_234 NamedBody508_235

def NamedBody508_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_238 : StackLang.HolProg 64 :=
.seq NamedBody508_236 NamedBody508_237

def NamedBody508_239 : StackLang.HolProg 64 :=
.seq NamedBody508_231 NamedBody508_238

def NamedBody508_240 : StackLang.HolProg 64 :=
.seq NamedBody508_230 NamedBody508_239

def NamedBody508_241 : StackLang.HolProg 64 :=
.seq NamedBody508_229 NamedBody508_240

def NamedBody508_242 : StackLang.HolProg 64 :=
.seq NamedBody508_228 NamedBody508_241

def NamedBody508_243 : StackLang.HolProg 64 :=
.seq NamedBody508_227 NamedBody508_242

def NamedBody508_244 : StackLang.HolProg 64 :=
.seq NamedBody508_226 NamedBody508_243

def NamedBody508_245 : StackLang.HolProg 64 :=
.seq NamedBody508_225 NamedBody508_244

def NamedBody508_246 : StackLang.HolProg 64 :=
.seq NamedBody508_224 NamedBody508_245

def NamedBody508_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody508_254 : StackLang.HolProg 64 :=
.seq NamedBody508_252 NamedBody508_253

def NamedBody508_255 : StackLang.HolProg 64 :=
.seq NamedBody508_251 NamedBody508_254

def NamedBody508_256 : StackLang.HolProg 64 :=
.seq NamedBody508_250 NamedBody508_255

def NamedBody508_257 : StackLang.HolProg 64 :=
.seq NamedBody508_249 NamedBody508_256

def NamedBody508_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody508_260 : StackLang.HolProg 64 :=
.seq NamedBody508_258 NamedBody508_259

def NamedBody508_261 : StackLang.HolProg 64 :=
.call (some (NamedBody508_257, 1, 508, 8)) (Sum.inl 106) (some (NamedBody508_260, 508, 9))

def NamedBody508_262 : StackLang.HolProg 64 :=
.seq NamedBody508_248 NamedBody508_261

def NamedBody508_263 : StackLang.HolProg 64 :=
.seq NamedBody508_247 NamedBody508_262

def NamedBody508_264 : StackLang.HolProg 64 :=
.seq NamedBody508_246 NamedBody508_263

def NamedBody508_265 : StackLang.HolProg 64 :=
.seq NamedBody508_217 NamedBody508_264

def NamedBody508_266 : StackLang.HolProg 64 :=
.seq NamedBody508_214 NamedBody508_265

def NamedBody508_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody508_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody508_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1618#64)

def NamedBody508_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_272 : StackLang.HolProg 64 :=
.seq NamedBody508_270 NamedBody508_271

def NamedBody508_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody508_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody508_276 : StackLang.HolProg 64 :=
.seq NamedBody508_274 NamedBody508_275

def NamedBody508_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody508_276 NamedBody508_277

def NamedBody508_279 : StackLang.HolProg 64 :=
.seq NamedBody508_273 NamedBody508_278

def NamedBody508_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody508_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 11

def NamedBody508_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody508_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody508_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody508_289 : StackLang.HolProg 64 :=
.seq NamedBody508_287 NamedBody508_288

def NamedBody508_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody508_291 : StackLang.HolProg 64 :=
.seq NamedBody508_289 NamedBody508_290

def NamedBody508_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_293 : StackLang.HolProg 64 :=
.seq NamedBody508_291 NamedBody508_292

def NamedBody508_294 : StackLang.HolProg 64 :=
.seq NamedBody508_286 NamedBody508_293

def NamedBody508_295 : StackLang.HolProg 64 :=
.seq NamedBody508_285 NamedBody508_294

def NamedBody508_296 : StackLang.HolProg 64 :=
.seq NamedBody508_284 NamedBody508_295

def NamedBody508_297 : StackLang.HolProg 64 :=
.seq NamedBody508_283 NamedBody508_296

def NamedBody508_298 : StackLang.HolProg 64 :=
.seq NamedBody508_282 NamedBody508_297

def NamedBody508_299 : StackLang.HolProg 64 :=
.seq NamedBody508_281 NamedBody508_298

def NamedBody508_300 : StackLang.HolProg 64 :=
.seq NamedBody508_280 NamedBody508_299

def NamedBody508_301 : StackLang.HolProg 64 :=
.seq NamedBody508_279 NamedBody508_300

def NamedBody508_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_309 : StackLang.HolProg 64 :=
.seq NamedBody508_307 NamedBody508_308

def NamedBody508_310 : StackLang.HolProg 64 :=
.seq NamedBody508_306 NamedBody508_309

def NamedBody508_311 : StackLang.HolProg 64 :=
.seq NamedBody508_305 NamedBody508_310

def NamedBody508_312 : StackLang.HolProg 64 :=
.seq NamedBody508_304 NamedBody508_311

def NamedBody508_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody508_315 : StackLang.HolProg 64 :=
.seq NamedBody508_313 NamedBody508_314

def NamedBody508_316 : StackLang.HolProg 64 :=
.call (some (NamedBody508_312, 1, 508, 10)) (Sum.inl 478) (some (NamedBody508_315, 508, 11))

def NamedBody508_317 : StackLang.HolProg 64 :=
.seq NamedBody508_303 NamedBody508_316

def NamedBody508_318 : StackLang.HolProg 64 :=
.seq NamedBody508_302 NamedBody508_317

def NamedBody508_319 : StackLang.HolProg 64 :=
.seq NamedBody508_301 NamedBody508_318

def NamedBody508_320 : StackLang.HolProg 64 :=
.seq NamedBody508_272 NamedBody508_319

def NamedBody508_321 : StackLang.HolProg 64 :=
.seq NamedBody508_269 NamedBody508_320

def NamedBody508_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody508_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody508_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1619#64)

def NamedBody508_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_328 : StackLang.HolProg 64 :=
.seq NamedBody508_326 NamedBody508_327

def NamedBody508_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody508_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody508_332 : StackLang.HolProg 64 :=
.seq NamedBody508_330 NamedBody508_331

def NamedBody508_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody508_332 NamedBody508_333

def NamedBody508_335 : StackLang.HolProg 64 :=
.seq NamedBody508_329 NamedBody508_334

def NamedBody508_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody508_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody508_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 13

def NamedBody508_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody508_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody508_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody508_345 : StackLang.HolProg 64 :=
.seq NamedBody508_343 NamedBody508_344

def NamedBody508_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody508_347 : StackLang.HolProg 64 :=
.seq NamedBody508_345 NamedBody508_346

def NamedBody508_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_349 : StackLang.HolProg 64 :=
.seq NamedBody508_347 NamedBody508_348

def NamedBody508_350 : StackLang.HolProg 64 :=
.seq NamedBody508_342 NamedBody508_349

def NamedBody508_351 : StackLang.HolProg 64 :=
.seq NamedBody508_341 NamedBody508_350

def NamedBody508_352 : StackLang.HolProg 64 :=
.seq NamedBody508_340 NamedBody508_351

def NamedBody508_353 : StackLang.HolProg 64 :=
.seq NamedBody508_339 NamedBody508_352

def NamedBody508_354 : StackLang.HolProg 64 :=
.seq NamedBody508_338 NamedBody508_353

def NamedBody508_355 : StackLang.HolProg 64 :=
.seq NamedBody508_337 NamedBody508_354

def NamedBody508_356 : StackLang.HolProg 64 :=
.seq NamedBody508_336 NamedBody508_355

def NamedBody508_357 : StackLang.HolProg 64 :=
.seq NamedBody508_335 NamedBody508_356

def NamedBody508_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody508_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody508_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody508_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody508_365 : StackLang.HolProg 64 :=
.seq NamedBody508_363 NamedBody508_364

def NamedBody508_366 : StackLang.HolProg 64 :=
.seq NamedBody508_362 NamedBody508_365

def NamedBody508_367 : StackLang.HolProg 64 :=
.seq NamedBody508_361 NamedBody508_366

def NamedBody508_368 : StackLang.HolProg 64 :=
.seq NamedBody508_360 NamedBody508_367

def NamedBody508_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody508_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody508_371 : StackLang.HolProg 64 :=
.seq NamedBody508_369 NamedBody508_370

def NamedBody508_372 : StackLang.HolProg 64 :=
.call (some (NamedBody508_368, 1, 508, 12)) (Sum.inl 490) (some (NamedBody508_371, 508, 13))

def NamedBody508_373 : StackLang.HolProg 64 :=
.seq NamedBody508_359 NamedBody508_372

def NamedBody508_374 : StackLang.HolProg 64 :=
.seq NamedBody508_358 NamedBody508_373

def NamedBody508_375 : StackLang.HolProg 64 :=
.seq NamedBody508_357 NamedBody508_374

def NamedBody508_376 : StackLang.HolProg 64 :=
.seq NamedBody508_328 NamedBody508_375

def NamedBody508_377 : StackLang.HolProg 64 :=
.seq NamedBody508_325 NamedBody508_376

def NamedBody508_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody508_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody508_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody508_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody508_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody508_383 : StackLang.HolProg 64 :=
.seq NamedBody508_381 NamedBody508_382

def NamedBody508_384 : StackLang.HolProg 64 :=
.seq NamedBody508_380 NamedBody508_383

def NamedBody508_385 : StackLang.HolProg 64 :=
.seq NamedBody508_379 NamedBody508_384

def NamedBody508_386 : StackLang.HolProg 64 :=
.seq NamedBody508_378 NamedBody508_385

def NamedBody508_387 : StackLang.HolProg 64 :=
.seq NamedBody508_377 NamedBody508_386

def NamedBody508_388 : StackLang.HolProg 64 :=
.seq NamedBody508_324 NamedBody508_387

def NamedBody508_389 : StackLang.HolProg 64 :=
.seq NamedBody508_323 NamedBody508_388

def NamedBody508_390 : StackLang.HolProg 64 :=
.seq NamedBody508_322 NamedBody508_389

def NamedBody508_391 : StackLang.HolProg 64 :=
.seq NamedBody508_321 NamedBody508_390

def NamedBody508_392 : StackLang.HolProg 64 :=
.seq NamedBody508_268 NamedBody508_391

def NamedBody508_393 : StackLang.HolProg 64 :=
.seq NamedBody508_267 NamedBody508_392

def NamedBody508_394 : StackLang.HolProg 64 :=
.seq NamedBody508_266 NamedBody508_393

def NamedBody508_395 : StackLang.HolProg 64 :=
.seq NamedBody508_213 NamedBody508_394

def NamedBody508_396 : StackLang.HolProg 64 :=
.seq NamedBody508_212 NamedBody508_395

def NamedBody508_397 : StackLang.HolProg 64 :=
.seq NamedBody508_211 NamedBody508_396

def NamedBody508_398 : StackLang.HolProg 64 :=
.seq NamedBody508_130 NamedBody508_397

def NamedBody508_399 : StackLang.HolProg 64 :=
.seq NamedBody508_123 NamedBody508_398

def NamedBody508_400 : StackLang.HolProg 64 :=
.seq NamedBody508_122 NamedBody508_399

def NamedBody508_401 : StackLang.HolProg 64 :=
.seq NamedBody508_121 NamedBody508_400

def NamedBody508_402 : StackLang.HolProg 64 :=
.seq NamedBody508_68 NamedBody508_401

def NamedBody508_403 : StackLang.HolProg 64 :=
.seq NamedBody508_61 NamedBody508_402

def NamedBody508_404 : StackLang.HolProg 64 :=
.seq NamedBody508_60 NamedBody508_403

def NamedBody508_405 : StackLang.HolProg 64 :=
.seq NamedBody508_7 NamedBody508_404

def NamedBody508_406 : StackLang.HolProg 64 :=
.seq NamedBody508_6 NamedBody508_405

def Named508 : Nat × StackLang.HolProg 64 := (508, NamedBody508_406)
theorem Named508_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed508 = Named508 := by
  kernel_rfl
#print axioms Named508_eq
end InitECandidate.Proofs.BackendStages
