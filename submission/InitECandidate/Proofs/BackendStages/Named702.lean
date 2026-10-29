import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed702
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody702_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody702_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody702_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody702_3 : StackLang.HolProg 64 :=
.seq NamedBody702_1 NamedBody702_2

def NamedBody702_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody702_3 NamedBody702_4

def NamedBody702_6 : StackLang.HolProg 64 :=
.seq NamedBody702_0 NamedBody702_5

def NamedBody702_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody702_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody702_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody702_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody702_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody702_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6000#64)

def NamedBody702_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody702_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_16 : StackLang.HolProg 64 :=
.seq NamedBody702_14 NamedBody702_15

def NamedBody702_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3139#64)

def NamedBody702_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_20 : StackLang.HolProg 64 :=
.seq NamedBody702_18 NamedBody702_19

def NamedBody702_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody702_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody702_24 : StackLang.HolProg 64 :=
.seq NamedBody702_22 NamedBody702_23

def NamedBody702_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody702_24 NamedBody702_25

def NamedBody702_27 : StackLang.HolProg 64 :=
.seq NamedBody702_21 NamedBody702_26

def NamedBody702_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody702_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 3

def NamedBody702_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody702_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody702_37 : StackLang.HolProg 64 :=
.seq NamedBody702_35 NamedBody702_36

def NamedBody702_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody702_39 : StackLang.HolProg 64 :=
.seq NamedBody702_37 NamedBody702_38

def NamedBody702_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_41 : StackLang.HolProg 64 :=
.seq NamedBody702_39 NamedBody702_40

def NamedBody702_42 : StackLang.HolProg 64 :=
.seq NamedBody702_34 NamedBody702_41

def NamedBody702_43 : StackLang.HolProg 64 :=
.seq NamedBody702_33 NamedBody702_42

def NamedBody702_44 : StackLang.HolProg 64 :=
.seq NamedBody702_32 NamedBody702_43

def NamedBody702_45 : StackLang.HolProg 64 :=
.seq NamedBody702_31 NamedBody702_44

def NamedBody702_46 : StackLang.HolProg 64 :=
.seq NamedBody702_30 NamedBody702_45

def NamedBody702_47 : StackLang.HolProg 64 :=
.seq NamedBody702_29 NamedBody702_46

def NamedBody702_48 : StackLang.HolProg 64 :=
.seq NamedBody702_28 NamedBody702_47

def NamedBody702_49 : StackLang.HolProg 64 :=
.seq NamedBody702_27 NamedBody702_48

def NamedBody702_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_57 : StackLang.HolProg 64 :=
.seq NamedBody702_55 NamedBody702_56

def NamedBody702_58 : StackLang.HolProg 64 :=
.seq NamedBody702_54 NamedBody702_57

def NamedBody702_59 : StackLang.HolProg 64 :=
.seq NamedBody702_53 NamedBody702_58

def NamedBody702_60 : StackLang.HolProg 64 :=
.seq NamedBody702_52 NamedBody702_59

def NamedBody702_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody702_63 : StackLang.HolProg 64 :=
.seq NamedBody702_61 NamedBody702_62

def NamedBody702_64 : StackLang.HolProg 64 :=
.call (some (NamedBody702_60, 1, 702, 2)) (Sum.inl 470) (some (NamedBody702_63, 702, 3))

def NamedBody702_65 : StackLang.HolProg 64 :=
.seq NamedBody702_51 NamedBody702_64

def NamedBody702_66 : StackLang.HolProg 64 :=
.seq NamedBody702_50 NamedBody702_65

def NamedBody702_67 : StackLang.HolProg 64 :=
.seq NamedBody702_49 NamedBody702_66

def NamedBody702_68 : StackLang.HolProg 64 :=
.seq NamedBody702_20 NamedBody702_67

def NamedBody702_69 : StackLang.HolProg 64 :=
.seq NamedBody702_17 NamedBody702_68

def NamedBody702_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody702_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3140#64)

def NamedBody702_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_76 : StackLang.HolProg 64 :=
.seq NamedBody702_74 NamedBody702_75

def NamedBody702_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody702_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody702_80 : StackLang.HolProg 64 :=
.seq NamedBody702_78 NamedBody702_79

def NamedBody702_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody702_80 NamedBody702_81

def NamedBody702_83 : StackLang.HolProg 64 :=
.seq NamedBody702_77 NamedBody702_82

def NamedBody702_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody702_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 5

def NamedBody702_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody702_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody702_93 : StackLang.HolProg 64 :=
.seq NamedBody702_91 NamedBody702_92

def NamedBody702_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody702_95 : StackLang.HolProg 64 :=
.seq NamedBody702_93 NamedBody702_94

def NamedBody702_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_97 : StackLang.HolProg 64 :=
.seq NamedBody702_95 NamedBody702_96

def NamedBody702_98 : StackLang.HolProg 64 :=
.seq NamedBody702_90 NamedBody702_97

def NamedBody702_99 : StackLang.HolProg 64 :=
.seq NamedBody702_89 NamedBody702_98

def NamedBody702_100 : StackLang.HolProg 64 :=
.seq NamedBody702_88 NamedBody702_99

def NamedBody702_101 : StackLang.HolProg 64 :=
.seq NamedBody702_87 NamedBody702_100

def NamedBody702_102 : StackLang.HolProg 64 :=
.seq NamedBody702_86 NamedBody702_101

def NamedBody702_103 : StackLang.HolProg 64 :=
.seq NamedBody702_85 NamedBody702_102

def NamedBody702_104 : StackLang.HolProg 64 :=
.seq NamedBody702_84 NamedBody702_103

def NamedBody702_105 : StackLang.HolProg 64 :=
.seq NamedBody702_83 NamedBody702_104

def NamedBody702_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody702_113 : StackLang.HolProg 64 :=
.seq NamedBody702_111 NamedBody702_112

def NamedBody702_114 : StackLang.HolProg 64 :=
.seq NamedBody702_110 NamedBody702_113

def NamedBody702_115 : StackLang.HolProg 64 :=
.seq NamedBody702_109 NamedBody702_114

def NamedBody702_116 : StackLang.HolProg 64 :=
.seq NamedBody702_108 NamedBody702_115

def NamedBody702_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody702_119 : StackLang.HolProg 64 :=
.seq NamedBody702_117 NamedBody702_118

def NamedBody702_120 : StackLang.HolProg 64 :=
.call (some (NamedBody702_116, 1, 702, 4)) (Sum.inl 68) (some (NamedBody702_119, 702, 5))

def NamedBody702_121 : StackLang.HolProg 64 :=
.seq NamedBody702_107 NamedBody702_120

def NamedBody702_122 : StackLang.HolProg 64 :=
.seq NamedBody702_106 NamedBody702_121

def NamedBody702_123 : StackLang.HolProg 64 :=
.seq NamedBody702_105 NamedBody702_122

def NamedBody702_124 : StackLang.HolProg 64 :=
.seq NamedBody702_76 NamedBody702_123

def NamedBody702_125 : StackLang.HolProg 64 :=
.seq NamedBody702_73 NamedBody702_124

def NamedBody702_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody702_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3141#64)

def NamedBody702_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_131 : StackLang.HolProg 64 :=
.seq NamedBody702_129 NamedBody702_130

def NamedBody702_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody702_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody702_135 : StackLang.HolProg 64 :=
.seq NamedBody702_133 NamedBody702_134

def NamedBody702_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody702_135 NamedBody702_136

def NamedBody702_138 : StackLang.HolProg 64 :=
.seq NamedBody702_132 NamedBody702_137

def NamedBody702_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody702_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 7

def NamedBody702_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody702_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody702_148 : StackLang.HolProg 64 :=
.seq NamedBody702_146 NamedBody702_147

def NamedBody702_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody702_150 : StackLang.HolProg 64 :=
.seq NamedBody702_148 NamedBody702_149

def NamedBody702_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_152 : StackLang.HolProg 64 :=
.seq NamedBody702_150 NamedBody702_151

def NamedBody702_153 : StackLang.HolProg 64 :=
.seq NamedBody702_145 NamedBody702_152

def NamedBody702_154 : StackLang.HolProg 64 :=
.seq NamedBody702_144 NamedBody702_153

def NamedBody702_155 : StackLang.HolProg 64 :=
.seq NamedBody702_143 NamedBody702_154

def NamedBody702_156 : StackLang.HolProg 64 :=
.seq NamedBody702_142 NamedBody702_155

def NamedBody702_157 : StackLang.HolProg 64 :=
.seq NamedBody702_141 NamedBody702_156

def NamedBody702_158 : StackLang.HolProg 64 :=
.seq NamedBody702_140 NamedBody702_157

def NamedBody702_159 : StackLang.HolProg 64 :=
.seq NamedBody702_139 NamedBody702_158

def NamedBody702_160 : StackLang.HolProg 64 :=
.seq NamedBody702_138 NamedBody702_159

def NamedBody702_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody702_168 : StackLang.HolProg 64 :=
.seq NamedBody702_166 NamedBody702_167

def NamedBody702_169 : StackLang.HolProg 64 :=
.seq NamedBody702_165 NamedBody702_168

def NamedBody702_170 : StackLang.HolProg 64 :=
.seq NamedBody702_164 NamedBody702_169

def NamedBody702_171 : StackLang.HolProg 64 :=
.seq NamedBody702_163 NamedBody702_170

def NamedBody702_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody702_174 : StackLang.HolProg 64 :=
.seq NamedBody702_172 NamedBody702_173

def NamedBody702_175 : StackLang.HolProg 64 :=
.call (some (NamedBody702_171, 1, 702, 6)) (Sum.inl 69) (some (NamedBody702_174, 702, 7))

def NamedBody702_176 : StackLang.HolProg 64 :=
.seq NamedBody702_162 NamedBody702_175

def NamedBody702_177 : StackLang.HolProg 64 :=
.seq NamedBody702_161 NamedBody702_176

def NamedBody702_178 : StackLang.HolProg 64 :=
.seq NamedBody702_160 NamedBody702_177

def NamedBody702_179 : StackLang.HolProg 64 :=
.seq NamedBody702_131 NamedBody702_178

def NamedBody702_180 : StackLang.HolProg 64 :=
.seq NamedBody702_128 NamedBody702_179

def NamedBody702_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody702_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3142#64)

def NamedBody702_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_187 : StackLang.HolProg 64 :=
.seq NamedBody702_185 NamedBody702_186

def NamedBody702_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody702_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody702_191 : StackLang.HolProg 64 :=
.seq NamedBody702_189 NamedBody702_190

def NamedBody702_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody702_191 NamedBody702_192

def NamedBody702_194 : StackLang.HolProg 64 :=
.seq NamedBody702_188 NamedBody702_193

def NamedBody702_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody702_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 9

def NamedBody702_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody702_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody702_204 : StackLang.HolProg 64 :=
.seq NamedBody702_202 NamedBody702_203

def NamedBody702_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody702_206 : StackLang.HolProg 64 :=
.seq NamedBody702_204 NamedBody702_205

def NamedBody702_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_208 : StackLang.HolProg 64 :=
.seq NamedBody702_206 NamedBody702_207

def NamedBody702_209 : StackLang.HolProg 64 :=
.seq NamedBody702_201 NamedBody702_208

def NamedBody702_210 : StackLang.HolProg 64 :=
.seq NamedBody702_200 NamedBody702_209

def NamedBody702_211 : StackLang.HolProg 64 :=
.seq NamedBody702_199 NamedBody702_210

def NamedBody702_212 : StackLang.HolProg 64 :=
.seq NamedBody702_198 NamedBody702_211

def NamedBody702_213 : StackLang.HolProg 64 :=
.seq NamedBody702_197 NamedBody702_212

def NamedBody702_214 : StackLang.HolProg 64 :=
.seq NamedBody702_196 NamedBody702_213

def NamedBody702_215 : StackLang.HolProg 64 :=
.seq NamedBody702_195 NamedBody702_214

def NamedBody702_216 : StackLang.HolProg 64 :=
.seq NamedBody702_194 NamedBody702_215

def NamedBody702_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody702_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_225 : StackLang.HolProg 64 :=
.seq NamedBody702_223 NamedBody702_224

def NamedBody702_226 : StackLang.HolProg 64 :=
.seq NamedBody702_222 NamedBody702_225

def NamedBody702_227 : StackLang.HolProg 64 :=
.seq NamedBody702_221 NamedBody702_226

def NamedBody702_228 : StackLang.HolProg 64 :=
.seq NamedBody702_220 NamedBody702_227

def NamedBody702_229 : StackLang.HolProg 64 :=
.seq NamedBody702_219 NamedBody702_228

def NamedBody702_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody702_232 : StackLang.HolProg 64 :=
.seq NamedBody702_230 NamedBody702_231

def NamedBody702_233 : StackLang.HolProg 64 :=
.call (some (NamedBody702_229, 1, 702, 8)) (Sum.inl 68) (some (NamedBody702_232, 702, 9))

def NamedBody702_234 : StackLang.HolProg 64 :=
.seq NamedBody702_218 NamedBody702_233

def NamedBody702_235 : StackLang.HolProg 64 :=
.seq NamedBody702_217 NamedBody702_234

def NamedBody702_236 : StackLang.HolProg 64 :=
.seq NamedBody702_216 NamedBody702_235

def NamedBody702_237 : StackLang.HolProg 64 :=
.seq NamedBody702_187 NamedBody702_236

def NamedBody702_238 : StackLang.HolProg 64 :=
.seq NamedBody702_184 NamedBody702_237

def NamedBody702_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def NamedBody702_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 96#64))

def NamedBody702_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 96#64)

def NamedBody702_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody702_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3143#64)

def NamedBody702_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_251 : StackLang.HolProg 64 :=
.seq NamedBody702_249 NamedBody702_250

def NamedBody702_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody702_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody702_255 : StackLang.HolProg 64 :=
.seq NamedBody702_253 NamedBody702_254

def NamedBody702_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_257 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody702_255 NamedBody702_256

def NamedBody702_258 : StackLang.HolProg 64 :=
.seq NamedBody702_252 NamedBody702_257

def NamedBody702_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody702_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 11

def NamedBody702_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody702_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody702_268 : StackLang.HolProg 64 :=
.seq NamedBody702_266 NamedBody702_267

def NamedBody702_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody702_270 : StackLang.HolProg 64 :=
.seq NamedBody702_268 NamedBody702_269

def NamedBody702_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_272 : StackLang.HolProg 64 :=
.seq NamedBody702_270 NamedBody702_271

def NamedBody702_273 : StackLang.HolProg 64 :=
.seq NamedBody702_265 NamedBody702_272

def NamedBody702_274 : StackLang.HolProg 64 :=
.seq NamedBody702_264 NamedBody702_273

def NamedBody702_275 : StackLang.HolProg 64 :=
.seq NamedBody702_263 NamedBody702_274

def NamedBody702_276 : StackLang.HolProg 64 :=
.seq NamedBody702_262 NamedBody702_275

def NamedBody702_277 : StackLang.HolProg 64 :=
.seq NamedBody702_261 NamedBody702_276

def NamedBody702_278 : StackLang.HolProg 64 :=
.seq NamedBody702_260 NamedBody702_277

def NamedBody702_279 : StackLang.HolProg 64 :=
.seq NamedBody702_259 NamedBody702_278

def NamedBody702_280 : StackLang.HolProg 64 :=
.seq NamedBody702_258 NamedBody702_279

def NamedBody702_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody702_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_289 : StackLang.HolProg 64 :=
.seq NamedBody702_287 NamedBody702_288

def NamedBody702_290 : StackLang.HolProg 64 :=
.seq NamedBody702_286 NamedBody702_289

def NamedBody702_291 : StackLang.HolProg 64 :=
.seq NamedBody702_285 NamedBody702_290

def NamedBody702_292 : StackLang.HolProg 64 :=
.seq NamedBody702_284 NamedBody702_291

def NamedBody702_293 : StackLang.HolProg 64 :=
.seq NamedBody702_283 NamedBody702_292

def NamedBody702_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody702_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_296 : StackLang.HolProg 64 :=
.seq NamedBody702_294 NamedBody702_295

def NamedBody702_297 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody702_298 : StackLang.HolProg 64 :=
.seq NamedBody702_296 NamedBody702_297

def NamedBody702_299 : StackLang.HolProg 64 :=
.call (some (NamedBody702_293, 1, 702, 10)) (Sum.inl 484) (some (NamedBody702_298, 702, 11))

def NamedBody702_300 : StackLang.HolProg 64 :=
.seq NamedBody702_282 NamedBody702_299

def NamedBody702_301 : StackLang.HolProg 64 :=
.seq NamedBody702_281 NamedBody702_300

def NamedBody702_302 : StackLang.HolProg 64 :=
.seq NamedBody702_280 NamedBody702_301

def NamedBody702_303 : StackLang.HolProg 64 :=
.seq NamedBody702_251 NamedBody702_302

def NamedBody702_304 : StackLang.HolProg 64 :=
.seq NamedBody702_248 NamedBody702_303

def NamedBody702_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody702_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody702_308 : StackLang.HolProg 64 :=
.seq NamedBody702_306 NamedBody702_307

def NamedBody702_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3144#64)

def NamedBody702_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_312 : StackLang.HolProg 64 :=
.seq NamedBody702_310 NamedBody702_311

def NamedBody702_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody702_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody702_316 : StackLang.HolProg 64 :=
.seq NamedBody702_314 NamedBody702_315

def NamedBody702_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_318 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody702_316 NamedBody702_317

def NamedBody702_319 : StackLang.HolProg 64 :=
.seq NamedBody702_313 NamedBody702_318

def NamedBody702_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody702_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 13

def NamedBody702_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody702_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody702_329 : StackLang.HolProg 64 :=
.seq NamedBody702_327 NamedBody702_328

def NamedBody702_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody702_331 : StackLang.HolProg 64 :=
.seq NamedBody702_329 NamedBody702_330

def NamedBody702_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_333 : StackLang.HolProg 64 :=
.seq NamedBody702_331 NamedBody702_332

def NamedBody702_334 : StackLang.HolProg 64 :=
.seq NamedBody702_326 NamedBody702_333

def NamedBody702_335 : StackLang.HolProg 64 :=
.seq NamedBody702_325 NamedBody702_334

def NamedBody702_336 : StackLang.HolProg 64 :=
.seq NamedBody702_324 NamedBody702_335

def NamedBody702_337 : StackLang.HolProg 64 :=
.seq NamedBody702_323 NamedBody702_336

def NamedBody702_338 : StackLang.HolProg 64 :=
.seq NamedBody702_322 NamedBody702_337

def NamedBody702_339 : StackLang.HolProg 64 :=
.seq NamedBody702_321 NamedBody702_338

def NamedBody702_340 : StackLang.HolProg 64 :=
.seq NamedBody702_320 NamedBody702_339

def NamedBody702_341 : StackLang.HolProg 64 :=
.seq NamedBody702_319 NamedBody702_340

def NamedBody702_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody702_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_350 : StackLang.HolProg 64 :=
.seq NamedBody702_348 NamedBody702_349

def NamedBody702_351 : StackLang.HolProg 64 :=
.seq NamedBody702_347 NamedBody702_350

def NamedBody702_352 : StackLang.HolProg 64 :=
.seq NamedBody702_346 NamedBody702_351

def NamedBody702_353 : StackLang.HolProg 64 :=
.seq NamedBody702_345 NamedBody702_352

def NamedBody702_354 : StackLang.HolProg 64 :=
.seq NamedBody702_344 NamedBody702_353

def NamedBody702_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody702_357 : StackLang.HolProg 64 :=
.seq NamedBody702_355 NamedBody702_356

def NamedBody702_358 : StackLang.HolProg 64 :=
.call (some (NamedBody702_354, 1, 702, 12)) (Sum.inl 699) (some (NamedBody702_357, 702, 13))

def NamedBody702_359 : StackLang.HolProg 64 :=
.seq NamedBody702_343 NamedBody702_358

def NamedBody702_360 : StackLang.HolProg 64 :=
.seq NamedBody702_342 NamedBody702_359

def NamedBody702_361 : StackLang.HolProg 64 :=
.seq NamedBody702_341 NamedBody702_360

def NamedBody702_362 : StackLang.HolProg 64 :=
.seq NamedBody702_312 NamedBody702_361

def NamedBody702_363 : StackLang.HolProg 64 :=
.seq NamedBody702_309 NamedBody702_362

def NamedBody702_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody702_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_367 : StackLang.HolProg 64 :=
.seq NamedBody702_365 NamedBody702_366

def NamedBody702_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3145#64)

def NamedBody702_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_371 : StackLang.HolProg 64 :=
.seq NamedBody702_369 NamedBody702_370

def NamedBody702_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody702_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody702_375 : StackLang.HolProg 64 :=
.seq NamedBody702_373 NamedBody702_374

def NamedBody702_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody702_375 NamedBody702_376

def NamedBody702_378 : StackLang.HolProg 64 :=
.seq NamedBody702_372 NamedBody702_377

def NamedBody702_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody702_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody702_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 15

def NamedBody702_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody702_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody702_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody702_388 : StackLang.HolProg 64 :=
.seq NamedBody702_386 NamedBody702_387

def NamedBody702_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody702_390 : StackLang.HolProg 64 :=
.seq NamedBody702_388 NamedBody702_389

def NamedBody702_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_392 : StackLang.HolProg 64 :=
.seq NamedBody702_390 NamedBody702_391

def NamedBody702_393 : StackLang.HolProg 64 :=
.seq NamedBody702_385 NamedBody702_392

def NamedBody702_394 : StackLang.HolProg 64 :=
.seq NamedBody702_384 NamedBody702_393

def NamedBody702_395 : StackLang.HolProg 64 :=
.seq NamedBody702_383 NamedBody702_394

def NamedBody702_396 : StackLang.HolProg 64 :=
.seq NamedBody702_382 NamedBody702_395

def NamedBody702_397 : StackLang.HolProg 64 :=
.seq NamedBody702_381 NamedBody702_396

def NamedBody702_398 : StackLang.HolProg 64 :=
.seq NamedBody702_380 NamedBody702_397

def NamedBody702_399 : StackLang.HolProg 64 :=
.seq NamedBody702_379 NamedBody702_398

def NamedBody702_400 : StackLang.HolProg 64 :=
.seq NamedBody702_378 NamedBody702_399

def NamedBody702_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody702_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody702_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody702_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody702_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_410 : StackLang.HolProg 64 :=
.seq NamedBody702_408 NamedBody702_409

def NamedBody702_411 : StackLang.HolProg 64 :=
.seq NamedBody702_407 NamedBody702_410

def NamedBody702_412 : StackLang.HolProg 64 :=
.seq NamedBody702_406 NamedBody702_411

def NamedBody702_413 : StackLang.HolProg 64 :=
.seq NamedBody702_405 NamedBody702_412

def NamedBody702_414 : StackLang.HolProg 64 :=
.seq NamedBody702_404 NamedBody702_413

def NamedBody702_415 : StackLang.HolProg 64 :=
.seq NamedBody702_403 NamedBody702_414

def NamedBody702_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody702_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody702_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody702_419 : StackLang.HolProg 64 :=
.seq NamedBody702_417 NamedBody702_418

def NamedBody702_420 : StackLang.HolProg 64 :=
.seq NamedBody702_416 NamedBody702_419

def NamedBody702_421 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody702_422 : StackLang.HolProg 64 :=
.seq NamedBody702_420 NamedBody702_421

def NamedBody702_423 : StackLang.HolProg 64 :=
.call (some (NamedBody702_415, 1, 702, 14)) (Sum.inl 70) (some (NamedBody702_422, 702, 15))

def NamedBody702_424 : StackLang.HolProg 64 :=
.seq NamedBody702_402 NamedBody702_423

def NamedBody702_425 : StackLang.HolProg 64 :=
.seq NamedBody702_401 NamedBody702_424

def NamedBody702_426 : StackLang.HolProg 64 :=
.seq NamedBody702_400 NamedBody702_425

def NamedBody702_427 : StackLang.HolProg 64 :=
.seq NamedBody702_371 NamedBody702_426

def NamedBody702_428 : StackLang.HolProg 64 :=
.seq NamedBody702_368 NamedBody702_427

def NamedBody702_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody702_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def NamedBody702_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody702_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody702_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_438 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody702_439 : StackLang.HolProg 64 :=
.seq NamedBody702_437 NamedBody702_438

def NamedBody702_440 : StackLang.HolProg 64 :=
.seq NamedBody702_436 NamedBody702_439

def NamedBody702_441 : StackLang.HolProg 64 :=
.seq NamedBody702_435 NamedBody702_440

def NamedBody702_442 : StackLang.HolProg 64 :=
.seq NamedBody702_434 NamedBody702_441

def NamedBody702_443 : StackLang.HolProg 64 :=
.seq NamedBody702_433 NamedBody702_442

def NamedBody702_444 : StackLang.HolProg 64 :=
.seq NamedBody702_432 NamedBody702_443

def NamedBody702_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_446 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody702_444 NamedBody702_445

def NamedBody702_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody702_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody702_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody702_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody702_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody702_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody702_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody702_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody702_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody702_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody702_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody702_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody702_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody702_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody702_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody702_466 : StackLang.HolProg 64 :=
.seq NamedBody702_464 NamedBody702_465

def NamedBody702_467 : StackLang.HolProg 64 :=
.seq NamedBody702_463 NamedBody702_466

def NamedBody702_468 : StackLang.HolProg 64 :=
.seq NamedBody702_462 NamedBody702_467

def NamedBody702_469 : StackLang.HolProg 64 :=
.seq NamedBody702_461 NamedBody702_468

def NamedBody702_470 : StackLang.HolProg 64 :=
.seq NamedBody702_460 NamedBody702_469

def NamedBody702_471 : StackLang.HolProg 64 :=
.seq NamedBody702_459 NamedBody702_470

def NamedBody702_472 : StackLang.HolProg 64 :=
.seq NamedBody702_458 NamedBody702_471

def NamedBody702_473 : StackLang.HolProg 64 :=
.seq NamedBody702_457 NamedBody702_472

def NamedBody702_474 : StackLang.HolProg 64 :=
.seq NamedBody702_456 NamedBody702_473

def NamedBody702_475 : StackLang.HolProg 64 :=
.seq NamedBody702_455 NamedBody702_474

def NamedBody702_476 : StackLang.HolProg 64 :=
.seq NamedBody702_454 NamedBody702_475

def NamedBody702_477 : StackLang.HolProg 64 :=
.seq NamedBody702_453 NamedBody702_476

def NamedBody702_478 : StackLang.HolProg 64 :=
.seq NamedBody702_452 NamedBody702_477

def NamedBody702_479 : StackLang.HolProg 64 :=
.seq NamedBody702_451 NamedBody702_478

def NamedBody702_480 : StackLang.HolProg 64 :=
.seq NamedBody702_450 NamedBody702_479

def NamedBody702_481 : StackLang.HolProg 64 :=
.seq NamedBody702_449 NamedBody702_480

def NamedBody702_482 : StackLang.HolProg 64 :=
.seq NamedBody702_448 NamedBody702_481

def NamedBody702_483 : StackLang.HolProg 64 :=
.seq NamedBody702_447 NamedBody702_482

def NamedBody702_484 : StackLang.HolProg 64 :=
.seq NamedBody702_446 NamedBody702_483

def NamedBody702_485 : StackLang.HolProg 64 :=
.seq NamedBody702_431 NamedBody702_484

def NamedBody702_486 : StackLang.HolProg 64 :=
.seq NamedBody702_430 NamedBody702_485

def NamedBody702_487 : StackLang.HolProg 64 :=
.seq NamedBody702_429 NamedBody702_486

def NamedBody702_488 : StackLang.HolProg 64 :=
.seq NamedBody702_428 NamedBody702_487

def NamedBody702_489 : StackLang.HolProg 64 :=
.seq NamedBody702_367 NamedBody702_488

def NamedBody702_490 : StackLang.HolProg 64 :=
.seq NamedBody702_364 NamedBody702_489

def NamedBody702_491 : StackLang.HolProg 64 :=
.seq NamedBody702_363 NamedBody702_490

def NamedBody702_492 : StackLang.HolProg 64 :=
.seq NamedBody702_308 NamedBody702_491

def NamedBody702_493 : StackLang.HolProg 64 :=
.seq NamedBody702_305 NamedBody702_492

def NamedBody702_494 : StackLang.HolProg 64 :=
.seq NamedBody702_304 NamedBody702_493

def NamedBody702_495 : StackLang.HolProg 64 :=
.seq NamedBody702_247 NamedBody702_494

def NamedBody702_496 : StackLang.HolProg 64 :=
.seq NamedBody702_246 NamedBody702_495

def NamedBody702_497 : StackLang.HolProg 64 :=
.seq NamedBody702_245 NamedBody702_496

def NamedBody702_498 : StackLang.HolProg 64 :=
.seq NamedBody702_244 NamedBody702_497

def NamedBody702_499 : StackLang.HolProg 64 :=
.seq NamedBody702_243 NamedBody702_498

def NamedBody702_500 : StackLang.HolProg 64 :=
.seq NamedBody702_242 NamedBody702_499

def NamedBody702_501 : StackLang.HolProg 64 :=
.seq NamedBody702_241 NamedBody702_500

def NamedBody702_502 : StackLang.HolProg 64 :=
.seq NamedBody702_240 NamedBody702_501

def NamedBody702_503 : StackLang.HolProg 64 :=
.seq NamedBody702_239 NamedBody702_502

def NamedBody702_504 : StackLang.HolProg 64 :=
.seq NamedBody702_238 NamedBody702_503

def NamedBody702_505 : StackLang.HolProg 64 :=
.seq NamedBody702_183 NamedBody702_504

def NamedBody702_506 : StackLang.HolProg 64 :=
.seq NamedBody702_182 NamedBody702_505

def NamedBody702_507 : StackLang.HolProg 64 :=
.seq NamedBody702_181 NamedBody702_506

def NamedBody702_508 : StackLang.HolProg 64 :=
.seq NamedBody702_180 NamedBody702_507

def NamedBody702_509 : StackLang.HolProg 64 :=
.seq NamedBody702_127 NamedBody702_508

def NamedBody702_510 : StackLang.HolProg 64 :=
.seq NamedBody702_126 NamedBody702_509

def NamedBody702_511 : StackLang.HolProg 64 :=
.seq NamedBody702_125 NamedBody702_510

def NamedBody702_512 : StackLang.HolProg 64 :=
.seq NamedBody702_72 NamedBody702_511

def NamedBody702_513 : StackLang.HolProg 64 :=
.seq NamedBody702_71 NamedBody702_512

def NamedBody702_514 : StackLang.HolProg 64 :=
.seq NamedBody702_70 NamedBody702_513

def NamedBody702_515 : StackLang.HolProg 64 :=
.seq NamedBody702_69 NamedBody702_514

def NamedBody702_516 : StackLang.HolProg 64 :=
.seq NamedBody702_16 NamedBody702_515

def NamedBody702_517 : StackLang.HolProg 64 :=
.seq NamedBody702_13 NamedBody702_516

def NamedBody702_518 : StackLang.HolProg 64 :=
.seq NamedBody702_12 NamedBody702_517

def NamedBody702_519 : StackLang.HolProg 64 :=
.seq NamedBody702_11 NamedBody702_518

def NamedBody702_520 : StackLang.HolProg 64 :=
.seq NamedBody702_10 NamedBody702_519

def NamedBody702_521 : StackLang.HolProg 64 :=
.seq NamedBody702_9 NamedBody702_520

def NamedBody702_522 : StackLang.HolProg 64 :=
.seq NamedBody702_8 NamedBody702_521

def NamedBody702_523 : StackLang.HolProg 64 :=
.seq NamedBody702_7 NamedBody702_522

def NamedBody702_524 : StackLang.HolProg 64 :=
.seq NamedBody702_6 NamedBody702_523

def Named702 : Nat × StackLang.HolProg 64 := (702, NamedBody702_524)
theorem Named702_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed702 = Named702 := by
  kernel_rfl
#print axioms Named702_eq
end InitECandidate.Proofs.BackendStages
