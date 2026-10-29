import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed501
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody501_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody501_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody501_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody501_3 : StackLang.HolProg 64 :=
.seq NamedBody501_1 NamedBody501_2

def NamedBody501_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody501_3 NamedBody501_4

def NamedBody501_6 : StackLang.HolProg 64 :=
.seq NamedBody501_0 NamedBody501_5

def NamedBody501_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody501_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1568#64)

def NamedBody501_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_11 : StackLang.HolProg 64 :=
.seq NamedBody501_9 NamedBody501_10

def NamedBody501_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody501_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody501_15 : StackLang.HolProg 64 :=
.seq NamedBody501_13 NamedBody501_14

def NamedBody501_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody501_15 NamedBody501_16

def NamedBody501_18 : StackLang.HolProg 64 :=
.seq NamedBody501_12 NamedBody501_17

def NamedBody501_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody501_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 3

def NamedBody501_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody501_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody501_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody501_28 : StackLang.HolProg 64 :=
.seq NamedBody501_26 NamedBody501_27

def NamedBody501_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody501_30 : StackLang.HolProg 64 :=
.seq NamedBody501_28 NamedBody501_29

def NamedBody501_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_32 : StackLang.HolProg 64 :=
.seq NamedBody501_30 NamedBody501_31

def NamedBody501_33 : StackLang.HolProg 64 :=
.seq NamedBody501_25 NamedBody501_32

def NamedBody501_34 : StackLang.HolProg 64 :=
.seq NamedBody501_24 NamedBody501_33

def NamedBody501_35 : StackLang.HolProg 64 :=
.seq NamedBody501_23 NamedBody501_34

def NamedBody501_36 : StackLang.HolProg 64 :=
.seq NamedBody501_22 NamedBody501_35

def NamedBody501_37 : StackLang.HolProg 64 :=
.seq NamedBody501_21 NamedBody501_36

def NamedBody501_38 : StackLang.HolProg 64 :=
.seq NamedBody501_20 NamedBody501_37

def NamedBody501_39 : StackLang.HolProg 64 :=
.seq NamedBody501_19 NamedBody501_38

def NamedBody501_40 : StackLang.HolProg 64 :=
.seq NamedBody501_18 NamedBody501_39

def NamedBody501_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody501_48 : StackLang.HolProg 64 :=
.seq NamedBody501_46 NamedBody501_47

def NamedBody501_49 : StackLang.HolProg 64 :=
.seq NamedBody501_45 NamedBody501_48

def NamedBody501_50 : StackLang.HolProg 64 :=
.seq NamedBody501_44 NamedBody501_49

def NamedBody501_51 : StackLang.HolProg 64 :=
.seq NamedBody501_43 NamedBody501_50

def NamedBody501_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody501_54 : StackLang.HolProg 64 :=
.seq NamedBody501_52 NamedBody501_53

def NamedBody501_55 : StackLang.HolProg 64 :=
.call (some (NamedBody501_51, 1, 501, 2)) (Sum.inl 475) (some (NamedBody501_54, 501, 3))

def NamedBody501_56 : StackLang.HolProg 64 :=
.seq NamedBody501_42 NamedBody501_55

def NamedBody501_57 : StackLang.HolProg 64 :=
.seq NamedBody501_41 NamedBody501_56

def NamedBody501_58 : StackLang.HolProg 64 :=
.seq NamedBody501_40 NamedBody501_57

def NamedBody501_59 : StackLang.HolProg 64 :=
.seq NamedBody501_11 NamedBody501_58

def NamedBody501_60 : StackLang.HolProg 64 :=
.seq NamedBody501_8 NamedBody501_59

def NamedBody501_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody501_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody501_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody501_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody501_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_66 : StackLang.HolProg 64 :=
.seq NamedBody501_64 NamedBody501_65

def NamedBody501_67 : StackLang.HolProg 64 :=
.seq NamedBody501_63 NamedBody501_66

def NamedBody501_68 : StackLang.HolProg 64 :=
.seq NamedBody501_62 NamedBody501_67

def NamedBody501_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1569#64)

def NamedBody501_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_72 : StackLang.HolProg 64 :=
.seq NamedBody501_70 NamedBody501_71

def NamedBody501_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody501_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody501_76 : StackLang.HolProg 64 :=
.seq NamedBody501_74 NamedBody501_75

def NamedBody501_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody501_76 NamedBody501_77

def NamedBody501_79 : StackLang.HolProg 64 :=
.seq NamedBody501_73 NamedBody501_78

def NamedBody501_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody501_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 5

def NamedBody501_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody501_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody501_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody501_89 : StackLang.HolProg 64 :=
.seq NamedBody501_87 NamedBody501_88

def NamedBody501_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody501_91 : StackLang.HolProg 64 :=
.seq NamedBody501_89 NamedBody501_90

def NamedBody501_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_93 : StackLang.HolProg 64 :=
.seq NamedBody501_91 NamedBody501_92

def NamedBody501_94 : StackLang.HolProg 64 :=
.seq NamedBody501_86 NamedBody501_93

def NamedBody501_95 : StackLang.HolProg 64 :=
.seq NamedBody501_85 NamedBody501_94

def NamedBody501_96 : StackLang.HolProg 64 :=
.seq NamedBody501_84 NamedBody501_95

def NamedBody501_97 : StackLang.HolProg 64 :=
.seq NamedBody501_83 NamedBody501_96

def NamedBody501_98 : StackLang.HolProg 64 :=
.seq NamedBody501_82 NamedBody501_97

def NamedBody501_99 : StackLang.HolProg 64 :=
.seq NamedBody501_81 NamedBody501_98

def NamedBody501_100 : StackLang.HolProg 64 :=
.seq NamedBody501_80 NamedBody501_99

def NamedBody501_101 : StackLang.HolProg 64 :=
.seq NamedBody501_79 NamedBody501_100

def NamedBody501_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody501_109 : StackLang.HolProg 64 :=
.seq NamedBody501_107 NamedBody501_108

def NamedBody501_110 : StackLang.HolProg 64 :=
.seq NamedBody501_106 NamedBody501_109

def NamedBody501_111 : StackLang.HolProg 64 :=
.seq NamedBody501_105 NamedBody501_110

def NamedBody501_112 : StackLang.HolProg 64 :=
.seq NamedBody501_104 NamedBody501_111

def NamedBody501_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody501_115 : StackLang.HolProg 64 :=
.seq NamedBody501_113 NamedBody501_114

def NamedBody501_116 : StackLang.HolProg 64 :=
.call (some (NamedBody501_112, 1, 501, 4)) (Sum.inl 475) (some (NamedBody501_115, 501, 5))

def NamedBody501_117 : StackLang.HolProg 64 :=
.seq NamedBody501_103 NamedBody501_116

def NamedBody501_118 : StackLang.HolProg 64 :=
.seq NamedBody501_102 NamedBody501_117

def NamedBody501_119 : StackLang.HolProg 64 :=
.seq NamedBody501_101 NamedBody501_118

def NamedBody501_120 : StackLang.HolProg 64 :=
.seq NamedBody501_72 NamedBody501_119

def NamedBody501_121 : StackLang.HolProg 64 :=
.seq NamedBody501_69 NamedBody501_120

def NamedBody501_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody501_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody501_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody501_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody501_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody501_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody501_128 : StackLang.HolProg 64 :=
.seq NamedBody501_126 NamedBody501_127

def NamedBody501_129 : StackLang.HolProg 64 :=
.seq NamedBody501_125 NamedBody501_128

def NamedBody501_130 : StackLang.HolProg 64 :=
.seq NamedBody501_124 NamedBody501_129

def NamedBody501_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1570#64)

def NamedBody501_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_134 : StackLang.HolProg 64 :=
.seq NamedBody501_132 NamedBody501_133

def NamedBody501_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody501_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody501_138 : StackLang.HolProg 64 :=
.seq NamedBody501_136 NamedBody501_137

def NamedBody501_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody501_138 NamedBody501_139

def NamedBody501_141 : StackLang.HolProg 64 :=
.seq NamedBody501_135 NamedBody501_140

def NamedBody501_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody501_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 7

def NamedBody501_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody501_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody501_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody501_151 : StackLang.HolProg 64 :=
.seq NamedBody501_149 NamedBody501_150

def NamedBody501_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody501_153 : StackLang.HolProg 64 :=
.seq NamedBody501_151 NamedBody501_152

def NamedBody501_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_155 : StackLang.HolProg 64 :=
.seq NamedBody501_153 NamedBody501_154

def NamedBody501_156 : StackLang.HolProg 64 :=
.seq NamedBody501_148 NamedBody501_155

def NamedBody501_157 : StackLang.HolProg 64 :=
.seq NamedBody501_147 NamedBody501_156

def NamedBody501_158 : StackLang.HolProg 64 :=
.seq NamedBody501_146 NamedBody501_157

def NamedBody501_159 : StackLang.HolProg 64 :=
.seq NamedBody501_145 NamedBody501_158

def NamedBody501_160 : StackLang.HolProg 64 :=
.seq NamedBody501_144 NamedBody501_159

def NamedBody501_161 : StackLang.HolProg 64 :=
.seq NamedBody501_143 NamedBody501_160

def NamedBody501_162 : StackLang.HolProg 64 :=
.seq NamedBody501_142 NamedBody501_161

def NamedBody501_163 : StackLang.HolProg 64 :=
.seq NamedBody501_141 NamedBody501_162

def NamedBody501_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody501_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody501_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody501_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody501_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody501_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody501_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody501_178 : StackLang.HolProg 64 :=
.seq NamedBody501_176 NamedBody501_177

def NamedBody501_179 : StackLang.HolProg 64 :=
.seq NamedBody501_175 NamedBody501_178

def NamedBody501_180 : StackLang.HolProg 64 :=
.seq NamedBody501_174 NamedBody501_179

def NamedBody501_181 : StackLang.HolProg 64 :=
.seq NamedBody501_173 NamedBody501_180

def NamedBody501_182 : StackLang.HolProg 64 :=
.seq NamedBody501_172 NamedBody501_181

def NamedBody501_183 : StackLang.HolProg 64 :=
.seq NamedBody501_171 NamedBody501_182

def NamedBody501_184 : StackLang.HolProg 64 :=
.seq NamedBody501_170 NamedBody501_183

def NamedBody501_185 : StackLang.HolProg 64 :=
.seq NamedBody501_169 NamedBody501_184

def NamedBody501_186 : StackLang.HolProg 64 :=
.seq NamedBody501_168 NamedBody501_185

def NamedBody501_187 : StackLang.HolProg 64 :=
.seq NamedBody501_167 NamedBody501_186

def NamedBody501_188 : StackLang.HolProg 64 :=
.seq NamedBody501_166 NamedBody501_187

def NamedBody501_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody501_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody501_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody501_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody501_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody501_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody501_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody501_197 : StackLang.HolProg 64 :=
.seq NamedBody501_195 NamedBody501_196

def NamedBody501_198 : StackLang.HolProg 64 :=
.seq NamedBody501_194 NamedBody501_197

def NamedBody501_199 : StackLang.HolProg 64 :=
.seq NamedBody501_193 NamedBody501_198

def NamedBody501_200 : StackLang.HolProg 64 :=
.seq NamedBody501_192 NamedBody501_199

def NamedBody501_201 : StackLang.HolProg 64 :=
.seq NamedBody501_191 NamedBody501_200

def NamedBody501_202 : StackLang.HolProg 64 :=
.seq NamedBody501_190 NamedBody501_201

def NamedBody501_203 : StackLang.HolProg 64 :=
.seq NamedBody501_189 NamedBody501_202

def NamedBody501_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody501_205 : StackLang.HolProg 64 :=
.seq NamedBody501_203 NamedBody501_204

def NamedBody501_206 : StackLang.HolProg 64 :=
.call (some (NamedBody501_188, 1, 501, 6)) (Sum.inl 470) (some (NamedBody501_205, 501, 7))

def NamedBody501_207 : StackLang.HolProg 64 :=
.seq NamedBody501_165 NamedBody501_206

def NamedBody501_208 : StackLang.HolProg 64 :=
.seq NamedBody501_164 NamedBody501_207

def NamedBody501_209 : StackLang.HolProg 64 :=
.seq NamedBody501_163 NamedBody501_208

def NamedBody501_210 : StackLang.HolProg 64 :=
.seq NamedBody501_134 NamedBody501_209

def NamedBody501_211 : StackLang.HolProg 64 :=
.seq NamedBody501_131 NamedBody501_210

def NamedBody501_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody501_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody501_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1571#64)

def NamedBody501_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_217 : StackLang.HolProg 64 :=
.seq NamedBody501_215 NamedBody501_216

def NamedBody501_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody501_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody501_221 : StackLang.HolProg 64 :=
.seq NamedBody501_219 NamedBody501_220

def NamedBody501_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody501_221 NamedBody501_222

def NamedBody501_224 : StackLang.HolProg 64 :=
.seq NamedBody501_218 NamedBody501_223

def NamedBody501_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody501_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 9

def NamedBody501_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody501_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody501_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody501_234 : StackLang.HolProg 64 :=
.seq NamedBody501_232 NamedBody501_233

def NamedBody501_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody501_236 : StackLang.HolProg 64 :=
.seq NamedBody501_234 NamedBody501_235

def NamedBody501_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_238 : StackLang.HolProg 64 :=
.seq NamedBody501_236 NamedBody501_237

def NamedBody501_239 : StackLang.HolProg 64 :=
.seq NamedBody501_231 NamedBody501_238

def NamedBody501_240 : StackLang.HolProg 64 :=
.seq NamedBody501_230 NamedBody501_239

def NamedBody501_241 : StackLang.HolProg 64 :=
.seq NamedBody501_229 NamedBody501_240

def NamedBody501_242 : StackLang.HolProg 64 :=
.seq NamedBody501_228 NamedBody501_241

def NamedBody501_243 : StackLang.HolProg 64 :=
.seq NamedBody501_227 NamedBody501_242

def NamedBody501_244 : StackLang.HolProg 64 :=
.seq NamedBody501_226 NamedBody501_243

def NamedBody501_245 : StackLang.HolProg 64 :=
.seq NamedBody501_225 NamedBody501_244

def NamedBody501_246 : StackLang.HolProg 64 :=
.seq NamedBody501_224 NamedBody501_245

def NamedBody501_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody501_254 : StackLang.HolProg 64 :=
.seq NamedBody501_252 NamedBody501_253

def NamedBody501_255 : StackLang.HolProg 64 :=
.seq NamedBody501_251 NamedBody501_254

def NamedBody501_256 : StackLang.HolProg 64 :=
.seq NamedBody501_250 NamedBody501_255

def NamedBody501_257 : StackLang.HolProg 64 :=
.seq NamedBody501_249 NamedBody501_256

def NamedBody501_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody501_260 : StackLang.HolProg 64 :=
.seq NamedBody501_258 NamedBody501_259

def NamedBody501_261 : StackLang.HolProg 64 :=
.call (some (NamedBody501_257, 1, 501, 8)) (Sum.inl 133) (some (NamedBody501_260, 501, 9))

def NamedBody501_262 : StackLang.HolProg 64 :=
.seq NamedBody501_248 NamedBody501_261

def NamedBody501_263 : StackLang.HolProg 64 :=
.seq NamedBody501_247 NamedBody501_262

def NamedBody501_264 : StackLang.HolProg 64 :=
.seq NamedBody501_246 NamedBody501_263

def NamedBody501_265 : StackLang.HolProg 64 :=
.seq NamedBody501_217 NamedBody501_264

def NamedBody501_266 : StackLang.HolProg 64 :=
.seq NamedBody501_214 NamedBody501_265

def NamedBody501_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody501_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody501_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1572#64)

def NamedBody501_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_272 : StackLang.HolProg 64 :=
.seq NamedBody501_270 NamedBody501_271

def NamedBody501_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody501_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody501_276 : StackLang.HolProg 64 :=
.seq NamedBody501_274 NamedBody501_275

def NamedBody501_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody501_276 NamedBody501_277

def NamedBody501_279 : StackLang.HolProg 64 :=
.seq NamedBody501_273 NamedBody501_278

def NamedBody501_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody501_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 11

def NamedBody501_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody501_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody501_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody501_289 : StackLang.HolProg 64 :=
.seq NamedBody501_287 NamedBody501_288

def NamedBody501_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody501_291 : StackLang.HolProg 64 :=
.seq NamedBody501_289 NamedBody501_290

def NamedBody501_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_293 : StackLang.HolProg 64 :=
.seq NamedBody501_291 NamedBody501_292

def NamedBody501_294 : StackLang.HolProg 64 :=
.seq NamedBody501_286 NamedBody501_293

def NamedBody501_295 : StackLang.HolProg 64 :=
.seq NamedBody501_285 NamedBody501_294

def NamedBody501_296 : StackLang.HolProg 64 :=
.seq NamedBody501_284 NamedBody501_295

def NamedBody501_297 : StackLang.HolProg 64 :=
.seq NamedBody501_283 NamedBody501_296

def NamedBody501_298 : StackLang.HolProg 64 :=
.seq NamedBody501_282 NamedBody501_297

def NamedBody501_299 : StackLang.HolProg 64 :=
.seq NamedBody501_281 NamedBody501_298

def NamedBody501_300 : StackLang.HolProg 64 :=
.seq NamedBody501_280 NamedBody501_299

def NamedBody501_301 : StackLang.HolProg 64 :=
.seq NamedBody501_279 NamedBody501_300

def NamedBody501_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_309 : StackLang.HolProg 64 :=
.seq NamedBody501_307 NamedBody501_308

def NamedBody501_310 : StackLang.HolProg 64 :=
.seq NamedBody501_306 NamedBody501_309

def NamedBody501_311 : StackLang.HolProg 64 :=
.seq NamedBody501_305 NamedBody501_310

def NamedBody501_312 : StackLang.HolProg 64 :=
.seq NamedBody501_304 NamedBody501_311

def NamedBody501_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody501_315 : StackLang.HolProg 64 :=
.seq NamedBody501_313 NamedBody501_314

def NamedBody501_316 : StackLang.HolProg 64 :=
.call (some (NamedBody501_312, 1, 501, 10)) (Sum.inl 476) (some (NamedBody501_315, 501, 11))

def NamedBody501_317 : StackLang.HolProg 64 :=
.seq NamedBody501_303 NamedBody501_316

def NamedBody501_318 : StackLang.HolProg 64 :=
.seq NamedBody501_302 NamedBody501_317

def NamedBody501_319 : StackLang.HolProg 64 :=
.seq NamedBody501_301 NamedBody501_318

def NamedBody501_320 : StackLang.HolProg 64 :=
.seq NamedBody501_272 NamedBody501_319

def NamedBody501_321 : StackLang.HolProg 64 :=
.seq NamedBody501_269 NamedBody501_320

def NamedBody501_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody501_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody501_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1573#64)

def NamedBody501_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_328 : StackLang.HolProg 64 :=
.seq NamedBody501_326 NamedBody501_327

def NamedBody501_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody501_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody501_332 : StackLang.HolProg 64 :=
.seq NamedBody501_330 NamedBody501_331

def NamedBody501_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody501_332 NamedBody501_333

def NamedBody501_335 : StackLang.HolProg 64 :=
.seq NamedBody501_329 NamedBody501_334

def NamedBody501_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody501_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody501_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 13

def NamedBody501_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody501_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody501_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody501_345 : StackLang.HolProg 64 :=
.seq NamedBody501_343 NamedBody501_344

def NamedBody501_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody501_347 : StackLang.HolProg 64 :=
.seq NamedBody501_345 NamedBody501_346

def NamedBody501_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_349 : StackLang.HolProg 64 :=
.seq NamedBody501_347 NamedBody501_348

def NamedBody501_350 : StackLang.HolProg 64 :=
.seq NamedBody501_342 NamedBody501_349

def NamedBody501_351 : StackLang.HolProg 64 :=
.seq NamedBody501_341 NamedBody501_350

def NamedBody501_352 : StackLang.HolProg 64 :=
.seq NamedBody501_340 NamedBody501_351

def NamedBody501_353 : StackLang.HolProg 64 :=
.seq NamedBody501_339 NamedBody501_352

def NamedBody501_354 : StackLang.HolProg 64 :=
.seq NamedBody501_338 NamedBody501_353

def NamedBody501_355 : StackLang.HolProg 64 :=
.seq NamedBody501_337 NamedBody501_354

def NamedBody501_356 : StackLang.HolProg 64 :=
.seq NamedBody501_336 NamedBody501_355

def NamedBody501_357 : StackLang.HolProg 64 :=
.seq NamedBody501_335 NamedBody501_356

def NamedBody501_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody501_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody501_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody501_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody501_365 : StackLang.HolProg 64 :=
.seq NamedBody501_363 NamedBody501_364

def NamedBody501_366 : StackLang.HolProg 64 :=
.seq NamedBody501_362 NamedBody501_365

def NamedBody501_367 : StackLang.HolProg 64 :=
.seq NamedBody501_361 NamedBody501_366

def NamedBody501_368 : StackLang.HolProg 64 :=
.seq NamedBody501_360 NamedBody501_367

def NamedBody501_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody501_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody501_371 : StackLang.HolProg 64 :=
.seq NamedBody501_369 NamedBody501_370

def NamedBody501_372 : StackLang.HolProg 64 :=
.call (some (NamedBody501_368, 1, 501, 12)) (Sum.inl 490) (some (NamedBody501_371, 501, 13))

def NamedBody501_373 : StackLang.HolProg 64 :=
.seq NamedBody501_359 NamedBody501_372

def NamedBody501_374 : StackLang.HolProg 64 :=
.seq NamedBody501_358 NamedBody501_373

def NamedBody501_375 : StackLang.HolProg 64 :=
.seq NamedBody501_357 NamedBody501_374

def NamedBody501_376 : StackLang.HolProg 64 :=
.seq NamedBody501_328 NamedBody501_375

def NamedBody501_377 : StackLang.HolProg 64 :=
.seq NamedBody501_325 NamedBody501_376

def NamedBody501_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody501_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody501_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody501_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody501_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody501_383 : StackLang.HolProg 64 :=
.seq NamedBody501_381 NamedBody501_382

def NamedBody501_384 : StackLang.HolProg 64 :=
.seq NamedBody501_380 NamedBody501_383

def NamedBody501_385 : StackLang.HolProg 64 :=
.seq NamedBody501_379 NamedBody501_384

def NamedBody501_386 : StackLang.HolProg 64 :=
.seq NamedBody501_378 NamedBody501_385

def NamedBody501_387 : StackLang.HolProg 64 :=
.seq NamedBody501_377 NamedBody501_386

def NamedBody501_388 : StackLang.HolProg 64 :=
.seq NamedBody501_324 NamedBody501_387

def NamedBody501_389 : StackLang.HolProg 64 :=
.seq NamedBody501_323 NamedBody501_388

def NamedBody501_390 : StackLang.HolProg 64 :=
.seq NamedBody501_322 NamedBody501_389

def NamedBody501_391 : StackLang.HolProg 64 :=
.seq NamedBody501_321 NamedBody501_390

def NamedBody501_392 : StackLang.HolProg 64 :=
.seq NamedBody501_268 NamedBody501_391

def NamedBody501_393 : StackLang.HolProg 64 :=
.seq NamedBody501_267 NamedBody501_392

def NamedBody501_394 : StackLang.HolProg 64 :=
.seq NamedBody501_266 NamedBody501_393

def NamedBody501_395 : StackLang.HolProg 64 :=
.seq NamedBody501_213 NamedBody501_394

def NamedBody501_396 : StackLang.HolProg 64 :=
.seq NamedBody501_212 NamedBody501_395

def NamedBody501_397 : StackLang.HolProg 64 :=
.seq NamedBody501_211 NamedBody501_396

def NamedBody501_398 : StackLang.HolProg 64 :=
.seq NamedBody501_130 NamedBody501_397

def NamedBody501_399 : StackLang.HolProg 64 :=
.seq NamedBody501_123 NamedBody501_398

def NamedBody501_400 : StackLang.HolProg 64 :=
.seq NamedBody501_122 NamedBody501_399

def NamedBody501_401 : StackLang.HolProg 64 :=
.seq NamedBody501_121 NamedBody501_400

def NamedBody501_402 : StackLang.HolProg 64 :=
.seq NamedBody501_68 NamedBody501_401

def NamedBody501_403 : StackLang.HolProg 64 :=
.seq NamedBody501_61 NamedBody501_402

def NamedBody501_404 : StackLang.HolProg 64 :=
.seq NamedBody501_60 NamedBody501_403

def NamedBody501_405 : StackLang.HolProg 64 :=
.seq NamedBody501_7 NamedBody501_404

def NamedBody501_406 : StackLang.HolProg 64 :=
.seq NamedBody501_6 NamedBody501_405

def Named501 : Nat × StackLang.HolProg 64 := (501, NamedBody501_406)
theorem Named501_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed501 = Named501 := by
  kernel_rfl
#print axioms Named501_eq
end InitECandidate.Proofs.BackendStages
