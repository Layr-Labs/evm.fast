import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed531
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody531_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody531_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody531_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody531_3 : StackLang.HolProg 64 :=
.seq NamedBody531_1 NamedBody531_2

def NamedBody531_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody531_3 NamedBody531_4

def NamedBody531_6 : StackLang.HolProg 64 :=
.seq NamedBody531_0 NamedBody531_5

def NamedBody531_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody531_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1741#64)

def NamedBody531_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_11 : StackLang.HolProg 64 :=
.seq NamedBody531_9 NamedBody531_10

def NamedBody531_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody531_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody531_15 : StackLang.HolProg 64 :=
.seq NamedBody531_13 NamedBody531_14

def NamedBody531_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody531_15 NamedBody531_16

def NamedBody531_18 : StackLang.HolProg 64 :=
.seq NamedBody531_12 NamedBody531_17

def NamedBody531_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody531_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 3

def NamedBody531_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody531_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody531_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody531_28 : StackLang.HolProg 64 :=
.seq NamedBody531_26 NamedBody531_27

def NamedBody531_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody531_30 : StackLang.HolProg 64 :=
.seq NamedBody531_28 NamedBody531_29

def NamedBody531_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_32 : StackLang.HolProg 64 :=
.seq NamedBody531_30 NamedBody531_31

def NamedBody531_33 : StackLang.HolProg 64 :=
.seq NamedBody531_25 NamedBody531_32

def NamedBody531_34 : StackLang.HolProg 64 :=
.seq NamedBody531_24 NamedBody531_33

def NamedBody531_35 : StackLang.HolProg 64 :=
.seq NamedBody531_23 NamedBody531_34

def NamedBody531_36 : StackLang.HolProg 64 :=
.seq NamedBody531_22 NamedBody531_35

def NamedBody531_37 : StackLang.HolProg 64 :=
.seq NamedBody531_21 NamedBody531_36

def NamedBody531_38 : StackLang.HolProg 64 :=
.seq NamedBody531_20 NamedBody531_37

def NamedBody531_39 : StackLang.HolProg 64 :=
.seq NamedBody531_19 NamedBody531_38

def NamedBody531_40 : StackLang.HolProg 64 :=
.seq NamedBody531_18 NamedBody531_39

def NamedBody531_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody531_48 : StackLang.HolProg 64 :=
.seq NamedBody531_46 NamedBody531_47

def NamedBody531_49 : StackLang.HolProg 64 :=
.seq NamedBody531_45 NamedBody531_48

def NamedBody531_50 : StackLang.HolProg 64 :=
.seq NamedBody531_44 NamedBody531_49

def NamedBody531_51 : StackLang.HolProg 64 :=
.seq NamedBody531_43 NamedBody531_50

def NamedBody531_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody531_54 : StackLang.HolProg 64 :=
.seq NamedBody531_52 NamedBody531_53

def NamedBody531_55 : StackLang.HolProg 64 :=
.call (some (NamedBody531_51, 1, 531, 2)) (Sum.inl 475) (some (NamedBody531_54, 531, 3))

def NamedBody531_56 : StackLang.HolProg 64 :=
.seq NamedBody531_42 NamedBody531_55

def NamedBody531_57 : StackLang.HolProg 64 :=
.seq NamedBody531_41 NamedBody531_56

def NamedBody531_58 : StackLang.HolProg 64 :=
.seq NamedBody531_40 NamedBody531_57

def NamedBody531_59 : StackLang.HolProg 64 :=
.seq NamedBody531_11 NamedBody531_58

def NamedBody531_60 : StackLang.HolProg 64 :=
.seq NamedBody531_8 NamedBody531_59

def NamedBody531_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody531_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody531_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody531_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody531_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_66 : StackLang.HolProg 64 :=
.seq NamedBody531_64 NamedBody531_65

def NamedBody531_67 : StackLang.HolProg 64 :=
.seq NamedBody531_63 NamedBody531_66

def NamedBody531_68 : StackLang.HolProg 64 :=
.seq NamedBody531_62 NamedBody531_67

def NamedBody531_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1742#64)

def NamedBody531_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_72 : StackLang.HolProg 64 :=
.seq NamedBody531_70 NamedBody531_71

def NamedBody531_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody531_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody531_76 : StackLang.HolProg 64 :=
.seq NamedBody531_74 NamedBody531_75

def NamedBody531_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody531_76 NamedBody531_77

def NamedBody531_79 : StackLang.HolProg 64 :=
.seq NamedBody531_73 NamedBody531_78

def NamedBody531_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody531_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 5

def NamedBody531_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody531_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody531_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody531_89 : StackLang.HolProg 64 :=
.seq NamedBody531_87 NamedBody531_88

def NamedBody531_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody531_91 : StackLang.HolProg 64 :=
.seq NamedBody531_89 NamedBody531_90

def NamedBody531_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_93 : StackLang.HolProg 64 :=
.seq NamedBody531_91 NamedBody531_92

def NamedBody531_94 : StackLang.HolProg 64 :=
.seq NamedBody531_86 NamedBody531_93

def NamedBody531_95 : StackLang.HolProg 64 :=
.seq NamedBody531_85 NamedBody531_94

def NamedBody531_96 : StackLang.HolProg 64 :=
.seq NamedBody531_84 NamedBody531_95

def NamedBody531_97 : StackLang.HolProg 64 :=
.seq NamedBody531_83 NamedBody531_96

def NamedBody531_98 : StackLang.HolProg 64 :=
.seq NamedBody531_82 NamedBody531_97

def NamedBody531_99 : StackLang.HolProg 64 :=
.seq NamedBody531_81 NamedBody531_98

def NamedBody531_100 : StackLang.HolProg 64 :=
.seq NamedBody531_80 NamedBody531_99

def NamedBody531_101 : StackLang.HolProg 64 :=
.seq NamedBody531_79 NamedBody531_100

def NamedBody531_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody531_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody531_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody531_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody531_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_113 : StackLang.HolProg 64 :=
.seq NamedBody531_111 NamedBody531_112

def NamedBody531_114 : StackLang.HolProg 64 :=
.seq NamedBody531_110 NamedBody531_113

def NamedBody531_115 : StackLang.HolProg 64 :=
.seq NamedBody531_109 NamedBody531_114

def NamedBody531_116 : StackLang.HolProg 64 :=
.seq NamedBody531_108 NamedBody531_115

def NamedBody531_117 : StackLang.HolProg 64 :=
.seq NamedBody531_107 NamedBody531_116

def NamedBody531_118 : StackLang.HolProg 64 :=
.seq NamedBody531_106 NamedBody531_117

def NamedBody531_119 : StackLang.HolProg 64 :=
.seq NamedBody531_105 NamedBody531_118

def NamedBody531_120 : StackLang.HolProg 64 :=
.seq NamedBody531_104 NamedBody531_119

def NamedBody531_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody531_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody531_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody531_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_125 : StackLang.HolProg 64 :=
.seq NamedBody531_123 NamedBody531_124

def NamedBody531_126 : StackLang.HolProg 64 :=
.seq NamedBody531_122 NamedBody531_125

def NamedBody531_127 : StackLang.HolProg 64 :=
.seq NamedBody531_121 NamedBody531_126

def NamedBody531_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody531_129 : StackLang.HolProg 64 :=
.seq NamedBody531_127 NamedBody531_128

def NamedBody531_130 : StackLang.HolProg 64 :=
.call (some (NamedBody531_120, 1, 531, 4)) (Sum.inl 475) (some (NamedBody531_129, 531, 5))

def NamedBody531_131 : StackLang.HolProg 64 :=
.seq NamedBody531_103 NamedBody531_130

def NamedBody531_132 : StackLang.HolProg 64 :=
.seq NamedBody531_102 NamedBody531_131

def NamedBody531_133 : StackLang.HolProg 64 :=
.seq NamedBody531_101 NamedBody531_132

def NamedBody531_134 : StackLang.HolProg 64 :=
.seq NamedBody531_72 NamedBody531_133

def NamedBody531_135 : StackLang.HolProg 64 :=
.seq NamedBody531_69 NamedBody531_134

def NamedBody531_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody531_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def NamedBody531_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody531_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody531_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def NamedBody531_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody531_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody531_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody531_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody531_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody531_148 : StackLang.HolProg 64 :=
.seq NamedBody531_146 NamedBody531_147

def NamedBody531_149 : StackLang.HolProg 64 :=
.seq NamedBody531_145 NamedBody531_148

def NamedBody531_150 : StackLang.HolProg 64 :=
.seq NamedBody531_144 NamedBody531_149

def NamedBody531_151 : StackLang.HolProg 64 :=
.seq NamedBody531_143 NamedBody531_150

def NamedBody531_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1743#64)

def NamedBody531_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_155 : StackLang.HolProg 64 :=
.seq NamedBody531_153 NamedBody531_154

def NamedBody531_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody531_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody531_159 : StackLang.HolProg 64 :=
.seq NamedBody531_157 NamedBody531_158

def NamedBody531_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody531_159 NamedBody531_160

def NamedBody531_162 : StackLang.HolProg 64 :=
.seq NamedBody531_156 NamedBody531_161

def NamedBody531_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody531_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 7

def NamedBody531_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody531_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody531_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody531_172 : StackLang.HolProg 64 :=
.seq NamedBody531_170 NamedBody531_171

def NamedBody531_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody531_174 : StackLang.HolProg 64 :=
.seq NamedBody531_172 NamedBody531_173

def NamedBody531_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_176 : StackLang.HolProg 64 :=
.seq NamedBody531_174 NamedBody531_175

def NamedBody531_177 : StackLang.HolProg 64 :=
.seq NamedBody531_169 NamedBody531_176

def NamedBody531_178 : StackLang.HolProg 64 :=
.seq NamedBody531_168 NamedBody531_177

def NamedBody531_179 : StackLang.HolProg 64 :=
.seq NamedBody531_167 NamedBody531_178

def NamedBody531_180 : StackLang.HolProg 64 :=
.seq NamedBody531_166 NamedBody531_179

def NamedBody531_181 : StackLang.HolProg 64 :=
.seq NamedBody531_165 NamedBody531_180

def NamedBody531_182 : StackLang.HolProg 64 :=
.seq NamedBody531_164 NamedBody531_181

def NamedBody531_183 : StackLang.HolProg 64 :=
.seq NamedBody531_163 NamedBody531_182

def NamedBody531_184 : StackLang.HolProg 64 :=
.seq NamedBody531_162 NamedBody531_183

def NamedBody531_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody531_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody531_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody531_195 : StackLang.HolProg 64 :=
.seq NamedBody531_193 NamedBody531_194

def NamedBody531_196 : StackLang.HolProg 64 :=
.seq NamedBody531_192 NamedBody531_195

def NamedBody531_197 : StackLang.HolProg 64 :=
.seq NamedBody531_191 NamedBody531_196

def NamedBody531_198 : StackLang.HolProg 64 :=
.seq NamedBody531_190 NamedBody531_197

def NamedBody531_199 : StackLang.HolProg 64 :=
.seq NamedBody531_189 NamedBody531_198

def NamedBody531_200 : StackLang.HolProg 64 :=
.seq NamedBody531_188 NamedBody531_199

def NamedBody531_201 : StackLang.HolProg 64 :=
.seq NamedBody531_187 NamedBody531_200

def NamedBody531_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody531_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody531_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody531_206 : StackLang.HolProg 64 :=
.seq NamedBody531_204 NamedBody531_205

def NamedBody531_207 : StackLang.HolProg 64 :=
.seq NamedBody531_203 NamedBody531_206

def NamedBody531_208 : StackLang.HolProg 64 :=
.seq NamedBody531_202 NamedBody531_207

def NamedBody531_209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody531_210 : StackLang.HolProg 64 :=
.seq NamedBody531_208 NamedBody531_209

def NamedBody531_211 : StackLang.HolProg 64 :=
.call (some (NamedBody531_201, 1, 531, 6)) (Sum.inl 483) (some (NamedBody531_210, 531, 7))

def NamedBody531_212 : StackLang.HolProg 64 :=
.seq NamedBody531_186 NamedBody531_211

def NamedBody531_213 : StackLang.HolProg 64 :=
.seq NamedBody531_185 NamedBody531_212

def NamedBody531_214 : StackLang.HolProg 64 :=
.seq NamedBody531_184 NamedBody531_213

def NamedBody531_215 : StackLang.HolProg 64 :=
.seq NamedBody531_155 NamedBody531_214

def NamedBody531_216 : StackLang.HolProg 64 :=
.seq NamedBody531_152 NamedBody531_215

def NamedBody531_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody531_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody531_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1744#64)

def NamedBody531_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_222 : StackLang.HolProg 64 :=
.seq NamedBody531_220 NamedBody531_221

def NamedBody531_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody531_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody531_226 : StackLang.HolProg 64 :=
.seq NamedBody531_224 NamedBody531_225

def NamedBody531_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody531_226 NamedBody531_227

def NamedBody531_229 : StackLang.HolProg 64 :=
.seq NamedBody531_223 NamedBody531_228

def NamedBody531_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody531_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 9

def NamedBody531_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody531_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody531_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody531_239 : StackLang.HolProg 64 :=
.seq NamedBody531_237 NamedBody531_238

def NamedBody531_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody531_241 : StackLang.HolProg 64 :=
.seq NamedBody531_239 NamedBody531_240

def NamedBody531_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_243 : StackLang.HolProg 64 :=
.seq NamedBody531_241 NamedBody531_242

def NamedBody531_244 : StackLang.HolProg 64 :=
.seq NamedBody531_236 NamedBody531_243

def NamedBody531_245 : StackLang.HolProg 64 :=
.seq NamedBody531_235 NamedBody531_244

def NamedBody531_246 : StackLang.HolProg 64 :=
.seq NamedBody531_234 NamedBody531_245

def NamedBody531_247 : StackLang.HolProg 64 :=
.seq NamedBody531_233 NamedBody531_246

def NamedBody531_248 : StackLang.HolProg 64 :=
.seq NamedBody531_232 NamedBody531_247

def NamedBody531_249 : StackLang.HolProg 64 :=
.seq NamedBody531_231 NamedBody531_248

def NamedBody531_250 : StackLang.HolProg 64 :=
.seq NamedBody531_230 NamedBody531_249

def NamedBody531_251 : StackLang.HolProg 64 :=
.seq NamedBody531_229 NamedBody531_250

def NamedBody531_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody531_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody531_260 : StackLang.HolProg 64 :=
.seq NamedBody531_258 NamedBody531_259

def NamedBody531_261 : StackLang.HolProg 64 :=
.seq NamedBody531_257 NamedBody531_260

def NamedBody531_262 : StackLang.HolProg 64 :=
.seq NamedBody531_256 NamedBody531_261

def NamedBody531_263 : StackLang.HolProg 64 :=
.seq NamedBody531_255 NamedBody531_262

def NamedBody531_264 : StackLang.HolProg 64 :=
.seq NamedBody531_254 NamedBody531_263

def NamedBody531_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody531_266 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody531_267 : StackLang.HolProg 64 :=
.seq NamedBody531_265 NamedBody531_266

def NamedBody531_268 : StackLang.HolProg 64 :=
.call (some (NamedBody531_264, 1, 531, 8)) (Sum.inl 462) (some (NamedBody531_267, 531, 9))

def NamedBody531_269 : StackLang.HolProg 64 :=
.seq NamedBody531_253 NamedBody531_268

def NamedBody531_270 : StackLang.HolProg 64 :=
.seq NamedBody531_252 NamedBody531_269

def NamedBody531_271 : StackLang.HolProg 64 :=
.seq NamedBody531_251 NamedBody531_270

def NamedBody531_272 : StackLang.HolProg 64 :=
.seq NamedBody531_222 NamedBody531_271

def NamedBody531_273 : StackLang.HolProg 64 :=
.seq NamedBody531_219 NamedBody531_272

def NamedBody531_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody531_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody531_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody531_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody531_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody531_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody531_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody531_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def NamedBody531_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody531_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody531_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1745#64)

def NamedBody531_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_290 : StackLang.HolProg 64 :=
.seq NamedBody531_288 NamedBody531_289

def NamedBody531_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody531_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody531_294 : StackLang.HolProg 64 :=
.seq NamedBody531_292 NamedBody531_293

def NamedBody531_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_296 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody531_294 NamedBody531_295

def NamedBody531_297 : StackLang.HolProg 64 :=
.seq NamedBody531_291 NamedBody531_296

def NamedBody531_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody531_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody531_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 11

def NamedBody531_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody531_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody531_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody531_307 : StackLang.HolProg 64 :=
.seq NamedBody531_305 NamedBody531_306

def NamedBody531_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody531_309 : StackLang.HolProg 64 :=
.seq NamedBody531_307 NamedBody531_308

def NamedBody531_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_311 : StackLang.HolProg 64 :=
.seq NamedBody531_309 NamedBody531_310

def NamedBody531_312 : StackLang.HolProg 64 :=
.seq NamedBody531_304 NamedBody531_311

def NamedBody531_313 : StackLang.HolProg 64 :=
.seq NamedBody531_303 NamedBody531_312

def NamedBody531_314 : StackLang.HolProg 64 :=
.seq NamedBody531_302 NamedBody531_313

def NamedBody531_315 : StackLang.HolProg 64 :=
.seq NamedBody531_301 NamedBody531_314

def NamedBody531_316 : StackLang.HolProg 64 :=
.seq NamedBody531_300 NamedBody531_315

def NamedBody531_317 : StackLang.HolProg 64 :=
.seq NamedBody531_299 NamedBody531_316

def NamedBody531_318 : StackLang.HolProg 64 :=
.seq NamedBody531_298 NamedBody531_317

def NamedBody531_319 : StackLang.HolProg 64 :=
.seq NamedBody531_297 NamedBody531_318

def NamedBody531_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody531_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody531_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody531_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody531_327 : StackLang.HolProg 64 :=
.seq NamedBody531_325 NamedBody531_326

def NamedBody531_328 : StackLang.HolProg 64 :=
.seq NamedBody531_324 NamedBody531_327

def NamedBody531_329 : StackLang.HolProg 64 :=
.seq NamedBody531_323 NamedBody531_328

def NamedBody531_330 : StackLang.HolProg 64 :=
.seq NamedBody531_322 NamedBody531_329

def NamedBody531_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody531_332 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody531_333 : StackLang.HolProg 64 :=
.seq NamedBody531_331 NamedBody531_332

def NamedBody531_334 : StackLang.HolProg 64 :=
.call (some (NamedBody531_330, 1, 531, 10)) (Sum.inl 490) (some (NamedBody531_333, 531, 11))

def NamedBody531_335 : StackLang.HolProg 64 :=
.seq NamedBody531_321 NamedBody531_334

def NamedBody531_336 : StackLang.HolProg 64 :=
.seq NamedBody531_320 NamedBody531_335

def NamedBody531_337 : StackLang.HolProg 64 :=
.seq NamedBody531_319 NamedBody531_336

def NamedBody531_338 : StackLang.HolProg 64 :=
.seq NamedBody531_290 NamedBody531_337

def NamedBody531_339 : StackLang.HolProg 64 :=
.seq NamedBody531_287 NamedBody531_338

def NamedBody531_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody531_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody531_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody531_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody531_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody531_345 : StackLang.HolProg 64 :=
.seq NamedBody531_343 NamedBody531_344

def NamedBody531_346 : StackLang.HolProg 64 :=
.seq NamedBody531_342 NamedBody531_345

def NamedBody531_347 : StackLang.HolProg 64 :=
.seq NamedBody531_341 NamedBody531_346

def NamedBody531_348 : StackLang.HolProg 64 :=
.seq NamedBody531_340 NamedBody531_347

def NamedBody531_349 : StackLang.HolProg 64 :=
.seq NamedBody531_339 NamedBody531_348

def NamedBody531_350 : StackLang.HolProg 64 :=
.seq NamedBody531_286 NamedBody531_349

def NamedBody531_351 : StackLang.HolProg 64 :=
.seq NamedBody531_285 NamedBody531_350

def NamedBody531_352 : StackLang.HolProg 64 :=
.seq NamedBody531_284 NamedBody531_351

def NamedBody531_353 : StackLang.HolProg 64 :=
.seq NamedBody531_283 NamedBody531_352

def NamedBody531_354 : StackLang.HolProg 64 :=
.seq NamedBody531_282 NamedBody531_353

def NamedBody531_355 : StackLang.HolProg 64 :=
.seq NamedBody531_281 NamedBody531_354

def NamedBody531_356 : StackLang.HolProg 64 :=
.seq NamedBody531_280 NamedBody531_355

def NamedBody531_357 : StackLang.HolProg 64 :=
.seq NamedBody531_279 NamedBody531_356

def NamedBody531_358 : StackLang.HolProg 64 :=
.seq NamedBody531_278 NamedBody531_357

def NamedBody531_359 : StackLang.HolProg 64 :=
.seq NamedBody531_277 NamedBody531_358

def NamedBody531_360 : StackLang.HolProg 64 :=
.seq NamedBody531_276 NamedBody531_359

def NamedBody531_361 : StackLang.HolProg 64 :=
.seq NamedBody531_275 NamedBody531_360

def NamedBody531_362 : StackLang.HolProg 64 :=
.seq NamedBody531_274 NamedBody531_361

def NamedBody531_363 : StackLang.HolProg 64 :=
.seq NamedBody531_273 NamedBody531_362

def NamedBody531_364 : StackLang.HolProg 64 :=
.seq NamedBody531_218 NamedBody531_363

def NamedBody531_365 : StackLang.HolProg 64 :=
.seq NamedBody531_217 NamedBody531_364

def NamedBody531_366 : StackLang.HolProg 64 :=
.seq NamedBody531_216 NamedBody531_365

def NamedBody531_367 : StackLang.HolProg 64 :=
.seq NamedBody531_151 NamedBody531_366

def NamedBody531_368 : StackLang.HolProg 64 :=
.seq NamedBody531_142 NamedBody531_367

def NamedBody531_369 : StackLang.HolProg 64 :=
.seq NamedBody531_141 NamedBody531_368

def NamedBody531_370 : StackLang.HolProg 64 :=
.seq NamedBody531_140 NamedBody531_369

def NamedBody531_371 : StackLang.HolProg 64 :=
.seq NamedBody531_139 NamedBody531_370

def NamedBody531_372 : StackLang.HolProg 64 :=
.seq NamedBody531_138 NamedBody531_371

def NamedBody531_373 : StackLang.HolProg 64 :=
.seq NamedBody531_137 NamedBody531_372

def NamedBody531_374 : StackLang.HolProg 64 :=
.seq NamedBody531_136 NamedBody531_373

def NamedBody531_375 : StackLang.HolProg 64 :=
.seq NamedBody531_135 NamedBody531_374

def NamedBody531_376 : StackLang.HolProg 64 :=
.seq NamedBody531_68 NamedBody531_375

def NamedBody531_377 : StackLang.HolProg 64 :=
.seq NamedBody531_61 NamedBody531_376

def NamedBody531_378 : StackLang.HolProg 64 :=
.seq NamedBody531_60 NamedBody531_377

def NamedBody531_379 : StackLang.HolProg 64 :=
.seq NamedBody531_7 NamedBody531_378

def NamedBody531_380 : StackLang.HolProg 64 :=
.seq NamedBody531_6 NamedBody531_379

def Named531 : Nat × StackLang.HolProg 64 := (531, NamedBody531_380)
theorem Named531_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed531 = Named531 := by
  kernel_rfl
#print axioms Named531_eq
end InitECandidate.Proofs.BackendStages
