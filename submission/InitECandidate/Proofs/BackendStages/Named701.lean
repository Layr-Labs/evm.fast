import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed701
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody701_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody701_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody701_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody701_3 : StackLang.HolProg 64 :=
.seq NamedBody701_1 NamedBody701_2

def NamedBody701_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody701_3 NamedBody701_4

def NamedBody701_6 : StackLang.HolProg 64 :=
.seq NamedBody701_0 NamedBody701_5

def NamedBody701_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody701_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody701_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody701_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody701_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody701_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 150#64)

def NamedBody701_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody701_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_16 : StackLang.HolProg 64 :=
.seq NamedBody701_14 NamedBody701_15

def NamedBody701_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3132#64)

def NamedBody701_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_20 : StackLang.HolProg 64 :=
.seq NamedBody701_18 NamedBody701_19

def NamedBody701_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody701_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody701_24 : StackLang.HolProg 64 :=
.seq NamedBody701_22 NamedBody701_23

def NamedBody701_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody701_24 NamedBody701_25

def NamedBody701_27 : StackLang.HolProg 64 :=
.seq NamedBody701_21 NamedBody701_26

def NamedBody701_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody701_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 3

def NamedBody701_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody701_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody701_37 : StackLang.HolProg 64 :=
.seq NamedBody701_35 NamedBody701_36

def NamedBody701_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody701_39 : StackLang.HolProg 64 :=
.seq NamedBody701_37 NamedBody701_38

def NamedBody701_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_41 : StackLang.HolProg 64 :=
.seq NamedBody701_39 NamedBody701_40

def NamedBody701_42 : StackLang.HolProg 64 :=
.seq NamedBody701_34 NamedBody701_41

def NamedBody701_43 : StackLang.HolProg 64 :=
.seq NamedBody701_33 NamedBody701_42

def NamedBody701_44 : StackLang.HolProg 64 :=
.seq NamedBody701_32 NamedBody701_43

def NamedBody701_45 : StackLang.HolProg 64 :=
.seq NamedBody701_31 NamedBody701_44

def NamedBody701_46 : StackLang.HolProg 64 :=
.seq NamedBody701_30 NamedBody701_45

def NamedBody701_47 : StackLang.HolProg 64 :=
.seq NamedBody701_29 NamedBody701_46

def NamedBody701_48 : StackLang.HolProg 64 :=
.seq NamedBody701_28 NamedBody701_47

def NamedBody701_49 : StackLang.HolProg 64 :=
.seq NamedBody701_27 NamedBody701_48

def NamedBody701_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_57 : StackLang.HolProg 64 :=
.seq NamedBody701_55 NamedBody701_56

def NamedBody701_58 : StackLang.HolProg 64 :=
.seq NamedBody701_54 NamedBody701_57

def NamedBody701_59 : StackLang.HolProg 64 :=
.seq NamedBody701_53 NamedBody701_58

def NamedBody701_60 : StackLang.HolProg 64 :=
.seq NamedBody701_52 NamedBody701_59

def NamedBody701_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody701_63 : StackLang.HolProg 64 :=
.seq NamedBody701_61 NamedBody701_62

def NamedBody701_64 : StackLang.HolProg 64 :=
.call (some (NamedBody701_60, 1, 701, 2)) (Sum.inl 470) (some (NamedBody701_63, 701, 3))

def NamedBody701_65 : StackLang.HolProg 64 :=
.seq NamedBody701_51 NamedBody701_64

def NamedBody701_66 : StackLang.HolProg 64 :=
.seq NamedBody701_50 NamedBody701_65

def NamedBody701_67 : StackLang.HolProg 64 :=
.seq NamedBody701_49 NamedBody701_66

def NamedBody701_68 : StackLang.HolProg 64 :=
.seq NamedBody701_20 NamedBody701_67

def NamedBody701_69 : StackLang.HolProg 64 :=
.seq NamedBody701_17 NamedBody701_68

def NamedBody701_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody701_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3133#64)

def NamedBody701_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_76 : StackLang.HolProg 64 :=
.seq NamedBody701_74 NamedBody701_75

def NamedBody701_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody701_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody701_80 : StackLang.HolProg 64 :=
.seq NamedBody701_78 NamedBody701_79

def NamedBody701_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody701_80 NamedBody701_81

def NamedBody701_83 : StackLang.HolProg 64 :=
.seq NamedBody701_77 NamedBody701_82

def NamedBody701_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody701_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 5

def NamedBody701_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody701_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody701_93 : StackLang.HolProg 64 :=
.seq NamedBody701_91 NamedBody701_92

def NamedBody701_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody701_95 : StackLang.HolProg 64 :=
.seq NamedBody701_93 NamedBody701_94

def NamedBody701_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_97 : StackLang.HolProg 64 :=
.seq NamedBody701_95 NamedBody701_96

def NamedBody701_98 : StackLang.HolProg 64 :=
.seq NamedBody701_90 NamedBody701_97

def NamedBody701_99 : StackLang.HolProg 64 :=
.seq NamedBody701_89 NamedBody701_98

def NamedBody701_100 : StackLang.HolProg 64 :=
.seq NamedBody701_88 NamedBody701_99

def NamedBody701_101 : StackLang.HolProg 64 :=
.seq NamedBody701_87 NamedBody701_100

def NamedBody701_102 : StackLang.HolProg 64 :=
.seq NamedBody701_86 NamedBody701_101

def NamedBody701_103 : StackLang.HolProg 64 :=
.seq NamedBody701_85 NamedBody701_102

def NamedBody701_104 : StackLang.HolProg 64 :=
.seq NamedBody701_84 NamedBody701_103

def NamedBody701_105 : StackLang.HolProg 64 :=
.seq NamedBody701_83 NamedBody701_104

def NamedBody701_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody701_113 : StackLang.HolProg 64 :=
.seq NamedBody701_111 NamedBody701_112

def NamedBody701_114 : StackLang.HolProg 64 :=
.seq NamedBody701_110 NamedBody701_113

def NamedBody701_115 : StackLang.HolProg 64 :=
.seq NamedBody701_109 NamedBody701_114

def NamedBody701_116 : StackLang.HolProg 64 :=
.seq NamedBody701_108 NamedBody701_115

def NamedBody701_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody701_119 : StackLang.HolProg 64 :=
.seq NamedBody701_117 NamedBody701_118

def NamedBody701_120 : StackLang.HolProg 64 :=
.call (some (NamedBody701_116, 1, 701, 4)) (Sum.inl 68) (some (NamedBody701_119, 701, 5))

def NamedBody701_121 : StackLang.HolProg 64 :=
.seq NamedBody701_107 NamedBody701_120

def NamedBody701_122 : StackLang.HolProg 64 :=
.seq NamedBody701_106 NamedBody701_121

def NamedBody701_123 : StackLang.HolProg 64 :=
.seq NamedBody701_105 NamedBody701_122

def NamedBody701_124 : StackLang.HolProg 64 :=
.seq NamedBody701_76 NamedBody701_123

def NamedBody701_125 : StackLang.HolProg 64 :=
.seq NamedBody701_73 NamedBody701_124

def NamedBody701_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody701_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3134#64)

def NamedBody701_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_131 : StackLang.HolProg 64 :=
.seq NamedBody701_129 NamedBody701_130

def NamedBody701_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody701_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody701_135 : StackLang.HolProg 64 :=
.seq NamedBody701_133 NamedBody701_134

def NamedBody701_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody701_135 NamedBody701_136

def NamedBody701_138 : StackLang.HolProg 64 :=
.seq NamedBody701_132 NamedBody701_137

def NamedBody701_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody701_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 7

def NamedBody701_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody701_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody701_148 : StackLang.HolProg 64 :=
.seq NamedBody701_146 NamedBody701_147

def NamedBody701_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody701_150 : StackLang.HolProg 64 :=
.seq NamedBody701_148 NamedBody701_149

def NamedBody701_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_152 : StackLang.HolProg 64 :=
.seq NamedBody701_150 NamedBody701_151

def NamedBody701_153 : StackLang.HolProg 64 :=
.seq NamedBody701_145 NamedBody701_152

def NamedBody701_154 : StackLang.HolProg 64 :=
.seq NamedBody701_144 NamedBody701_153

def NamedBody701_155 : StackLang.HolProg 64 :=
.seq NamedBody701_143 NamedBody701_154

def NamedBody701_156 : StackLang.HolProg 64 :=
.seq NamedBody701_142 NamedBody701_155

def NamedBody701_157 : StackLang.HolProg 64 :=
.seq NamedBody701_141 NamedBody701_156

def NamedBody701_158 : StackLang.HolProg 64 :=
.seq NamedBody701_140 NamedBody701_157

def NamedBody701_159 : StackLang.HolProg 64 :=
.seq NamedBody701_139 NamedBody701_158

def NamedBody701_160 : StackLang.HolProg 64 :=
.seq NamedBody701_138 NamedBody701_159

def NamedBody701_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody701_168 : StackLang.HolProg 64 :=
.seq NamedBody701_166 NamedBody701_167

def NamedBody701_169 : StackLang.HolProg 64 :=
.seq NamedBody701_165 NamedBody701_168

def NamedBody701_170 : StackLang.HolProg 64 :=
.seq NamedBody701_164 NamedBody701_169

def NamedBody701_171 : StackLang.HolProg 64 :=
.seq NamedBody701_163 NamedBody701_170

def NamedBody701_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody701_174 : StackLang.HolProg 64 :=
.seq NamedBody701_172 NamedBody701_173

def NamedBody701_175 : StackLang.HolProg 64 :=
.call (some (NamedBody701_171, 1, 701, 6)) (Sum.inl 69) (some (NamedBody701_174, 701, 7))

def NamedBody701_176 : StackLang.HolProg 64 :=
.seq NamedBody701_162 NamedBody701_175

def NamedBody701_177 : StackLang.HolProg 64 :=
.seq NamedBody701_161 NamedBody701_176

def NamedBody701_178 : StackLang.HolProg 64 :=
.seq NamedBody701_160 NamedBody701_177

def NamedBody701_179 : StackLang.HolProg 64 :=
.seq NamedBody701_131 NamedBody701_178

def NamedBody701_180 : StackLang.HolProg 64 :=
.seq NamedBody701_128 NamedBody701_179

def NamedBody701_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody701_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3135#64)

def NamedBody701_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_187 : StackLang.HolProg 64 :=
.seq NamedBody701_185 NamedBody701_186

def NamedBody701_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody701_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody701_191 : StackLang.HolProg 64 :=
.seq NamedBody701_189 NamedBody701_190

def NamedBody701_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody701_191 NamedBody701_192

def NamedBody701_194 : StackLang.HolProg 64 :=
.seq NamedBody701_188 NamedBody701_193

def NamedBody701_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody701_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 9

def NamedBody701_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody701_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody701_204 : StackLang.HolProg 64 :=
.seq NamedBody701_202 NamedBody701_203

def NamedBody701_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody701_206 : StackLang.HolProg 64 :=
.seq NamedBody701_204 NamedBody701_205

def NamedBody701_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_208 : StackLang.HolProg 64 :=
.seq NamedBody701_206 NamedBody701_207

def NamedBody701_209 : StackLang.HolProg 64 :=
.seq NamedBody701_201 NamedBody701_208

def NamedBody701_210 : StackLang.HolProg 64 :=
.seq NamedBody701_200 NamedBody701_209

def NamedBody701_211 : StackLang.HolProg 64 :=
.seq NamedBody701_199 NamedBody701_210

def NamedBody701_212 : StackLang.HolProg 64 :=
.seq NamedBody701_198 NamedBody701_211

def NamedBody701_213 : StackLang.HolProg 64 :=
.seq NamedBody701_197 NamedBody701_212

def NamedBody701_214 : StackLang.HolProg 64 :=
.seq NamedBody701_196 NamedBody701_213

def NamedBody701_215 : StackLang.HolProg 64 :=
.seq NamedBody701_195 NamedBody701_214

def NamedBody701_216 : StackLang.HolProg 64 :=
.seq NamedBody701_194 NamedBody701_215

def NamedBody701_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody701_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_225 : StackLang.HolProg 64 :=
.seq NamedBody701_223 NamedBody701_224

def NamedBody701_226 : StackLang.HolProg 64 :=
.seq NamedBody701_222 NamedBody701_225

def NamedBody701_227 : StackLang.HolProg 64 :=
.seq NamedBody701_221 NamedBody701_226

def NamedBody701_228 : StackLang.HolProg 64 :=
.seq NamedBody701_220 NamedBody701_227

def NamedBody701_229 : StackLang.HolProg 64 :=
.seq NamedBody701_219 NamedBody701_228

def NamedBody701_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody701_232 : StackLang.HolProg 64 :=
.seq NamedBody701_230 NamedBody701_231

def NamedBody701_233 : StackLang.HolProg 64 :=
.call (some (NamedBody701_229, 1, 701, 8)) (Sum.inl 68) (some (NamedBody701_232, 701, 9))

def NamedBody701_234 : StackLang.HolProg 64 :=
.seq NamedBody701_218 NamedBody701_233

def NamedBody701_235 : StackLang.HolProg 64 :=
.seq NamedBody701_217 NamedBody701_234

def NamedBody701_236 : StackLang.HolProg 64 :=
.seq NamedBody701_216 NamedBody701_235

def NamedBody701_237 : StackLang.HolProg 64 :=
.seq NamedBody701_187 NamedBody701_236

def NamedBody701_238 : StackLang.HolProg 64 :=
.seq NamedBody701_184 NamedBody701_237

def NamedBody701_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def NamedBody701_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 96#64))

def NamedBody701_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 128#64)

def NamedBody701_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody701_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3136#64)

def NamedBody701_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_251 : StackLang.HolProg 64 :=
.seq NamedBody701_249 NamedBody701_250

def NamedBody701_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody701_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody701_255 : StackLang.HolProg 64 :=
.seq NamedBody701_253 NamedBody701_254

def NamedBody701_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_257 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody701_255 NamedBody701_256

def NamedBody701_258 : StackLang.HolProg 64 :=
.seq NamedBody701_252 NamedBody701_257

def NamedBody701_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody701_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 11

def NamedBody701_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody701_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody701_268 : StackLang.HolProg 64 :=
.seq NamedBody701_266 NamedBody701_267

def NamedBody701_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody701_270 : StackLang.HolProg 64 :=
.seq NamedBody701_268 NamedBody701_269

def NamedBody701_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_272 : StackLang.HolProg 64 :=
.seq NamedBody701_270 NamedBody701_271

def NamedBody701_273 : StackLang.HolProg 64 :=
.seq NamedBody701_265 NamedBody701_272

def NamedBody701_274 : StackLang.HolProg 64 :=
.seq NamedBody701_264 NamedBody701_273

def NamedBody701_275 : StackLang.HolProg 64 :=
.seq NamedBody701_263 NamedBody701_274

def NamedBody701_276 : StackLang.HolProg 64 :=
.seq NamedBody701_262 NamedBody701_275

def NamedBody701_277 : StackLang.HolProg 64 :=
.seq NamedBody701_261 NamedBody701_276

def NamedBody701_278 : StackLang.HolProg 64 :=
.seq NamedBody701_260 NamedBody701_277

def NamedBody701_279 : StackLang.HolProg 64 :=
.seq NamedBody701_259 NamedBody701_278

def NamedBody701_280 : StackLang.HolProg 64 :=
.seq NamedBody701_258 NamedBody701_279

def NamedBody701_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody701_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_289 : StackLang.HolProg 64 :=
.seq NamedBody701_287 NamedBody701_288

def NamedBody701_290 : StackLang.HolProg 64 :=
.seq NamedBody701_286 NamedBody701_289

def NamedBody701_291 : StackLang.HolProg 64 :=
.seq NamedBody701_285 NamedBody701_290

def NamedBody701_292 : StackLang.HolProg 64 :=
.seq NamedBody701_284 NamedBody701_291

def NamedBody701_293 : StackLang.HolProg 64 :=
.seq NamedBody701_283 NamedBody701_292

def NamedBody701_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody701_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_296 : StackLang.HolProg 64 :=
.seq NamedBody701_294 NamedBody701_295

def NamedBody701_297 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody701_298 : StackLang.HolProg 64 :=
.seq NamedBody701_296 NamedBody701_297

def NamedBody701_299 : StackLang.HolProg 64 :=
.call (some (NamedBody701_293, 1, 701, 10)) (Sum.inl 484) (some (NamedBody701_298, 701, 11))

def NamedBody701_300 : StackLang.HolProg 64 :=
.seq NamedBody701_282 NamedBody701_299

def NamedBody701_301 : StackLang.HolProg 64 :=
.seq NamedBody701_281 NamedBody701_300

def NamedBody701_302 : StackLang.HolProg 64 :=
.seq NamedBody701_280 NamedBody701_301

def NamedBody701_303 : StackLang.HolProg 64 :=
.seq NamedBody701_251 NamedBody701_302

def NamedBody701_304 : StackLang.HolProg 64 :=
.seq NamedBody701_248 NamedBody701_303

def NamedBody701_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody701_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody701_308 : StackLang.HolProg 64 :=
.seq NamedBody701_306 NamedBody701_307

def NamedBody701_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3137#64)

def NamedBody701_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_312 : StackLang.HolProg 64 :=
.seq NamedBody701_310 NamedBody701_311

def NamedBody701_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody701_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody701_316 : StackLang.HolProg 64 :=
.seq NamedBody701_314 NamedBody701_315

def NamedBody701_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_318 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody701_316 NamedBody701_317

def NamedBody701_319 : StackLang.HolProg 64 :=
.seq NamedBody701_313 NamedBody701_318

def NamedBody701_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody701_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 13

def NamedBody701_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody701_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody701_329 : StackLang.HolProg 64 :=
.seq NamedBody701_327 NamedBody701_328

def NamedBody701_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody701_331 : StackLang.HolProg 64 :=
.seq NamedBody701_329 NamedBody701_330

def NamedBody701_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_333 : StackLang.HolProg 64 :=
.seq NamedBody701_331 NamedBody701_332

def NamedBody701_334 : StackLang.HolProg 64 :=
.seq NamedBody701_326 NamedBody701_333

def NamedBody701_335 : StackLang.HolProg 64 :=
.seq NamedBody701_325 NamedBody701_334

def NamedBody701_336 : StackLang.HolProg 64 :=
.seq NamedBody701_324 NamedBody701_335

def NamedBody701_337 : StackLang.HolProg 64 :=
.seq NamedBody701_323 NamedBody701_336

def NamedBody701_338 : StackLang.HolProg 64 :=
.seq NamedBody701_322 NamedBody701_337

def NamedBody701_339 : StackLang.HolProg 64 :=
.seq NamedBody701_321 NamedBody701_338

def NamedBody701_340 : StackLang.HolProg 64 :=
.seq NamedBody701_320 NamedBody701_339

def NamedBody701_341 : StackLang.HolProg 64 :=
.seq NamedBody701_319 NamedBody701_340

def NamedBody701_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody701_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_350 : StackLang.HolProg 64 :=
.seq NamedBody701_348 NamedBody701_349

def NamedBody701_351 : StackLang.HolProg 64 :=
.seq NamedBody701_347 NamedBody701_350

def NamedBody701_352 : StackLang.HolProg 64 :=
.seq NamedBody701_346 NamedBody701_351

def NamedBody701_353 : StackLang.HolProg 64 :=
.seq NamedBody701_345 NamedBody701_352

def NamedBody701_354 : StackLang.HolProg 64 :=
.seq NamedBody701_344 NamedBody701_353

def NamedBody701_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody701_357 : StackLang.HolProg 64 :=
.seq NamedBody701_355 NamedBody701_356

def NamedBody701_358 : StackLang.HolProg 64 :=
.call (some (NamedBody701_354, 1, 701, 12)) (Sum.inl 698) (some (NamedBody701_357, 701, 13))

def NamedBody701_359 : StackLang.HolProg 64 :=
.seq NamedBody701_343 NamedBody701_358

def NamedBody701_360 : StackLang.HolProg 64 :=
.seq NamedBody701_342 NamedBody701_359

def NamedBody701_361 : StackLang.HolProg 64 :=
.seq NamedBody701_341 NamedBody701_360

def NamedBody701_362 : StackLang.HolProg 64 :=
.seq NamedBody701_312 NamedBody701_361

def NamedBody701_363 : StackLang.HolProg 64 :=
.seq NamedBody701_309 NamedBody701_362

def NamedBody701_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody701_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_367 : StackLang.HolProg 64 :=
.seq NamedBody701_365 NamedBody701_366

def NamedBody701_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3138#64)

def NamedBody701_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_371 : StackLang.HolProg 64 :=
.seq NamedBody701_369 NamedBody701_370

def NamedBody701_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody701_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody701_375 : StackLang.HolProg 64 :=
.seq NamedBody701_373 NamedBody701_374

def NamedBody701_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody701_375 NamedBody701_376

def NamedBody701_378 : StackLang.HolProg 64 :=
.seq NamedBody701_372 NamedBody701_377

def NamedBody701_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody701_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody701_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 15

def NamedBody701_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody701_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody701_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody701_388 : StackLang.HolProg 64 :=
.seq NamedBody701_386 NamedBody701_387

def NamedBody701_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody701_390 : StackLang.HolProg 64 :=
.seq NamedBody701_388 NamedBody701_389

def NamedBody701_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_392 : StackLang.HolProg 64 :=
.seq NamedBody701_390 NamedBody701_391

def NamedBody701_393 : StackLang.HolProg 64 :=
.seq NamedBody701_385 NamedBody701_392

def NamedBody701_394 : StackLang.HolProg 64 :=
.seq NamedBody701_384 NamedBody701_393

def NamedBody701_395 : StackLang.HolProg 64 :=
.seq NamedBody701_383 NamedBody701_394

def NamedBody701_396 : StackLang.HolProg 64 :=
.seq NamedBody701_382 NamedBody701_395

def NamedBody701_397 : StackLang.HolProg 64 :=
.seq NamedBody701_381 NamedBody701_396

def NamedBody701_398 : StackLang.HolProg 64 :=
.seq NamedBody701_380 NamedBody701_397

def NamedBody701_399 : StackLang.HolProg 64 :=
.seq NamedBody701_379 NamedBody701_398

def NamedBody701_400 : StackLang.HolProg 64 :=
.seq NamedBody701_378 NamedBody701_399

def NamedBody701_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody701_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody701_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody701_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody701_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_410 : StackLang.HolProg 64 :=
.seq NamedBody701_408 NamedBody701_409

def NamedBody701_411 : StackLang.HolProg 64 :=
.seq NamedBody701_407 NamedBody701_410

def NamedBody701_412 : StackLang.HolProg 64 :=
.seq NamedBody701_406 NamedBody701_411

def NamedBody701_413 : StackLang.HolProg 64 :=
.seq NamedBody701_405 NamedBody701_412

def NamedBody701_414 : StackLang.HolProg 64 :=
.seq NamedBody701_404 NamedBody701_413

def NamedBody701_415 : StackLang.HolProg 64 :=
.seq NamedBody701_403 NamedBody701_414

def NamedBody701_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody701_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody701_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody701_419 : StackLang.HolProg 64 :=
.seq NamedBody701_417 NamedBody701_418

def NamedBody701_420 : StackLang.HolProg 64 :=
.seq NamedBody701_416 NamedBody701_419

def NamedBody701_421 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody701_422 : StackLang.HolProg 64 :=
.seq NamedBody701_420 NamedBody701_421

def NamedBody701_423 : StackLang.HolProg 64 :=
.call (some (NamedBody701_415, 1, 701, 14)) (Sum.inl 70) (some (NamedBody701_422, 701, 15))

def NamedBody701_424 : StackLang.HolProg 64 :=
.seq NamedBody701_402 NamedBody701_423

def NamedBody701_425 : StackLang.HolProg 64 :=
.seq NamedBody701_401 NamedBody701_424

def NamedBody701_426 : StackLang.HolProg 64 :=
.seq NamedBody701_400 NamedBody701_425

def NamedBody701_427 : StackLang.HolProg 64 :=
.seq NamedBody701_371 NamedBody701_426

def NamedBody701_428 : StackLang.HolProg 64 :=
.seq NamedBody701_368 NamedBody701_427

def NamedBody701_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody701_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def NamedBody701_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody701_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody701_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_438 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody701_439 : StackLang.HolProg 64 :=
.seq NamedBody701_437 NamedBody701_438

def NamedBody701_440 : StackLang.HolProg 64 :=
.seq NamedBody701_436 NamedBody701_439

def NamedBody701_441 : StackLang.HolProg 64 :=
.seq NamedBody701_435 NamedBody701_440

def NamedBody701_442 : StackLang.HolProg 64 :=
.seq NamedBody701_434 NamedBody701_441

def NamedBody701_443 : StackLang.HolProg 64 :=
.seq NamedBody701_433 NamedBody701_442

def NamedBody701_444 : StackLang.HolProg 64 :=
.seq NamedBody701_432 NamedBody701_443

def NamedBody701_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_446 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody701_444 NamedBody701_445

def NamedBody701_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody701_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody701_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody701_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody701_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody701_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody701_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody701_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody701_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody701_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody701_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody701_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody701_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody701_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody701_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody701_466 : StackLang.HolProg 64 :=
.seq NamedBody701_464 NamedBody701_465

def NamedBody701_467 : StackLang.HolProg 64 :=
.seq NamedBody701_463 NamedBody701_466

def NamedBody701_468 : StackLang.HolProg 64 :=
.seq NamedBody701_462 NamedBody701_467

def NamedBody701_469 : StackLang.HolProg 64 :=
.seq NamedBody701_461 NamedBody701_468

def NamedBody701_470 : StackLang.HolProg 64 :=
.seq NamedBody701_460 NamedBody701_469

def NamedBody701_471 : StackLang.HolProg 64 :=
.seq NamedBody701_459 NamedBody701_470

def NamedBody701_472 : StackLang.HolProg 64 :=
.seq NamedBody701_458 NamedBody701_471

def NamedBody701_473 : StackLang.HolProg 64 :=
.seq NamedBody701_457 NamedBody701_472

def NamedBody701_474 : StackLang.HolProg 64 :=
.seq NamedBody701_456 NamedBody701_473

def NamedBody701_475 : StackLang.HolProg 64 :=
.seq NamedBody701_455 NamedBody701_474

def NamedBody701_476 : StackLang.HolProg 64 :=
.seq NamedBody701_454 NamedBody701_475

def NamedBody701_477 : StackLang.HolProg 64 :=
.seq NamedBody701_453 NamedBody701_476

def NamedBody701_478 : StackLang.HolProg 64 :=
.seq NamedBody701_452 NamedBody701_477

def NamedBody701_479 : StackLang.HolProg 64 :=
.seq NamedBody701_451 NamedBody701_478

def NamedBody701_480 : StackLang.HolProg 64 :=
.seq NamedBody701_450 NamedBody701_479

def NamedBody701_481 : StackLang.HolProg 64 :=
.seq NamedBody701_449 NamedBody701_480

def NamedBody701_482 : StackLang.HolProg 64 :=
.seq NamedBody701_448 NamedBody701_481

def NamedBody701_483 : StackLang.HolProg 64 :=
.seq NamedBody701_447 NamedBody701_482

def NamedBody701_484 : StackLang.HolProg 64 :=
.seq NamedBody701_446 NamedBody701_483

def NamedBody701_485 : StackLang.HolProg 64 :=
.seq NamedBody701_431 NamedBody701_484

def NamedBody701_486 : StackLang.HolProg 64 :=
.seq NamedBody701_430 NamedBody701_485

def NamedBody701_487 : StackLang.HolProg 64 :=
.seq NamedBody701_429 NamedBody701_486

def NamedBody701_488 : StackLang.HolProg 64 :=
.seq NamedBody701_428 NamedBody701_487

def NamedBody701_489 : StackLang.HolProg 64 :=
.seq NamedBody701_367 NamedBody701_488

def NamedBody701_490 : StackLang.HolProg 64 :=
.seq NamedBody701_364 NamedBody701_489

def NamedBody701_491 : StackLang.HolProg 64 :=
.seq NamedBody701_363 NamedBody701_490

def NamedBody701_492 : StackLang.HolProg 64 :=
.seq NamedBody701_308 NamedBody701_491

def NamedBody701_493 : StackLang.HolProg 64 :=
.seq NamedBody701_305 NamedBody701_492

def NamedBody701_494 : StackLang.HolProg 64 :=
.seq NamedBody701_304 NamedBody701_493

def NamedBody701_495 : StackLang.HolProg 64 :=
.seq NamedBody701_247 NamedBody701_494

def NamedBody701_496 : StackLang.HolProg 64 :=
.seq NamedBody701_246 NamedBody701_495

def NamedBody701_497 : StackLang.HolProg 64 :=
.seq NamedBody701_245 NamedBody701_496

def NamedBody701_498 : StackLang.HolProg 64 :=
.seq NamedBody701_244 NamedBody701_497

def NamedBody701_499 : StackLang.HolProg 64 :=
.seq NamedBody701_243 NamedBody701_498

def NamedBody701_500 : StackLang.HolProg 64 :=
.seq NamedBody701_242 NamedBody701_499

def NamedBody701_501 : StackLang.HolProg 64 :=
.seq NamedBody701_241 NamedBody701_500

def NamedBody701_502 : StackLang.HolProg 64 :=
.seq NamedBody701_240 NamedBody701_501

def NamedBody701_503 : StackLang.HolProg 64 :=
.seq NamedBody701_239 NamedBody701_502

def NamedBody701_504 : StackLang.HolProg 64 :=
.seq NamedBody701_238 NamedBody701_503

def NamedBody701_505 : StackLang.HolProg 64 :=
.seq NamedBody701_183 NamedBody701_504

def NamedBody701_506 : StackLang.HolProg 64 :=
.seq NamedBody701_182 NamedBody701_505

def NamedBody701_507 : StackLang.HolProg 64 :=
.seq NamedBody701_181 NamedBody701_506

def NamedBody701_508 : StackLang.HolProg 64 :=
.seq NamedBody701_180 NamedBody701_507

def NamedBody701_509 : StackLang.HolProg 64 :=
.seq NamedBody701_127 NamedBody701_508

def NamedBody701_510 : StackLang.HolProg 64 :=
.seq NamedBody701_126 NamedBody701_509

def NamedBody701_511 : StackLang.HolProg 64 :=
.seq NamedBody701_125 NamedBody701_510

def NamedBody701_512 : StackLang.HolProg 64 :=
.seq NamedBody701_72 NamedBody701_511

def NamedBody701_513 : StackLang.HolProg 64 :=
.seq NamedBody701_71 NamedBody701_512

def NamedBody701_514 : StackLang.HolProg 64 :=
.seq NamedBody701_70 NamedBody701_513

def NamedBody701_515 : StackLang.HolProg 64 :=
.seq NamedBody701_69 NamedBody701_514

def NamedBody701_516 : StackLang.HolProg 64 :=
.seq NamedBody701_16 NamedBody701_515

def NamedBody701_517 : StackLang.HolProg 64 :=
.seq NamedBody701_13 NamedBody701_516

def NamedBody701_518 : StackLang.HolProg 64 :=
.seq NamedBody701_12 NamedBody701_517

def NamedBody701_519 : StackLang.HolProg 64 :=
.seq NamedBody701_11 NamedBody701_518

def NamedBody701_520 : StackLang.HolProg 64 :=
.seq NamedBody701_10 NamedBody701_519

def NamedBody701_521 : StackLang.HolProg 64 :=
.seq NamedBody701_9 NamedBody701_520

def NamedBody701_522 : StackLang.HolProg 64 :=
.seq NamedBody701_8 NamedBody701_521

def NamedBody701_523 : StackLang.HolProg 64 :=
.seq NamedBody701_7 NamedBody701_522

def NamedBody701_524 : StackLang.HolProg 64 :=
.seq NamedBody701_6 NamedBody701_523

def Named701 : Nat × StackLang.HolProg 64 := (701, NamedBody701_524)
theorem Named701_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed701 = Named701 := by
  kernel_rfl
#print axioms Named701_eq
end InitECandidate.Proofs.BackendStages
