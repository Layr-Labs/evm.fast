import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed656
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody656_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody656_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_3 : StackLang.HolProg 64 :=
.seq NamedBody656_1 NamedBody656_2

def NamedBody656_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_3 NamedBody656_4

def NamedBody656_6 : StackLang.HolProg 64 :=
.seq NamedBody656_0 NamedBody656_5

def NamedBody656_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody656_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody656_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody656_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody656_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody656_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6900#64)

def NamedBody656_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody656_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_16 : StackLang.HolProg 64 :=
.seq NamedBody656_14 NamedBody656_15

def NamedBody656_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2734#64)

def NamedBody656_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_20 : StackLang.HolProg 64 :=
.seq NamedBody656_18 NamedBody656_19

def NamedBody656_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_24 : StackLang.HolProg 64 :=
.seq NamedBody656_22 NamedBody656_23

def NamedBody656_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_24 NamedBody656_25

def NamedBody656_27 : StackLang.HolProg 64 :=
.seq NamedBody656_21 NamedBody656_26

def NamedBody656_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody656_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 3

def NamedBody656_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody656_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody656_37 : StackLang.HolProg 64 :=
.seq NamedBody656_35 NamedBody656_36

def NamedBody656_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody656_39 : StackLang.HolProg 64 :=
.seq NamedBody656_37 NamedBody656_38

def NamedBody656_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_41 : StackLang.HolProg 64 :=
.seq NamedBody656_39 NamedBody656_40

def NamedBody656_42 : StackLang.HolProg 64 :=
.seq NamedBody656_34 NamedBody656_41

def NamedBody656_43 : StackLang.HolProg 64 :=
.seq NamedBody656_33 NamedBody656_42

def NamedBody656_44 : StackLang.HolProg 64 :=
.seq NamedBody656_32 NamedBody656_43

def NamedBody656_45 : StackLang.HolProg 64 :=
.seq NamedBody656_31 NamedBody656_44

def NamedBody656_46 : StackLang.HolProg 64 :=
.seq NamedBody656_30 NamedBody656_45

def NamedBody656_47 : StackLang.HolProg 64 :=
.seq NamedBody656_29 NamedBody656_46

def NamedBody656_48 : StackLang.HolProg 64 :=
.seq NamedBody656_28 NamedBody656_47

def NamedBody656_49 : StackLang.HolProg 64 :=
.seq NamedBody656_27 NamedBody656_48

def NamedBody656_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_57 : StackLang.HolProg 64 :=
.seq NamedBody656_55 NamedBody656_56

def NamedBody656_58 : StackLang.HolProg 64 :=
.seq NamedBody656_54 NamedBody656_57

def NamedBody656_59 : StackLang.HolProg 64 :=
.seq NamedBody656_53 NamedBody656_58

def NamedBody656_60 : StackLang.HolProg 64 :=
.seq NamedBody656_52 NamedBody656_59

def NamedBody656_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody656_63 : StackLang.HolProg 64 :=
.seq NamedBody656_61 NamedBody656_62

def NamedBody656_64 : StackLang.HolProg 64 :=
.call (some (NamedBody656_60, 1, 656, 2)) (Sum.inl 470) (some (NamedBody656_63, 656, 3))

def NamedBody656_65 : StackLang.HolProg 64 :=
.seq NamedBody656_51 NamedBody656_64

def NamedBody656_66 : StackLang.HolProg 64 :=
.seq NamedBody656_50 NamedBody656_65

def NamedBody656_67 : StackLang.HolProg 64 :=
.seq NamedBody656_49 NamedBody656_66

def NamedBody656_68 : StackLang.HolProg 64 :=
.seq NamedBody656_20 NamedBody656_67

def NamedBody656_69 : StackLang.HolProg 64 :=
.seq NamedBody656_17 NamedBody656_68

def NamedBody656_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody656_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2735#64)

def NamedBody656_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_76 : StackLang.HolProg 64 :=
.seq NamedBody656_74 NamedBody656_75

def NamedBody656_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_80 : StackLang.HolProg 64 :=
.seq NamedBody656_78 NamedBody656_79

def NamedBody656_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_80 NamedBody656_81

def NamedBody656_83 : StackLang.HolProg 64 :=
.seq NamedBody656_77 NamedBody656_82

def NamedBody656_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody656_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 5

def NamedBody656_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody656_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody656_93 : StackLang.HolProg 64 :=
.seq NamedBody656_91 NamedBody656_92

def NamedBody656_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody656_95 : StackLang.HolProg 64 :=
.seq NamedBody656_93 NamedBody656_94

def NamedBody656_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_97 : StackLang.HolProg 64 :=
.seq NamedBody656_95 NamedBody656_96

def NamedBody656_98 : StackLang.HolProg 64 :=
.seq NamedBody656_90 NamedBody656_97

def NamedBody656_99 : StackLang.HolProg 64 :=
.seq NamedBody656_89 NamedBody656_98

def NamedBody656_100 : StackLang.HolProg 64 :=
.seq NamedBody656_88 NamedBody656_99

def NamedBody656_101 : StackLang.HolProg 64 :=
.seq NamedBody656_87 NamedBody656_100

def NamedBody656_102 : StackLang.HolProg 64 :=
.seq NamedBody656_86 NamedBody656_101

def NamedBody656_103 : StackLang.HolProg 64 :=
.seq NamedBody656_85 NamedBody656_102

def NamedBody656_104 : StackLang.HolProg 64 :=
.seq NamedBody656_84 NamedBody656_103

def NamedBody656_105 : StackLang.HolProg 64 :=
.seq NamedBody656_83 NamedBody656_104

def NamedBody656_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody656_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody656_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_115 : StackLang.HolProg 64 :=
.seq NamedBody656_113 NamedBody656_114

def NamedBody656_116 : StackLang.HolProg 64 :=
.seq NamedBody656_112 NamedBody656_115

def NamedBody656_117 : StackLang.HolProg 64 :=
.seq NamedBody656_111 NamedBody656_116

def NamedBody656_118 : StackLang.HolProg 64 :=
.seq NamedBody656_110 NamedBody656_117

def NamedBody656_119 : StackLang.HolProg 64 :=
.seq NamedBody656_109 NamedBody656_118

def NamedBody656_120 : StackLang.HolProg 64 :=
.seq NamedBody656_108 NamedBody656_119

def NamedBody656_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody656_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_123 : StackLang.HolProg 64 :=
.seq NamedBody656_121 NamedBody656_122

def NamedBody656_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody656_125 : StackLang.HolProg 64 :=
.seq NamedBody656_123 NamedBody656_124

def NamedBody656_126 : StackLang.HolProg 64 :=
.call (some (NamedBody656_120, 1, 656, 4)) (Sum.inl 68) (some (NamedBody656_125, 656, 5))

def NamedBody656_127 : StackLang.HolProg 64 :=
.seq NamedBody656_107 NamedBody656_126

def NamedBody656_128 : StackLang.HolProg 64 :=
.seq NamedBody656_106 NamedBody656_127

def NamedBody656_129 : StackLang.HolProg 64 :=
.seq NamedBody656_105 NamedBody656_128

def NamedBody656_130 : StackLang.HolProg 64 :=
.seq NamedBody656_76 NamedBody656_129

def NamedBody656_131 : StackLang.HolProg 64 :=
.seq NamedBody656_73 NamedBody656_130

def NamedBody656_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody656_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody656_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody656_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody656_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody656_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody656_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody656_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody656_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody656_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody656_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 96#64))

def NamedBody656_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 160#64)

def NamedBody656_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody656_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody656_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody656_155 : StackLang.HolProg 64 :=
.seq NamedBody656_153 NamedBody656_154

def NamedBody656_156 : StackLang.HolProg 64 :=
.seq NamedBody656_152 NamedBody656_155

def NamedBody656_157 : StackLang.HolProg 64 :=
.seq NamedBody656_151 NamedBody656_156

def NamedBody656_158 : StackLang.HolProg 64 :=
.seq NamedBody656_150 NamedBody656_157

def NamedBody656_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody656_158 NamedBody656_159

def NamedBody656_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def NamedBody656_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody656_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody656_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody656_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_170 : StackLang.HolProg 64 :=
.seq NamedBody656_168 NamedBody656_169

def NamedBody656_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2736#64)

def NamedBody656_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_174 : StackLang.HolProg 64 :=
.seq NamedBody656_172 NamedBody656_173

def NamedBody656_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_178 : StackLang.HolProg 64 :=
.seq NamedBody656_176 NamedBody656_177

def NamedBody656_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_180 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_178 NamedBody656_179

def NamedBody656_181 : StackLang.HolProg 64 :=
.seq NamedBody656_175 NamedBody656_180

def NamedBody656_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody656_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 7

def NamedBody656_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody656_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody656_191 : StackLang.HolProg 64 :=
.seq NamedBody656_189 NamedBody656_190

def NamedBody656_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody656_193 : StackLang.HolProg 64 :=
.seq NamedBody656_191 NamedBody656_192

def NamedBody656_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_195 : StackLang.HolProg 64 :=
.seq NamedBody656_193 NamedBody656_194

def NamedBody656_196 : StackLang.HolProg 64 :=
.seq NamedBody656_188 NamedBody656_195

def NamedBody656_197 : StackLang.HolProg 64 :=
.seq NamedBody656_187 NamedBody656_196

def NamedBody656_198 : StackLang.HolProg 64 :=
.seq NamedBody656_186 NamedBody656_197

def NamedBody656_199 : StackLang.HolProg 64 :=
.seq NamedBody656_185 NamedBody656_198

def NamedBody656_200 : StackLang.HolProg 64 :=
.seq NamedBody656_184 NamedBody656_199

def NamedBody656_201 : StackLang.HolProg 64 :=
.seq NamedBody656_183 NamedBody656_200

def NamedBody656_202 : StackLang.HolProg 64 :=
.seq NamedBody656_182 NamedBody656_201

def NamedBody656_203 : StackLang.HolProg 64 :=
.seq NamedBody656_181 NamedBody656_202

def NamedBody656_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody656_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody656_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_213 : StackLang.HolProg 64 :=
.seq NamedBody656_211 NamedBody656_212

def NamedBody656_214 : StackLang.HolProg 64 :=
.seq NamedBody656_210 NamedBody656_213

def NamedBody656_215 : StackLang.HolProg 64 :=
.seq NamedBody656_209 NamedBody656_214

def NamedBody656_216 : StackLang.HolProg 64 :=
.seq NamedBody656_208 NamedBody656_215

def NamedBody656_217 : StackLang.HolProg 64 :=
.seq NamedBody656_207 NamedBody656_216

def NamedBody656_218 : StackLang.HolProg 64 :=
.seq NamedBody656_206 NamedBody656_217

def NamedBody656_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody656_221 : StackLang.HolProg 64 :=
.seq NamedBody656_219 NamedBody656_220

def NamedBody656_222 : StackLang.HolProg 64 :=
.call (some (NamedBody656_218, 1, 656, 6)) (Sum.inl 146) (some (NamedBody656_221, 656, 7))

def NamedBody656_223 : StackLang.HolProg 64 :=
.seq NamedBody656_205 NamedBody656_222

def NamedBody656_224 : StackLang.HolProg 64 :=
.seq NamedBody656_204 NamedBody656_223

def NamedBody656_225 : StackLang.HolProg 64 :=
.seq NamedBody656_203 NamedBody656_224

def NamedBody656_226 : StackLang.HolProg 64 :=
.seq NamedBody656_174 NamedBody656_225

def NamedBody656_227 : StackLang.HolProg 64 :=
.seq NamedBody656_171 NamedBody656_226

def NamedBody656_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody656_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody656_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody656_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody656_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody656_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_237 : StackLang.HolProg 64 :=
.seq NamedBody656_235 NamedBody656_236

def NamedBody656_238 : StackLang.HolProg 64 :=
.seq NamedBody656_234 NamedBody656_237

def NamedBody656_239 : StackLang.HolProg 64 :=
.seq NamedBody656_233 NamedBody656_238

def NamedBody656_240 : StackLang.HolProg 64 :=
.seq NamedBody656_232 NamedBody656_239

def NamedBody656_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2737#64)

def NamedBody656_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_244 : StackLang.HolProg 64 :=
.seq NamedBody656_242 NamedBody656_243

def NamedBody656_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_248 : StackLang.HolProg 64 :=
.seq NamedBody656_246 NamedBody656_247

def NamedBody656_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_250 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_248 NamedBody656_249

def NamedBody656_251 : StackLang.HolProg 64 :=
.seq NamedBody656_245 NamedBody656_250

def NamedBody656_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody656_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 9

def NamedBody656_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody656_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody656_261 : StackLang.HolProg 64 :=
.seq NamedBody656_259 NamedBody656_260

def NamedBody656_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody656_263 : StackLang.HolProg 64 :=
.seq NamedBody656_261 NamedBody656_262

def NamedBody656_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_265 : StackLang.HolProg 64 :=
.seq NamedBody656_263 NamedBody656_264

def NamedBody656_266 : StackLang.HolProg 64 :=
.seq NamedBody656_258 NamedBody656_265

def NamedBody656_267 : StackLang.HolProg 64 :=
.seq NamedBody656_257 NamedBody656_266

def NamedBody656_268 : StackLang.HolProg 64 :=
.seq NamedBody656_256 NamedBody656_267

def NamedBody656_269 : StackLang.HolProg 64 :=
.seq NamedBody656_255 NamedBody656_268

def NamedBody656_270 : StackLang.HolProg 64 :=
.seq NamedBody656_254 NamedBody656_269

def NamedBody656_271 : StackLang.HolProg 64 :=
.seq NamedBody656_253 NamedBody656_270

def NamedBody656_272 : StackLang.HolProg 64 :=
.seq NamedBody656_252 NamedBody656_271

def NamedBody656_273 : StackLang.HolProg 64 :=
.seq NamedBody656_251 NamedBody656_272

def NamedBody656_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody656_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody656_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_283 : StackLang.HolProg 64 :=
.seq NamedBody656_281 NamedBody656_282

def NamedBody656_284 : StackLang.HolProg 64 :=
.seq NamedBody656_280 NamedBody656_283

def NamedBody656_285 : StackLang.HolProg 64 :=
.seq NamedBody656_279 NamedBody656_284

def NamedBody656_286 : StackLang.HolProg 64 :=
.seq NamedBody656_278 NamedBody656_285

def NamedBody656_287 : StackLang.HolProg 64 :=
.seq NamedBody656_277 NamedBody656_286

def NamedBody656_288 : StackLang.HolProg 64 :=
.seq NamedBody656_276 NamedBody656_287

def NamedBody656_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_290 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody656_291 : StackLang.HolProg 64 :=
.seq NamedBody656_289 NamedBody656_290

def NamedBody656_292 : StackLang.HolProg 64 :=
.call (some (NamedBody656_288, 1, 656, 8)) (Sum.inl 146) (some (NamedBody656_291, 656, 9))

def NamedBody656_293 : StackLang.HolProg 64 :=
.seq NamedBody656_275 NamedBody656_292

def NamedBody656_294 : StackLang.HolProg 64 :=
.seq NamedBody656_274 NamedBody656_293

def NamedBody656_295 : StackLang.HolProg 64 :=
.seq NamedBody656_273 NamedBody656_294

def NamedBody656_296 : StackLang.HolProg 64 :=
.seq NamedBody656_244 NamedBody656_295

def NamedBody656_297 : StackLang.HolProg 64 :=
.seq NamedBody656_241 NamedBody656_296

def NamedBody656_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody656_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody656_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody656_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody656_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody656_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_307 : StackLang.HolProg 64 :=
.seq NamedBody656_305 NamedBody656_306

def NamedBody656_308 : StackLang.HolProg 64 :=
.seq NamedBody656_304 NamedBody656_307

def NamedBody656_309 : StackLang.HolProg 64 :=
.seq NamedBody656_303 NamedBody656_308

def NamedBody656_310 : StackLang.HolProg 64 :=
.seq NamedBody656_302 NamedBody656_309

def NamedBody656_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2738#64)

def NamedBody656_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_314 : StackLang.HolProg 64 :=
.seq NamedBody656_312 NamedBody656_313

def NamedBody656_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_318 : StackLang.HolProg 64 :=
.seq NamedBody656_316 NamedBody656_317

def NamedBody656_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_320 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_318 NamedBody656_319

def NamedBody656_321 : StackLang.HolProg 64 :=
.seq NamedBody656_315 NamedBody656_320

def NamedBody656_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody656_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 11

def NamedBody656_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody656_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody656_331 : StackLang.HolProg 64 :=
.seq NamedBody656_329 NamedBody656_330

def NamedBody656_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody656_333 : StackLang.HolProg 64 :=
.seq NamedBody656_331 NamedBody656_332

def NamedBody656_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_335 : StackLang.HolProg 64 :=
.seq NamedBody656_333 NamedBody656_334

def NamedBody656_336 : StackLang.HolProg 64 :=
.seq NamedBody656_328 NamedBody656_335

def NamedBody656_337 : StackLang.HolProg 64 :=
.seq NamedBody656_327 NamedBody656_336

def NamedBody656_338 : StackLang.HolProg 64 :=
.seq NamedBody656_326 NamedBody656_337

def NamedBody656_339 : StackLang.HolProg 64 :=
.seq NamedBody656_325 NamedBody656_338

def NamedBody656_340 : StackLang.HolProg 64 :=
.seq NamedBody656_324 NamedBody656_339

def NamedBody656_341 : StackLang.HolProg 64 :=
.seq NamedBody656_323 NamedBody656_340

def NamedBody656_342 : StackLang.HolProg 64 :=
.seq NamedBody656_322 NamedBody656_341

def NamedBody656_343 : StackLang.HolProg 64 :=
.seq NamedBody656_321 NamedBody656_342

def NamedBody656_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody656_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody656_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody656_353 : StackLang.HolProg 64 :=
.seq NamedBody656_351 NamedBody656_352

def NamedBody656_354 : StackLang.HolProg 64 :=
.seq NamedBody656_350 NamedBody656_353

def NamedBody656_355 : StackLang.HolProg 64 :=
.seq NamedBody656_349 NamedBody656_354

def NamedBody656_356 : StackLang.HolProg 64 :=
.seq NamedBody656_348 NamedBody656_355

def NamedBody656_357 : StackLang.HolProg 64 :=
.seq NamedBody656_347 NamedBody656_356

def NamedBody656_358 : StackLang.HolProg 64 :=
.seq NamedBody656_346 NamedBody656_357

def NamedBody656_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody656_360 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody656_361 : StackLang.HolProg 64 :=
.seq NamedBody656_359 NamedBody656_360

def NamedBody656_362 : StackLang.HolProg 64 :=
.call (some (NamedBody656_358, 1, 656, 10)) (Sum.inl 146) (some (NamedBody656_361, 656, 11))

def NamedBody656_363 : StackLang.HolProg 64 :=
.seq NamedBody656_345 NamedBody656_362

def NamedBody656_364 : StackLang.HolProg 64 :=
.seq NamedBody656_344 NamedBody656_363

def NamedBody656_365 : StackLang.HolProg 64 :=
.seq NamedBody656_343 NamedBody656_364

def NamedBody656_366 : StackLang.HolProg 64 :=
.seq NamedBody656_314 NamedBody656_365

def NamedBody656_367 : StackLang.HolProg 64 :=
.seq NamedBody656_311 NamedBody656_366

def NamedBody656_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody656_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody656_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody656_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody656_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody656_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody656_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody656_377 : StackLang.HolProg 64 :=
.seq NamedBody656_375 NamedBody656_376

def NamedBody656_378 : StackLang.HolProg 64 :=
.seq NamedBody656_374 NamedBody656_377

def NamedBody656_379 : StackLang.HolProg 64 :=
.seq NamedBody656_373 NamedBody656_378

def NamedBody656_380 : StackLang.HolProg 64 :=
.seq NamedBody656_372 NamedBody656_379

def NamedBody656_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2739#64)

def NamedBody656_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_384 : StackLang.HolProg 64 :=
.seq NamedBody656_382 NamedBody656_383

def NamedBody656_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_388 : StackLang.HolProg 64 :=
.seq NamedBody656_386 NamedBody656_387

def NamedBody656_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_390 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_388 NamedBody656_389

def NamedBody656_391 : StackLang.HolProg 64 :=
.seq NamedBody656_385 NamedBody656_390

def NamedBody656_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody656_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 13

def NamedBody656_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody656_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody656_401 : StackLang.HolProg 64 :=
.seq NamedBody656_399 NamedBody656_400

def NamedBody656_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody656_403 : StackLang.HolProg 64 :=
.seq NamedBody656_401 NamedBody656_402

def NamedBody656_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_405 : StackLang.HolProg 64 :=
.seq NamedBody656_403 NamedBody656_404

def NamedBody656_406 : StackLang.HolProg 64 :=
.seq NamedBody656_398 NamedBody656_405

def NamedBody656_407 : StackLang.HolProg 64 :=
.seq NamedBody656_397 NamedBody656_406

def NamedBody656_408 : StackLang.HolProg 64 :=
.seq NamedBody656_396 NamedBody656_407

def NamedBody656_409 : StackLang.HolProg 64 :=
.seq NamedBody656_395 NamedBody656_408

def NamedBody656_410 : StackLang.HolProg 64 :=
.seq NamedBody656_394 NamedBody656_409

def NamedBody656_411 : StackLang.HolProg 64 :=
.seq NamedBody656_393 NamedBody656_410

def NamedBody656_412 : StackLang.HolProg 64 :=
.seq NamedBody656_392 NamedBody656_411

def NamedBody656_413 : StackLang.HolProg 64 :=
.seq NamedBody656_391 NamedBody656_412

def NamedBody656_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody656_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 17 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody656_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody656_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody656_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody656_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody656_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody656_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody656_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody656_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody656_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody656_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody656_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody656_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody656_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_437 : StackLang.HolProg 64 :=
.seq NamedBody656_435 NamedBody656_436

def NamedBody656_438 : StackLang.HolProg 64 :=
.seq NamedBody656_434 NamedBody656_437

def NamedBody656_439 : StackLang.HolProg 64 :=
.seq NamedBody656_433 NamedBody656_438

def NamedBody656_440 : StackLang.HolProg 64 :=
.seq NamedBody656_432 NamedBody656_439

def NamedBody656_441 : StackLang.HolProg 64 :=
.seq NamedBody656_431 NamedBody656_440

def NamedBody656_442 : StackLang.HolProg 64 :=
.seq NamedBody656_430 NamedBody656_441

def NamedBody656_443 : StackLang.HolProg 64 :=
.seq NamedBody656_429 NamedBody656_442

def NamedBody656_444 : StackLang.HolProg 64 :=
.seq NamedBody656_428 NamedBody656_443

def NamedBody656_445 : StackLang.HolProg 64 :=
.seq NamedBody656_427 NamedBody656_444

def NamedBody656_446 : StackLang.HolProg 64 :=
.seq NamedBody656_426 NamedBody656_445

def NamedBody656_447 : StackLang.HolProg 64 :=
.seq NamedBody656_425 NamedBody656_446

def NamedBody656_448 : StackLang.HolProg 64 :=
.seq NamedBody656_424 NamedBody656_447

def NamedBody656_449 : StackLang.HolProg 64 :=
.seq NamedBody656_423 NamedBody656_448

def NamedBody656_450 : StackLang.HolProg 64 :=
.seq NamedBody656_422 NamedBody656_449

def NamedBody656_451 : StackLang.HolProg 64 :=
.seq NamedBody656_421 NamedBody656_450

def NamedBody656_452 : StackLang.HolProg 64 :=
.seq NamedBody656_420 NamedBody656_451

def NamedBody656_453 : StackLang.HolProg 64 :=
.seq NamedBody656_419 NamedBody656_452

def NamedBody656_454 : StackLang.HolProg 64 :=
.seq NamedBody656_418 NamedBody656_453

def NamedBody656_455 : StackLang.HolProg 64 :=
.seq NamedBody656_417 NamedBody656_454

def NamedBody656_456 : StackLang.HolProg 64 :=
.seq NamedBody656_416 NamedBody656_455

def NamedBody656_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody656_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody656_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody656_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody656_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody656_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody656_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody656_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody656_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody656_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody656_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_470 : StackLang.HolProg 64 :=
.seq NamedBody656_468 NamedBody656_469

def NamedBody656_471 : StackLang.HolProg 64 :=
.seq NamedBody656_467 NamedBody656_470

def NamedBody656_472 : StackLang.HolProg 64 :=
.seq NamedBody656_466 NamedBody656_471

def NamedBody656_473 : StackLang.HolProg 64 :=
.seq NamedBody656_465 NamedBody656_472

def NamedBody656_474 : StackLang.HolProg 64 :=
.seq NamedBody656_464 NamedBody656_473

def NamedBody656_475 : StackLang.HolProg 64 :=
.seq NamedBody656_463 NamedBody656_474

def NamedBody656_476 : StackLang.HolProg 64 :=
.seq NamedBody656_462 NamedBody656_475

def NamedBody656_477 : StackLang.HolProg 64 :=
.seq NamedBody656_461 NamedBody656_476

def NamedBody656_478 : StackLang.HolProg 64 :=
.seq NamedBody656_460 NamedBody656_477

def NamedBody656_479 : StackLang.HolProg 64 :=
.seq NamedBody656_459 NamedBody656_478

def NamedBody656_480 : StackLang.HolProg 64 :=
.seq NamedBody656_458 NamedBody656_479

def NamedBody656_481 : StackLang.HolProg 64 :=
.seq NamedBody656_457 NamedBody656_480

def NamedBody656_482 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody656_483 : StackLang.HolProg 64 :=
.seq NamedBody656_481 NamedBody656_482

def NamedBody656_484 : StackLang.HolProg 64 :=
.call (some (NamedBody656_456, 1, 656, 12)) (Sum.inl 146) (some (NamedBody656_483, 656, 13))

def NamedBody656_485 : StackLang.HolProg 64 :=
.seq NamedBody656_415 NamedBody656_484

def NamedBody656_486 : StackLang.HolProg 64 :=
.seq NamedBody656_414 NamedBody656_485

def NamedBody656_487 : StackLang.HolProg 64 :=
.seq NamedBody656_413 NamedBody656_486

def NamedBody656_488 : StackLang.HolProg 64 :=
.seq NamedBody656_384 NamedBody656_487

def NamedBody656_489 : StackLang.HolProg 64 :=
.seq NamedBody656_381 NamedBody656_488

def NamedBody656_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody656_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2740#64)

def NamedBody656_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_495 : StackLang.HolProg 64 :=
.seq NamedBody656_493 NamedBody656_494

def NamedBody656_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_499 : StackLang.HolProg 64 :=
.seq NamedBody656_497 NamedBody656_498

def NamedBody656_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_501 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_499 NamedBody656_500

def NamedBody656_502 : StackLang.HolProg 64 :=
.seq NamedBody656_496 NamedBody656_501

def NamedBody656_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody656_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 15

def NamedBody656_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody656_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody656_512 : StackLang.HolProg 64 :=
.seq NamedBody656_510 NamedBody656_511

def NamedBody656_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody656_514 : StackLang.HolProg 64 :=
.seq NamedBody656_512 NamedBody656_513

def NamedBody656_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_516 : StackLang.HolProg 64 :=
.seq NamedBody656_514 NamedBody656_515

def NamedBody656_517 : StackLang.HolProg 64 :=
.seq NamedBody656_509 NamedBody656_516

def NamedBody656_518 : StackLang.HolProg 64 :=
.seq NamedBody656_508 NamedBody656_517

def NamedBody656_519 : StackLang.HolProg 64 :=
.seq NamedBody656_507 NamedBody656_518

def NamedBody656_520 : StackLang.HolProg 64 :=
.seq NamedBody656_506 NamedBody656_519

def NamedBody656_521 : StackLang.HolProg 64 :=
.seq NamedBody656_505 NamedBody656_520

def NamedBody656_522 : StackLang.HolProg 64 :=
.seq NamedBody656_504 NamedBody656_521

def NamedBody656_523 : StackLang.HolProg 64 :=
.seq NamedBody656_503 NamedBody656_522

def NamedBody656_524 : StackLang.HolProg 64 :=
.seq NamedBody656_502 NamedBody656_523

def NamedBody656_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody656_532 : StackLang.HolProg 64 :=
.seq NamedBody656_530 NamedBody656_531

def NamedBody656_533 : StackLang.HolProg 64 :=
.seq NamedBody656_529 NamedBody656_532

def NamedBody656_534 : StackLang.HolProg 64 :=
.seq NamedBody656_528 NamedBody656_533

def NamedBody656_535 : StackLang.HolProg 64 :=
.seq NamedBody656_527 NamedBody656_534

def NamedBody656_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_537 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody656_538 : StackLang.HolProg 64 :=
.seq NamedBody656_536 NamedBody656_537

def NamedBody656_539 : StackLang.HolProg 64 :=
.call (some (NamedBody656_535, 1, 656, 14)) (Sum.inl 655) (some (NamedBody656_538, 656, 15))

def NamedBody656_540 : StackLang.HolProg 64 :=
.seq NamedBody656_526 NamedBody656_539

def NamedBody656_541 : StackLang.HolProg 64 :=
.seq NamedBody656_525 NamedBody656_540

def NamedBody656_542 : StackLang.HolProg 64 :=
.seq NamedBody656_524 NamedBody656_541

def NamedBody656_543 : StackLang.HolProg 64 :=
.seq NamedBody656_495 NamedBody656_542

def NamedBody656_544 : StackLang.HolProg 64 :=
.seq NamedBody656_492 NamedBody656_543

def NamedBody656_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody656_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody656_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2741#64)

def NamedBody656_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_554 : StackLang.HolProg 64 :=
.seq NamedBody656_552 NamedBody656_553

def NamedBody656_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_558 : StackLang.HolProg 64 :=
.seq NamedBody656_556 NamedBody656_557

def NamedBody656_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_560 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_558 NamedBody656_559

def NamedBody656_561 : StackLang.HolProg 64 :=
.seq NamedBody656_555 NamedBody656_560

def NamedBody656_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody656_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 17

def NamedBody656_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody656_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody656_571 : StackLang.HolProg 64 :=
.seq NamedBody656_569 NamedBody656_570

def NamedBody656_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody656_573 : StackLang.HolProg 64 :=
.seq NamedBody656_571 NamedBody656_572

def NamedBody656_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_575 : StackLang.HolProg 64 :=
.seq NamedBody656_573 NamedBody656_574

def NamedBody656_576 : StackLang.HolProg 64 :=
.seq NamedBody656_568 NamedBody656_575

def NamedBody656_577 : StackLang.HolProg 64 :=
.seq NamedBody656_567 NamedBody656_576

def NamedBody656_578 : StackLang.HolProg 64 :=
.seq NamedBody656_566 NamedBody656_577

def NamedBody656_579 : StackLang.HolProg 64 :=
.seq NamedBody656_565 NamedBody656_578

def NamedBody656_580 : StackLang.HolProg 64 :=
.seq NamedBody656_564 NamedBody656_579

def NamedBody656_581 : StackLang.HolProg 64 :=
.seq NamedBody656_563 NamedBody656_580

def NamedBody656_582 : StackLang.HolProg 64 :=
.seq NamedBody656_562 NamedBody656_581

def NamedBody656_583 : StackLang.HolProg 64 :=
.seq NamedBody656_561 NamedBody656_582

def NamedBody656_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody656_591 : StackLang.HolProg 64 :=
.seq NamedBody656_589 NamedBody656_590

def NamedBody656_592 : StackLang.HolProg 64 :=
.seq NamedBody656_588 NamedBody656_591

def NamedBody656_593 : StackLang.HolProg 64 :=
.seq NamedBody656_587 NamedBody656_592

def NamedBody656_594 : StackLang.HolProg 64 :=
.seq NamedBody656_586 NamedBody656_593

def NamedBody656_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_596 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody656_597 : StackLang.HolProg 64 :=
.seq NamedBody656_595 NamedBody656_596

def NamedBody656_598 : StackLang.HolProg 64 :=
.call (some (NamedBody656_594, 1, 656, 16)) (Sum.inl 68) (some (NamedBody656_597, 656, 17))

def NamedBody656_599 : StackLang.HolProg 64 :=
.seq NamedBody656_585 NamedBody656_598

def NamedBody656_600 : StackLang.HolProg 64 :=
.seq NamedBody656_584 NamedBody656_599

def NamedBody656_601 : StackLang.HolProg 64 :=
.seq NamedBody656_583 NamedBody656_600

def NamedBody656_602 : StackLang.HolProg 64 :=
.seq NamedBody656_554 NamedBody656_601

def NamedBody656_603 : StackLang.HolProg 64 :=
.seq NamedBody656_551 NamedBody656_602

def NamedBody656_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody656_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody656_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2742#64)

def NamedBody656_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_611 : StackLang.HolProg 64 :=
.seq NamedBody656_609 NamedBody656_610

def NamedBody656_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody656_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody656_615 : StackLang.HolProg 64 :=
.seq NamedBody656_613 NamedBody656_614

def NamedBody656_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_617 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody656_615 NamedBody656_616

def NamedBody656_618 : StackLang.HolProg 64 :=
.seq NamedBody656_612 NamedBody656_617

def NamedBody656_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody656_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody656_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 19

def NamedBody656_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody656_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody656_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody656_628 : StackLang.HolProg 64 :=
.seq NamedBody656_626 NamedBody656_627

def NamedBody656_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody656_630 : StackLang.HolProg 64 :=
.seq NamedBody656_628 NamedBody656_629

def NamedBody656_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_632 : StackLang.HolProg 64 :=
.seq NamedBody656_630 NamedBody656_631

def NamedBody656_633 : StackLang.HolProg 64 :=
.seq NamedBody656_625 NamedBody656_632

def NamedBody656_634 : StackLang.HolProg 64 :=
.seq NamedBody656_624 NamedBody656_633

def NamedBody656_635 : StackLang.HolProg 64 :=
.seq NamedBody656_623 NamedBody656_634

def NamedBody656_636 : StackLang.HolProg 64 :=
.seq NamedBody656_622 NamedBody656_635

def NamedBody656_637 : StackLang.HolProg 64 :=
.seq NamedBody656_621 NamedBody656_636

def NamedBody656_638 : StackLang.HolProg 64 :=
.seq NamedBody656_620 NamedBody656_637

def NamedBody656_639 : StackLang.HolProg 64 :=
.seq NamedBody656_619 NamedBody656_638

def NamedBody656_640 : StackLang.HolProg 64 :=
.seq NamedBody656_618 NamedBody656_639

def NamedBody656_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody656_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody656_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody656_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody656_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_649 : StackLang.HolProg 64 :=
.seq NamedBody656_647 NamedBody656_648

def NamedBody656_650 : StackLang.HolProg 64 :=
.seq NamedBody656_646 NamedBody656_649

def NamedBody656_651 : StackLang.HolProg 64 :=
.seq NamedBody656_645 NamedBody656_650

def NamedBody656_652 : StackLang.HolProg 64 :=
.seq NamedBody656_644 NamedBody656_651

def NamedBody656_653 : StackLang.HolProg 64 :=
.seq NamedBody656_643 NamedBody656_652

def NamedBody656_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody656_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody656_656 : StackLang.HolProg 64 :=
.seq NamedBody656_654 NamedBody656_655

def NamedBody656_657 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody656_658 : StackLang.HolProg 64 :=
.seq NamedBody656_656 NamedBody656_657

def NamedBody656_659 : StackLang.HolProg 64 :=
.call (some (NamedBody656_653, 1, 656, 18)) (Sum.inl 78) (some (NamedBody656_658, 656, 19))

def NamedBody656_660 : StackLang.HolProg 64 :=
.seq NamedBody656_642 NamedBody656_659

def NamedBody656_661 : StackLang.HolProg 64 :=
.seq NamedBody656_641 NamedBody656_660

def NamedBody656_662 : StackLang.HolProg 64 :=
.seq NamedBody656_640 NamedBody656_661

def NamedBody656_663 : StackLang.HolProg 64 :=
.seq NamedBody656_611 NamedBody656_662

def NamedBody656_664 : StackLang.HolProg 64 :=
.seq NamedBody656_608 NamedBody656_663

def NamedBody656_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def NamedBody656_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody656_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody656_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody656_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody656_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody656_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody656_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody656_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody656_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody656_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody656_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody656_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody656_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_684 : StackLang.HolProg 64 :=
.seq NamedBody656_682 NamedBody656_683

def NamedBody656_685 : StackLang.HolProg 64 :=
.seq NamedBody656_681 NamedBody656_684

def NamedBody656_686 : StackLang.HolProg 64 :=
.seq NamedBody656_680 NamedBody656_685

def NamedBody656_687 : StackLang.HolProg 64 :=
.seq NamedBody656_679 NamedBody656_686

def NamedBody656_688 : StackLang.HolProg 64 :=
.seq NamedBody656_678 NamedBody656_687

def NamedBody656_689 : StackLang.HolProg 64 :=
.seq NamedBody656_677 NamedBody656_688

def NamedBody656_690 : StackLang.HolProg 64 :=
.seq NamedBody656_676 NamedBody656_689

def NamedBody656_691 : StackLang.HolProg 64 :=
.seq NamedBody656_675 NamedBody656_690

def NamedBody656_692 : StackLang.HolProg 64 :=
.seq NamedBody656_674 NamedBody656_691

def NamedBody656_693 : StackLang.HolProg 64 :=
.seq NamedBody656_673 NamedBody656_692

def NamedBody656_694 : StackLang.HolProg 64 :=
.seq NamedBody656_672 NamedBody656_693

def NamedBody656_695 : StackLang.HolProg 64 :=
.seq NamedBody656_671 NamedBody656_694

def NamedBody656_696 : StackLang.HolProg 64 :=
.seq NamedBody656_670 NamedBody656_695

def NamedBody656_697 : StackLang.HolProg 64 :=
.seq NamedBody656_669 NamedBody656_696

def NamedBody656_698 : StackLang.HolProg 64 :=
.seq NamedBody656_668 NamedBody656_697

def NamedBody656_699 : StackLang.HolProg 64 :=
.seq NamedBody656_667 NamedBody656_698

def NamedBody656_700 : StackLang.HolProg 64 :=
.seq NamedBody656_666 NamedBody656_699

def NamedBody656_701 : StackLang.HolProg 64 :=
.seq NamedBody656_665 NamedBody656_700

def NamedBody656_702 : StackLang.HolProg 64 :=
.seq NamedBody656_664 NamedBody656_701

def NamedBody656_703 : StackLang.HolProg 64 :=
.seq NamedBody656_607 NamedBody656_702

def NamedBody656_704 : StackLang.HolProg 64 :=
.seq NamedBody656_606 NamedBody656_703

def NamedBody656_705 : StackLang.HolProg 64 :=
.seq NamedBody656_605 NamedBody656_704

def NamedBody656_706 : StackLang.HolProg 64 :=
.seq NamedBody656_604 NamedBody656_705

def NamedBody656_707 : StackLang.HolProg 64 :=
.seq NamedBody656_603 NamedBody656_706

def NamedBody656_708 : StackLang.HolProg 64 :=
.seq NamedBody656_550 NamedBody656_707

def NamedBody656_709 : StackLang.HolProg 64 :=
.seq NamedBody656_549 NamedBody656_708

def NamedBody656_710 : StackLang.HolProg 64 :=
.seq NamedBody656_548 NamedBody656_709

def NamedBody656_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody656_713 : StackLang.HolProg 64 :=
.seq NamedBody656_711 NamedBody656_712

def NamedBody656_714 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody656_710 NamedBody656_713

def NamedBody656_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody656_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody656_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody656_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody656_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody656_720 : StackLang.HolProg 64 :=
.seq NamedBody656_718 NamedBody656_719

def NamedBody656_721 : StackLang.HolProg 64 :=
.seq NamedBody656_717 NamedBody656_720

def NamedBody656_722 : StackLang.HolProg 64 :=
.seq NamedBody656_716 NamedBody656_721

def NamedBody656_723 : StackLang.HolProg 64 :=
.seq NamedBody656_715 NamedBody656_722

def NamedBody656_724 : StackLang.HolProg 64 :=
.seq NamedBody656_714 NamedBody656_723

def NamedBody656_725 : StackLang.HolProg 64 :=
.seq NamedBody656_547 NamedBody656_724

def NamedBody656_726 : StackLang.HolProg 64 :=
.seq NamedBody656_546 NamedBody656_725

def NamedBody656_727 : StackLang.HolProg 64 :=
.seq NamedBody656_545 NamedBody656_726

def NamedBody656_728 : StackLang.HolProg 64 :=
.seq NamedBody656_544 NamedBody656_727

def NamedBody656_729 : StackLang.HolProg 64 :=
.seq NamedBody656_491 NamedBody656_728

def NamedBody656_730 : StackLang.HolProg 64 :=
.seq NamedBody656_490 NamedBody656_729

def NamedBody656_731 : StackLang.HolProg 64 :=
.seq NamedBody656_489 NamedBody656_730

def NamedBody656_732 : StackLang.HolProg 64 :=
.seq NamedBody656_380 NamedBody656_731

def NamedBody656_733 : StackLang.HolProg 64 :=
.seq NamedBody656_371 NamedBody656_732

def NamedBody656_734 : StackLang.HolProg 64 :=
.seq NamedBody656_370 NamedBody656_733

def NamedBody656_735 : StackLang.HolProg 64 :=
.seq NamedBody656_369 NamedBody656_734

def NamedBody656_736 : StackLang.HolProg 64 :=
.seq NamedBody656_368 NamedBody656_735

def NamedBody656_737 : StackLang.HolProg 64 :=
.seq NamedBody656_367 NamedBody656_736

def NamedBody656_738 : StackLang.HolProg 64 :=
.seq NamedBody656_310 NamedBody656_737

def NamedBody656_739 : StackLang.HolProg 64 :=
.seq NamedBody656_301 NamedBody656_738

def NamedBody656_740 : StackLang.HolProg 64 :=
.seq NamedBody656_300 NamedBody656_739

def NamedBody656_741 : StackLang.HolProg 64 :=
.seq NamedBody656_299 NamedBody656_740

def NamedBody656_742 : StackLang.HolProg 64 :=
.seq NamedBody656_298 NamedBody656_741

def NamedBody656_743 : StackLang.HolProg 64 :=
.seq NamedBody656_297 NamedBody656_742

def NamedBody656_744 : StackLang.HolProg 64 :=
.seq NamedBody656_240 NamedBody656_743

def NamedBody656_745 : StackLang.HolProg 64 :=
.seq NamedBody656_231 NamedBody656_744

def NamedBody656_746 : StackLang.HolProg 64 :=
.seq NamedBody656_230 NamedBody656_745

def NamedBody656_747 : StackLang.HolProg 64 :=
.seq NamedBody656_229 NamedBody656_746

def NamedBody656_748 : StackLang.HolProg 64 :=
.seq NamedBody656_228 NamedBody656_747

def NamedBody656_749 : StackLang.HolProg 64 :=
.seq NamedBody656_227 NamedBody656_748

def NamedBody656_750 : StackLang.HolProg 64 :=
.seq NamedBody656_170 NamedBody656_749

def NamedBody656_751 : StackLang.HolProg 64 :=
.seq NamedBody656_167 NamedBody656_750

def NamedBody656_752 : StackLang.HolProg 64 :=
.seq NamedBody656_166 NamedBody656_751

def NamedBody656_753 : StackLang.HolProg 64 :=
.seq NamedBody656_165 NamedBody656_752

def NamedBody656_754 : StackLang.HolProg 64 :=
.seq NamedBody656_164 NamedBody656_753

def NamedBody656_755 : StackLang.HolProg 64 :=
.seq NamedBody656_163 NamedBody656_754

def NamedBody656_756 : StackLang.HolProg 64 :=
.seq NamedBody656_162 NamedBody656_755

def NamedBody656_757 : StackLang.HolProg 64 :=
.seq NamedBody656_161 NamedBody656_756

def NamedBody656_758 : StackLang.HolProg 64 :=
.seq NamedBody656_160 NamedBody656_757

def NamedBody656_759 : StackLang.HolProg 64 :=
.seq NamedBody656_149 NamedBody656_758

def NamedBody656_760 : StackLang.HolProg 64 :=
.seq NamedBody656_148 NamedBody656_759

def NamedBody656_761 : StackLang.HolProg 64 :=
.seq NamedBody656_147 NamedBody656_760

def NamedBody656_762 : StackLang.HolProg 64 :=
.seq NamedBody656_146 NamedBody656_761

def NamedBody656_763 : StackLang.HolProg 64 :=
.seq NamedBody656_145 NamedBody656_762

def NamedBody656_764 : StackLang.HolProg 64 :=
.seq NamedBody656_144 NamedBody656_763

def NamedBody656_765 : StackLang.HolProg 64 :=
.seq NamedBody656_143 NamedBody656_764

def NamedBody656_766 : StackLang.HolProg 64 :=
.seq NamedBody656_142 NamedBody656_765

def NamedBody656_767 : StackLang.HolProg 64 :=
.seq NamedBody656_141 NamedBody656_766

def NamedBody656_768 : StackLang.HolProg 64 :=
.seq NamedBody656_140 NamedBody656_767

def NamedBody656_769 : StackLang.HolProg 64 :=
.seq NamedBody656_139 NamedBody656_768

def NamedBody656_770 : StackLang.HolProg 64 :=
.seq NamedBody656_138 NamedBody656_769

def NamedBody656_771 : StackLang.HolProg 64 :=
.seq NamedBody656_137 NamedBody656_770

def NamedBody656_772 : StackLang.HolProg 64 :=
.seq NamedBody656_136 NamedBody656_771

def NamedBody656_773 : StackLang.HolProg 64 :=
.seq NamedBody656_135 NamedBody656_772

def NamedBody656_774 : StackLang.HolProg 64 :=
.seq NamedBody656_134 NamedBody656_773

def NamedBody656_775 : StackLang.HolProg 64 :=
.seq NamedBody656_133 NamedBody656_774

def NamedBody656_776 : StackLang.HolProg 64 :=
.seq NamedBody656_132 NamedBody656_775

def NamedBody656_777 : StackLang.HolProg 64 :=
.seq NamedBody656_131 NamedBody656_776

def NamedBody656_778 : StackLang.HolProg 64 :=
.seq NamedBody656_72 NamedBody656_777

def NamedBody656_779 : StackLang.HolProg 64 :=
.seq NamedBody656_71 NamedBody656_778

def NamedBody656_780 : StackLang.HolProg 64 :=
.seq NamedBody656_70 NamedBody656_779

def NamedBody656_781 : StackLang.HolProg 64 :=
.seq NamedBody656_69 NamedBody656_780

def NamedBody656_782 : StackLang.HolProg 64 :=
.seq NamedBody656_16 NamedBody656_781

def NamedBody656_783 : StackLang.HolProg 64 :=
.seq NamedBody656_13 NamedBody656_782

def NamedBody656_784 : StackLang.HolProg 64 :=
.seq NamedBody656_12 NamedBody656_783

def NamedBody656_785 : StackLang.HolProg 64 :=
.seq NamedBody656_11 NamedBody656_784

def NamedBody656_786 : StackLang.HolProg 64 :=
.seq NamedBody656_10 NamedBody656_785

def NamedBody656_787 : StackLang.HolProg 64 :=
.seq NamedBody656_9 NamedBody656_786

def NamedBody656_788 : StackLang.HolProg 64 :=
.seq NamedBody656_8 NamedBody656_787

def NamedBody656_789 : StackLang.HolProg 64 :=
.seq NamedBody656_7 NamedBody656_788

def NamedBody656_790 : StackLang.HolProg 64 :=
.seq NamedBody656_6 NamedBody656_789

def Named656 : Nat × StackLang.HolProg 64 := (656, NamedBody656_790)
theorem Named656_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed656 = Named656 := by
  kernel_rfl
#print axioms Named656_eq
end InitECandidate.Proofs.BackendStages
