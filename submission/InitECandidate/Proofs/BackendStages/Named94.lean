import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed94
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody94_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody94_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody94_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody94_3 : StackLang.HolProg 64 :=
.seq NamedBody94_1 NamedBody94_2

def NamedBody94_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody94_3 NamedBody94_4

def NamedBody94_6 : StackLang.HolProg 64 :=
.seq NamedBody94_0 NamedBody94_5

def NamedBody94_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody94_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody94_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody94_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody94_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody94_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody94_14 : StackLang.HolProg 64 :=
.seq NamedBody94_12 NamedBody94_13

def NamedBody94_15 : StackLang.HolProg 64 :=
.seq NamedBody94_11 NamedBody94_14

def NamedBody94_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 40#64)

def NamedBody94_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody94_19 : StackLang.HolProg 64 :=
.seq NamedBody94_17 NamedBody94_18

def NamedBody94_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody94_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody94_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody94_23 : StackLang.HolProg 64 :=
.seq NamedBody94_21 NamedBody94_22

def NamedBody94_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody94_23 NamedBody94_24

def NamedBody94_26 : StackLang.HolProg 64 :=
.seq NamedBody94_20 NamedBody94_25

def NamedBody94_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody94_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody94_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 94 3

def NamedBody94_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody94_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody94_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody94_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody94_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody94_36 : StackLang.HolProg 64 :=
.seq NamedBody94_34 NamedBody94_35

def NamedBody94_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody94_38 : StackLang.HolProg 64 :=
.seq NamedBody94_36 NamedBody94_37

def NamedBody94_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody94_40 : StackLang.HolProg 64 :=
.seq NamedBody94_38 NamedBody94_39

def NamedBody94_41 : StackLang.HolProg 64 :=
.seq NamedBody94_33 NamedBody94_40

def NamedBody94_42 : StackLang.HolProg 64 :=
.seq NamedBody94_32 NamedBody94_41

def NamedBody94_43 : StackLang.HolProg 64 :=
.seq NamedBody94_31 NamedBody94_42

def NamedBody94_44 : StackLang.HolProg 64 :=
.seq NamedBody94_30 NamedBody94_43

def NamedBody94_45 : StackLang.HolProg 64 :=
.seq NamedBody94_29 NamedBody94_44

def NamedBody94_46 : StackLang.HolProg 64 :=
.seq NamedBody94_28 NamedBody94_45

def NamedBody94_47 : StackLang.HolProg 64 :=
.seq NamedBody94_27 NamedBody94_46

def NamedBody94_48 : StackLang.HolProg 64 :=
.seq NamedBody94_26 NamedBody94_47

def NamedBody94_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody94_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody94_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody94_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody94_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody94_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody94_58 : StackLang.HolProg 64 :=
.seq NamedBody94_56 NamedBody94_57

def NamedBody94_59 : StackLang.HolProg 64 :=
.seq NamedBody94_55 NamedBody94_58

def NamedBody94_60 : StackLang.HolProg 64 :=
.seq NamedBody94_54 NamedBody94_59

def NamedBody94_61 : StackLang.HolProg 64 :=
.seq NamedBody94_53 NamedBody94_60

def NamedBody94_62 : StackLang.HolProg 64 :=
.seq NamedBody94_52 NamedBody94_61

def NamedBody94_63 : StackLang.HolProg 64 :=
.seq NamedBody94_51 NamedBody94_62

def NamedBody94_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody94_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody94_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody94_67 : StackLang.HolProg 64 :=
.seq NamedBody94_65 NamedBody94_66

def NamedBody94_68 : StackLang.HolProg 64 :=
.seq NamedBody94_64 NamedBody94_67

def NamedBody94_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody94_70 : StackLang.HolProg 64 :=
.seq NamedBody94_68 NamedBody94_69

def NamedBody94_71 : StackLang.HolProg 64 :=
.call (some (NamedBody94_63, 1, 94, 2)) (Sum.inl 66) (some (NamedBody94_70, 94, 3))

def NamedBody94_72 : StackLang.HolProg 64 :=
.seq NamedBody94_50 NamedBody94_71

def NamedBody94_73 : StackLang.HolProg 64 :=
.seq NamedBody94_49 NamedBody94_72

def NamedBody94_74 : StackLang.HolProg 64 :=
.seq NamedBody94_48 NamedBody94_73

def NamedBody94_75 : StackLang.HolProg 64 :=
.seq NamedBody94_19 NamedBody94_74

def NamedBody94_76 : StackLang.HolProg 64 :=
.seq NamedBody94_16 NamedBody94_75

def NamedBody94_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_79 : StackLang.HolProg 64 :=
.seq NamedBody94_77 NamedBody94_78

def NamedBody94_80 : StackLang.HolProg 64 :=
.seq NamedBody94_76 NamedBody94_79

def NamedBody94_81 : StackLang.HolProg 64 :=
.seq NamedBody94_15 NamedBody94_80

def NamedBody94_82 : StackLang.HolProg 64 :=
.seq NamedBody94_10 NamedBody94_81

def NamedBody94_83 : StackLang.HolProg 64 :=
.seq NamedBody94_9 NamedBody94_82

def NamedBody94_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_86 : StackLang.HolProg 64 :=
.seq NamedBody94_84 NamedBody94_85

def NamedBody94_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody94_83 NamedBody94_86

def NamedBody94_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody94_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody94_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody94_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody94_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody94_95 : StackLang.HolProg 64 :=
.seq NamedBody94_93 NamedBody94_94

def NamedBody94_96 : StackLang.HolProg 64 :=
.seq NamedBody94_92 NamedBody94_95

def NamedBody94_97 : StackLang.HolProg 64 :=
.seq NamedBody94_91 NamedBody94_96

def NamedBody94_98 : StackLang.HolProg 64 :=
.seq NamedBody94_90 NamedBody94_97

def NamedBody94_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody94_100 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody94_98 NamedBody94_99

def NamedBody94_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody94_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody94_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 64#64)

def NamedBody94_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody94_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody94_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody94_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody94_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody94_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody94_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody94_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody94_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def NamedBody94_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody94_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody94_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody94_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_130 : StackLang.HolProg 64 :=
.seq NamedBody94_128 NamedBody94_129

def NamedBody94_131 : StackLang.HolProg 64 :=
.seq NamedBody94_127 NamedBody94_130

def NamedBody94_132 : StackLang.HolProg 64 :=
.seq NamedBody94_126 NamedBody94_131

def NamedBody94_133 : StackLang.HolProg 64 :=
.seq NamedBody94_125 NamedBody94_132

def NamedBody94_134 : StackLang.HolProg 64 :=
.seq NamedBody94_124 NamedBody94_133

def NamedBody94_135 : StackLang.HolProg 64 :=
.seq NamedBody94_123 NamedBody94_134

def NamedBody94_136 : StackLang.HolProg 64 :=
.seq NamedBody94_122 NamedBody94_135

def NamedBody94_137 : StackLang.HolProg 64 :=
.seq NamedBody94_121 NamedBody94_136

def NamedBody94_138 : StackLang.HolProg 64 :=
.seq NamedBody94_120 NamedBody94_137

def NamedBody94_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_141 : StackLang.HolProg 64 :=
.seq NamedBody94_139 NamedBody94_140

def NamedBody94_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody94_138 NamedBody94_141

def NamedBody94_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody94_146 : StackLang.HolProg 64 :=
.seq NamedBody94_144 NamedBody94_145

def NamedBody94_147 : StackLang.HolProg 64 :=
.seq NamedBody94_143 NamedBody94_146

def NamedBody94_148 : StackLang.HolProg 64 :=
.seq NamedBody94_142 NamedBody94_147

def NamedBody94_149 : StackLang.HolProg 64 :=
.seq NamedBody94_119 NamedBody94_148

def NamedBody94_150 : StackLang.HolProg 64 :=
.seq NamedBody94_118 NamedBody94_149

def NamedBody94_151 : StackLang.HolProg 64 :=
.seq NamedBody94_117 NamedBody94_150

def NamedBody94_152 : StackLang.HolProg 64 :=
.seq NamedBody94_116 NamedBody94_151

def NamedBody94_153 : StackLang.HolProg 64 :=
.seq NamedBody94_115 NamedBody94_152

def NamedBody94_154 : StackLang.HolProg 64 :=
.seq NamedBody94_114 NamedBody94_153

def NamedBody94_155 : StackLang.HolProg 64 :=
.seq NamedBody94_113 NamedBody94_154

def NamedBody94_156 : StackLang.HolProg 64 :=
.seq NamedBody94_112 NamedBody94_155

def NamedBody94_157 : StackLang.HolProg 64 :=
.seq NamedBody94_111 NamedBody94_156

def NamedBody94_158 : StackLang.HolProg 64 :=
.seq NamedBody94_110 NamedBody94_157

def NamedBody94_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody94_161 : StackLang.HolProg 64 :=
.seq NamedBody94_159 NamedBody94_160

def NamedBody94_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody94_158 NamedBody94_161

def NamedBody94_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_165 : StackLang.HolProg 64 :=
.seq NamedBody94_163 NamedBody94_164

def NamedBody94_166 : StackLang.HolProg 64 :=
.seq NamedBody94_162 NamedBody94_165

def NamedBody94_167 : StackLang.HolProg 64 :=
.seq NamedBody94_109 NamedBody94_166

def NamedBody94_168 : StackLang.HolProg 64 :=
.seq NamedBody94_108 NamedBody94_167

def NamedBody94_169 : StackLang.HolProg 64 :=
.loop NamedBody94_168

def NamedBody94_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody94_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody94_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody94_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody94_174 : StackLang.HolProg 64 :=
.seq NamedBody94_172 NamedBody94_173

def NamedBody94_175 : StackLang.HolProg 64 :=
.seq NamedBody94_171 NamedBody94_174

def NamedBody94_176 : StackLang.HolProg 64 :=
.seq NamedBody94_170 NamedBody94_175

def NamedBody94_177 : StackLang.HolProg 64 :=
.seq NamedBody94_169 NamedBody94_176

def NamedBody94_178 : StackLang.HolProg 64 :=
.seq NamedBody94_107 NamedBody94_177

def NamedBody94_179 : StackLang.HolProg 64 :=
.seq NamedBody94_106 NamedBody94_178

def NamedBody94_180 : StackLang.HolProg 64 :=
.seq NamedBody94_105 NamedBody94_179

def NamedBody94_181 : StackLang.HolProg 64 :=
.seq NamedBody94_104 NamedBody94_180

def NamedBody94_182 : StackLang.HolProg 64 :=
.seq NamedBody94_103 NamedBody94_181

def NamedBody94_183 : StackLang.HolProg 64 :=
.seq NamedBody94_102 NamedBody94_182

def NamedBody94_184 : StackLang.HolProg 64 :=
.seq NamedBody94_101 NamedBody94_183

def NamedBody94_185 : StackLang.HolProg 64 :=
.seq NamedBody94_100 NamedBody94_184

def NamedBody94_186 : StackLang.HolProg 64 :=
.seq NamedBody94_89 NamedBody94_185

def NamedBody94_187 : StackLang.HolProg 64 :=
.seq NamedBody94_88 NamedBody94_186

def NamedBody94_188 : StackLang.HolProg 64 :=
.seq NamedBody94_87 NamedBody94_187

def NamedBody94_189 : StackLang.HolProg 64 :=
.seq NamedBody94_8 NamedBody94_188

def NamedBody94_190 : StackLang.HolProg 64 :=
.seq NamedBody94_7 NamedBody94_189

def NamedBody94_191 : StackLang.HolProg 64 :=
.seq NamedBody94_6 NamedBody94_190

def Named94 : Nat × StackLang.HolProg 64 := (94, NamedBody94_191)
theorem Named94_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed94 = Named94 := by
  kernel_rfl
#print axioms Named94_eq
end InitECandidate.Proofs.BackendStages
