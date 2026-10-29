import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed671
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody671_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody671_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody671_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody671_3 : StackLang.HolProg 64 :=
.seq NamedBody671_1 NamedBody671_2

def NamedBody671_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody671_3 NamedBody671_4

def NamedBody671_6 : StackLang.HolProg 64 :=
.seq NamedBody671_0 NamedBody671_5

def NamedBody671_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody671_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody671_9 : StackLang.HolProg 64 :=
.seq NamedBody671_7 NamedBody671_8

def NamedBody671_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 12#64)

def NamedBody671_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody671_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody671_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody671_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody671_15 : StackLang.HolProg 64 :=
.seq NamedBody671_13 NamedBody671_14

def NamedBody671_16 : StackLang.HolProg 64 :=
.seq NamedBody671_12 NamedBody671_15

def NamedBody671_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2786#64)

def NamedBody671_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody671_20 : StackLang.HolProg 64 :=
.seq NamedBody671_18 NamedBody671_19

def NamedBody671_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody671_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody671_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody671_24 : StackLang.HolProg 64 :=
.seq NamedBody671_22 NamedBody671_23

def NamedBody671_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody671_24 NamedBody671_25

def NamedBody671_27 : StackLang.HolProg 64 :=
.seq NamedBody671_21 NamedBody671_26

def NamedBody671_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody671_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody671_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 671 3

def NamedBody671_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody671_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody671_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody671_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody671_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody671_37 : StackLang.HolProg 64 :=
.seq NamedBody671_35 NamedBody671_36

def NamedBody671_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody671_39 : StackLang.HolProg 64 :=
.seq NamedBody671_37 NamedBody671_38

def NamedBody671_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody671_41 : StackLang.HolProg 64 :=
.seq NamedBody671_39 NamedBody671_40

def NamedBody671_42 : StackLang.HolProg 64 :=
.seq NamedBody671_34 NamedBody671_41

def NamedBody671_43 : StackLang.HolProg 64 :=
.seq NamedBody671_33 NamedBody671_42

def NamedBody671_44 : StackLang.HolProg 64 :=
.seq NamedBody671_32 NamedBody671_43

def NamedBody671_45 : StackLang.HolProg 64 :=
.seq NamedBody671_31 NamedBody671_44

def NamedBody671_46 : StackLang.HolProg 64 :=
.seq NamedBody671_30 NamedBody671_45

def NamedBody671_47 : StackLang.HolProg 64 :=
.seq NamedBody671_29 NamedBody671_46

def NamedBody671_48 : StackLang.HolProg 64 :=
.seq NamedBody671_28 NamedBody671_47

def NamedBody671_49 : StackLang.HolProg 64 :=
.seq NamedBody671_27 NamedBody671_48

def NamedBody671_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody671_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody671_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody671_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody671_57 : StackLang.HolProg 64 :=
.seq NamedBody671_55 NamedBody671_56

def NamedBody671_58 : StackLang.HolProg 64 :=
.seq NamedBody671_54 NamedBody671_57

def NamedBody671_59 : StackLang.HolProg 64 :=
.seq NamedBody671_53 NamedBody671_58

def NamedBody671_60 : StackLang.HolProg 64 :=
.seq NamedBody671_52 NamedBody671_59

def NamedBody671_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody671_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody671_63 : StackLang.HolProg 64 :=
.seq NamedBody671_61 NamedBody671_62

def NamedBody671_64 : StackLang.HolProg 64 :=
.call (some (NamedBody671_60, 1, 671, 2)) (Sum.inl 669) (some (NamedBody671_63, 671, 3))

def NamedBody671_65 : StackLang.HolProg 64 :=
.seq NamedBody671_51 NamedBody671_64

def NamedBody671_66 : StackLang.HolProg 64 :=
.seq NamedBody671_50 NamedBody671_65

def NamedBody671_67 : StackLang.HolProg 64 :=
.seq NamedBody671_49 NamedBody671_66

def NamedBody671_68 : StackLang.HolProg 64 :=
.seq NamedBody671_20 NamedBody671_67

def NamedBody671_69 : StackLang.HolProg 64 :=
.seq NamedBody671_17 NamedBody671_68

def NamedBody671_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody671_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody671_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody671_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody671_75 : StackLang.HolProg 64 :=
.seq NamedBody671_73 NamedBody671_74

def NamedBody671_76 : StackLang.HolProg 64 :=
.seq NamedBody671_72 NamedBody671_75

def NamedBody671_77 : StackLang.HolProg 64 :=
.seq NamedBody671_71 NamedBody671_76

def NamedBody671_78 : StackLang.HolProg 64 :=
.seq NamedBody671_70 NamedBody671_77

def NamedBody671_79 : StackLang.HolProg 64 :=
.seq NamedBody671_69 NamedBody671_78

def NamedBody671_80 : StackLang.HolProg 64 :=
.seq NamedBody671_16 NamedBody671_79

def NamedBody671_81 : StackLang.HolProg 64 :=
.seq NamedBody671_11 NamedBody671_80

def NamedBody671_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody671_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody671_81 NamedBody671_82

def NamedBody671_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody671_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody671_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody671_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody671_88 : StackLang.HolProg 64 :=
.seq NamedBody671_86 NamedBody671_87

def NamedBody671_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2787#64)

def NamedBody671_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody671_92 : StackLang.HolProg 64 :=
.seq NamedBody671_90 NamedBody671_91

def NamedBody671_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody671_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody671_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody671_96 : StackLang.HolProg 64 :=
.seq NamedBody671_94 NamedBody671_95

def NamedBody671_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody671_96 NamedBody671_97

def NamedBody671_99 : StackLang.HolProg 64 :=
.seq NamedBody671_93 NamedBody671_98

def NamedBody671_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody671_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody671_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 671 5

def NamedBody671_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody671_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody671_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody671_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody671_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody671_109 : StackLang.HolProg 64 :=
.seq NamedBody671_107 NamedBody671_108

def NamedBody671_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody671_111 : StackLang.HolProg 64 :=
.seq NamedBody671_109 NamedBody671_110

def NamedBody671_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody671_113 : StackLang.HolProg 64 :=
.seq NamedBody671_111 NamedBody671_112

def NamedBody671_114 : StackLang.HolProg 64 :=
.seq NamedBody671_106 NamedBody671_113

def NamedBody671_115 : StackLang.HolProg 64 :=
.seq NamedBody671_105 NamedBody671_114

def NamedBody671_116 : StackLang.HolProg 64 :=
.seq NamedBody671_104 NamedBody671_115

def NamedBody671_117 : StackLang.HolProg 64 :=
.seq NamedBody671_103 NamedBody671_116

def NamedBody671_118 : StackLang.HolProg 64 :=
.seq NamedBody671_102 NamedBody671_117

def NamedBody671_119 : StackLang.HolProg 64 :=
.seq NamedBody671_101 NamedBody671_118

def NamedBody671_120 : StackLang.HolProg 64 :=
.seq NamedBody671_100 NamedBody671_119

def NamedBody671_121 : StackLang.HolProg 64 :=
.seq NamedBody671_99 NamedBody671_120

def NamedBody671_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody671_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody671_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody671_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody671_129 : StackLang.HolProg 64 :=
.seq NamedBody671_127 NamedBody671_128

def NamedBody671_130 : StackLang.HolProg 64 :=
.seq NamedBody671_126 NamedBody671_129

def NamedBody671_131 : StackLang.HolProg 64 :=
.seq NamedBody671_125 NamedBody671_130

def NamedBody671_132 : StackLang.HolProg 64 :=
.seq NamedBody671_124 NamedBody671_131

def NamedBody671_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody671_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody671_135 : StackLang.HolProg 64 :=
.seq NamedBody671_133 NamedBody671_134

def NamedBody671_136 : StackLang.HolProg 64 :=
.call (some (NamedBody671_132, 1, 671, 4)) (Sum.inl 670) (some (NamedBody671_135, 671, 5))

def NamedBody671_137 : StackLang.HolProg 64 :=
.seq NamedBody671_123 NamedBody671_136

def NamedBody671_138 : StackLang.HolProg 64 :=
.seq NamedBody671_122 NamedBody671_137

def NamedBody671_139 : StackLang.HolProg 64 :=
.seq NamedBody671_121 NamedBody671_138

def NamedBody671_140 : StackLang.HolProg 64 :=
.seq NamedBody671_92 NamedBody671_139

def NamedBody671_141 : StackLang.HolProg 64 :=
.seq NamedBody671_89 NamedBody671_140

def NamedBody671_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody671_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody671_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody671_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody671_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody671_147 : StackLang.HolProg 64 :=
.seq NamedBody671_145 NamedBody671_146

def NamedBody671_148 : StackLang.HolProg 64 :=
.seq NamedBody671_144 NamedBody671_147

def NamedBody671_149 : StackLang.HolProg 64 :=
.seq NamedBody671_143 NamedBody671_148

def NamedBody671_150 : StackLang.HolProg 64 :=
.seq NamedBody671_142 NamedBody671_149

def NamedBody671_151 : StackLang.HolProg 64 :=
.seq NamedBody671_141 NamedBody671_150

def NamedBody671_152 : StackLang.HolProg 64 :=
.seq NamedBody671_88 NamedBody671_151

def NamedBody671_153 : StackLang.HolProg 64 :=
.seq NamedBody671_85 NamedBody671_152

def NamedBody671_154 : StackLang.HolProg 64 :=
.seq NamedBody671_84 NamedBody671_153

def NamedBody671_155 : StackLang.HolProg 64 :=
.seq NamedBody671_83 NamedBody671_154

def NamedBody671_156 : StackLang.HolProg 64 :=
.seq NamedBody671_10 NamedBody671_155

def NamedBody671_157 : StackLang.HolProg 64 :=
.seq NamedBody671_9 NamedBody671_156

def NamedBody671_158 : StackLang.HolProg 64 :=
.seq NamedBody671_6 NamedBody671_157

def Named671 : Nat × StackLang.HolProg 64 := (671, NamedBody671_158)
theorem Named671_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed671 = Named671 := by
  kernel_rfl
#print axioms Named671_eq
end InitECandidate.Proofs.BackendStages
