import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed837
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody837_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_3 : StackLang.HolProg 64 :=
.seq NamedBody837_1 NamedBody837_2

def NamedBody837_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_3 NamedBody837_4

def NamedBody837_6 : StackLang.HolProg 64 :=
.seq NamedBody837_0 NamedBody837_5

def NamedBody837_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody837_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody837_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4181#64)

def NamedBody837_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_14 : StackLang.HolProg 64 :=
.seq NamedBody837_12 NamedBody837_13

def NamedBody837_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_18 : StackLang.HolProg 64 :=
.seq NamedBody837_16 NamedBody837_17

def NamedBody837_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_18 NamedBody837_19

def NamedBody837_21 : StackLang.HolProg 64 :=
.seq NamedBody837_15 NamedBody837_20

def NamedBody837_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 3

def NamedBody837_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_31 : StackLang.HolProg 64 :=
.seq NamedBody837_29 NamedBody837_30

def NamedBody837_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_33 : StackLang.HolProg 64 :=
.seq NamedBody837_31 NamedBody837_32

def NamedBody837_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_35 : StackLang.HolProg 64 :=
.seq NamedBody837_33 NamedBody837_34

def NamedBody837_36 : StackLang.HolProg 64 :=
.seq NamedBody837_28 NamedBody837_35

def NamedBody837_37 : StackLang.HolProg 64 :=
.seq NamedBody837_27 NamedBody837_36

def NamedBody837_38 : StackLang.HolProg 64 :=
.seq NamedBody837_26 NamedBody837_37

def NamedBody837_39 : StackLang.HolProg 64 :=
.seq NamedBody837_25 NamedBody837_38

def NamedBody837_40 : StackLang.HolProg 64 :=
.seq NamedBody837_24 NamedBody837_39

def NamedBody837_41 : StackLang.HolProg 64 :=
.seq NamedBody837_23 NamedBody837_40

def NamedBody837_42 : StackLang.HolProg 64 :=
.seq NamedBody837_22 NamedBody837_41

def NamedBody837_43 : StackLang.HolProg 64 :=
.seq NamedBody837_21 NamedBody837_42

def NamedBody837_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_51 : StackLang.HolProg 64 :=
.seq NamedBody837_49 NamedBody837_50

def NamedBody837_52 : StackLang.HolProg 64 :=
.seq NamedBody837_48 NamedBody837_51

def NamedBody837_53 : StackLang.HolProg 64 :=
.seq NamedBody837_47 NamedBody837_52

def NamedBody837_54 : StackLang.HolProg 64 :=
.seq NamedBody837_46 NamedBody837_53

def NamedBody837_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_57 : StackLang.HolProg 64 :=
.seq NamedBody837_55 NamedBody837_56

def NamedBody837_58 : StackLang.HolProg 64 :=
.call (some (NamedBody837_54, 1, 837, 2)) (Sum.inl 832) (some (NamedBody837_57, 837, 3))

def NamedBody837_59 : StackLang.HolProg 64 :=
.seq NamedBody837_45 NamedBody837_58

def NamedBody837_60 : StackLang.HolProg 64 :=
.seq NamedBody837_44 NamedBody837_59

def NamedBody837_61 : StackLang.HolProg 64 :=
.seq NamedBody837_43 NamedBody837_60

def NamedBody837_62 : StackLang.HolProg 64 :=
.seq NamedBody837_14 NamedBody837_61

def NamedBody837_63 : StackLang.HolProg 64 :=
.seq NamedBody837_11 NamedBody837_62

def NamedBody837_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_69 : StackLang.HolProg 64 :=
.seq NamedBody837_67 NamedBody837_68

def NamedBody837_70 : StackLang.HolProg 64 :=
.seq NamedBody837_66 NamedBody837_69

def NamedBody837_71 : StackLang.HolProg 64 :=
.seq NamedBody837_65 NamedBody837_70

def NamedBody837_72 : StackLang.HolProg 64 :=
.seq NamedBody837_64 NamedBody837_71

def NamedBody837_73 : StackLang.HolProg 64 :=
.seq NamedBody837_63 NamedBody837_72

def NamedBody837_74 : StackLang.HolProg 64 :=
.seq NamedBody837_10 NamedBody837_73

def NamedBody837_75 : StackLang.HolProg 64 :=
.seq NamedBody837_9 NamedBody837_74

def NamedBody837_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody837_75 NamedBody837_76

def NamedBody837_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def NamedBody837_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_85 : StackLang.HolProg 64 :=
.seq NamedBody837_83 NamedBody837_84

def NamedBody837_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4182#64)

def NamedBody837_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_89 : StackLang.HolProg 64 :=
.seq NamedBody837_87 NamedBody837_88

def NamedBody837_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_93 : StackLang.HolProg 64 :=
.seq NamedBody837_91 NamedBody837_92

def NamedBody837_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_93 NamedBody837_94

def NamedBody837_96 : StackLang.HolProg 64 :=
.seq NamedBody837_90 NamedBody837_95

def NamedBody837_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 5

def NamedBody837_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_106 : StackLang.HolProg 64 :=
.seq NamedBody837_104 NamedBody837_105

def NamedBody837_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_108 : StackLang.HolProg 64 :=
.seq NamedBody837_106 NamedBody837_107

def NamedBody837_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_110 : StackLang.HolProg 64 :=
.seq NamedBody837_108 NamedBody837_109

def NamedBody837_111 : StackLang.HolProg 64 :=
.seq NamedBody837_103 NamedBody837_110

def NamedBody837_112 : StackLang.HolProg 64 :=
.seq NamedBody837_102 NamedBody837_111

def NamedBody837_113 : StackLang.HolProg 64 :=
.seq NamedBody837_101 NamedBody837_112

def NamedBody837_114 : StackLang.HolProg 64 :=
.seq NamedBody837_100 NamedBody837_113

def NamedBody837_115 : StackLang.HolProg 64 :=
.seq NamedBody837_99 NamedBody837_114

def NamedBody837_116 : StackLang.HolProg 64 :=
.seq NamedBody837_98 NamedBody837_115

def NamedBody837_117 : StackLang.HolProg 64 :=
.seq NamedBody837_97 NamedBody837_116

def NamedBody837_118 : StackLang.HolProg 64 :=
.seq NamedBody837_96 NamedBody837_117

def NamedBody837_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_126 : StackLang.HolProg 64 :=
.seq NamedBody837_124 NamedBody837_125

def NamedBody837_127 : StackLang.HolProg 64 :=
.seq NamedBody837_123 NamedBody837_126

def NamedBody837_128 : StackLang.HolProg 64 :=
.seq NamedBody837_122 NamedBody837_127

def NamedBody837_129 : StackLang.HolProg 64 :=
.seq NamedBody837_121 NamedBody837_128

def NamedBody837_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_132 : StackLang.HolProg 64 :=
.seq NamedBody837_130 NamedBody837_131

def NamedBody837_133 : StackLang.HolProg 64 :=
.call (some (NamedBody837_129, 1, 837, 4)) (Sum.inl 831) (some (NamedBody837_132, 837, 5))

def NamedBody837_134 : StackLang.HolProg 64 :=
.seq NamedBody837_120 NamedBody837_133

def NamedBody837_135 : StackLang.HolProg 64 :=
.seq NamedBody837_119 NamedBody837_134

def NamedBody837_136 : StackLang.HolProg 64 :=
.seq NamedBody837_118 NamedBody837_135

def NamedBody837_137 : StackLang.HolProg 64 :=
.seq NamedBody837_89 NamedBody837_136

def NamedBody837_138 : StackLang.HolProg 64 :=
.seq NamedBody837_86 NamedBody837_137

def NamedBody837_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_144 : StackLang.HolProg 64 :=
.seq NamedBody837_142 NamedBody837_143

def NamedBody837_145 : StackLang.HolProg 64 :=
.seq NamedBody837_141 NamedBody837_144

def NamedBody837_146 : StackLang.HolProg 64 :=
.seq NamedBody837_140 NamedBody837_145

def NamedBody837_147 : StackLang.HolProg 64 :=
.seq NamedBody837_139 NamedBody837_146

def NamedBody837_148 : StackLang.HolProg 64 :=
.seq NamedBody837_138 NamedBody837_147

def NamedBody837_149 : StackLang.HolProg 64 :=
.seq NamedBody837_85 NamedBody837_148

def NamedBody837_150 : StackLang.HolProg 64 :=
.seq NamedBody837_82 NamedBody837_149

def NamedBody837_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_150 NamedBody837_151

def NamedBody837_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def NamedBody837_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_160 : StackLang.HolProg 64 :=
.seq NamedBody837_158 NamedBody837_159

def NamedBody837_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4183#64)

def NamedBody837_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_164 : StackLang.HolProg 64 :=
.seq NamedBody837_162 NamedBody837_163

def NamedBody837_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_168 : StackLang.HolProg 64 :=
.seq NamedBody837_166 NamedBody837_167

def NamedBody837_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_168 NamedBody837_169

def NamedBody837_171 : StackLang.HolProg 64 :=
.seq NamedBody837_165 NamedBody837_170

def NamedBody837_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 7

def NamedBody837_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_181 : StackLang.HolProg 64 :=
.seq NamedBody837_179 NamedBody837_180

def NamedBody837_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_183 : StackLang.HolProg 64 :=
.seq NamedBody837_181 NamedBody837_182

def NamedBody837_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_185 : StackLang.HolProg 64 :=
.seq NamedBody837_183 NamedBody837_184

def NamedBody837_186 : StackLang.HolProg 64 :=
.seq NamedBody837_178 NamedBody837_185

def NamedBody837_187 : StackLang.HolProg 64 :=
.seq NamedBody837_177 NamedBody837_186

def NamedBody837_188 : StackLang.HolProg 64 :=
.seq NamedBody837_176 NamedBody837_187

def NamedBody837_189 : StackLang.HolProg 64 :=
.seq NamedBody837_175 NamedBody837_188

def NamedBody837_190 : StackLang.HolProg 64 :=
.seq NamedBody837_174 NamedBody837_189

def NamedBody837_191 : StackLang.HolProg 64 :=
.seq NamedBody837_173 NamedBody837_190

def NamedBody837_192 : StackLang.HolProg 64 :=
.seq NamedBody837_172 NamedBody837_191

def NamedBody837_193 : StackLang.HolProg 64 :=
.seq NamedBody837_171 NamedBody837_192

def NamedBody837_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_201 : StackLang.HolProg 64 :=
.seq NamedBody837_199 NamedBody837_200

def NamedBody837_202 : StackLang.HolProg 64 :=
.seq NamedBody837_198 NamedBody837_201

def NamedBody837_203 : StackLang.HolProg 64 :=
.seq NamedBody837_197 NamedBody837_202

def NamedBody837_204 : StackLang.HolProg 64 :=
.seq NamedBody837_196 NamedBody837_203

def NamedBody837_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_207 : StackLang.HolProg 64 :=
.seq NamedBody837_205 NamedBody837_206

def NamedBody837_208 : StackLang.HolProg 64 :=
.call (some (NamedBody837_204, 1, 837, 6)) (Sum.inl 833) (some (NamedBody837_207, 837, 7))

def NamedBody837_209 : StackLang.HolProg 64 :=
.seq NamedBody837_195 NamedBody837_208

def NamedBody837_210 : StackLang.HolProg 64 :=
.seq NamedBody837_194 NamedBody837_209

def NamedBody837_211 : StackLang.HolProg 64 :=
.seq NamedBody837_193 NamedBody837_210

def NamedBody837_212 : StackLang.HolProg 64 :=
.seq NamedBody837_164 NamedBody837_211

def NamedBody837_213 : StackLang.HolProg 64 :=
.seq NamedBody837_161 NamedBody837_212

def NamedBody837_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_219 : StackLang.HolProg 64 :=
.seq NamedBody837_217 NamedBody837_218

def NamedBody837_220 : StackLang.HolProg 64 :=
.seq NamedBody837_216 NamedBody837_219

def NamedBody837_221 : StackLang.HolProg 64 :=
.seq NamedBody837_215 NamedBody837_220

def NamedBody837_222 : StackLang.HolProg 64 :=
.seq NamedBody837_214 NamedBody837_221

def NamedBody837_223 : StackLang.HolProg 64 :=
.seq NamedBody837_213 NamedBody837_222

def NamedBody837_224 : StackLang.HolProg 64 :=
.seq NamedBody837_160 NamedBody837_223

def NamedBody837_225 : StackLang.HolProg 64 :=
.seq NamedBody837_157 NamedBody837_224

def NamedBody837_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_225 NamedBody837_226

def NamedBody837_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def NamedBody837_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_235 : StackLang.HolProg 64 :=
.seq NamedBody837_233 NamedBody837_234

def NamedBody837_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4184#64)

def NamedBody837_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_239 : StackLang.HolProg 64 :=
.seq NamedBody837_237 NamedBody837_238

def NamedBody837_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_243 : StackLang.HolProg 64 :=
.seq NamedBody837_241 NamedBody837_242

def NamedBody837_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_243 NamedBody837_244

def NamedBody837_246 : StackLang.HolProg 64 :=
.seq NamedBody837_240 NamedBody837_245

def NamedBody837_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 9

def NamedBody837_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_256 : StackLang.HolProg 64 :=
.seq NamedBody837_254 NamedBody837_255

def NamedBody837_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_258 : StackLang.HolProg 64 :=
.seq NamedBody837_256 NamedBody837_257

def NamedBody837_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_260 : StackLang.HolProg 64 :=
.seq NamedBody837_258 NamedBody837_259

def NamedBody837_261 : StackLang.HolProg 64 :=
.seq NamedBody837_253 NamedBody837_260

def NamedBody837_262 : StackLang.HolProg 64 :=
.seq NamedBody837_252 NamedBody837_261

def NamedBody837_263 : StackLang.HolProg 64 :=
.seq NamedBody837_251 NamedBody837_262

def NamedBody837_264 : StackLang.HolProg 64 :=
.seq NamedBody837_250 NamedBody837_263

def NamedBody837_265 : StackLang.HolProg 64 :=
.seq NamedBody837_249 NamedBody837_264

def NamedBody837_266 : StackLang.HolProg 64 :=
.seq NamedBody837_248 NamedBody837_265

def NamedBody837_267 : StackLang.HolProg 64 :=
.seq NamedBody837_247 NamedBody837_266

def NamedBody837_268 : StackLang.HolProg 64 :=
.seq NamedBody837_246 NamedBody837_267

def NamedBody837_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_276 : StackLang.HolProg 64 :=
.seq NamedBody837_274 NamedBody837_275

def NamedBody837_277 : StackLang.HolProg 64 :=
.seq NamedBody837_273 NamedBody837_276

def NamedBody837_278 : StackLang.HolProg 64 :=
.seq NamedBody837_272 NamedBody837_277

def NamedBody837_279 : StackLang.HolProg 64 :=
.seq NamedBody837_271 NamedBody837_278

def NamedBody837_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_282 : StackLang.HolProg 64 :=
.seq NamedBody837_280 NamedBody837_281

def NamedBody837_283 : StackLang.HolProg 64 :=
.call (some (NamedBody837_279, 1, 837, 8)) (Sum.inl 830) (some (NamedBody837_282, 837, 9))

def NamedBody837_284 : StackLang.HolProg 64 :=
.seq NamedBody837_270 NamedBody837_283

def NamedBody837_285 : StackLang.HolProg 64 :=
.seq NamedBody837_269 NamedBody837_284

def NamedBody837_286 : StackLang.HolProg 64 :=
.seq NamedBody837_268 NamedBody837_285

def NamedBody837_287 : StackLang.HolProg 64 :=
.seq NamedBody837_239 NamedBody837_286

def NamedBody837_288 : StackLang.HolProg 64 :=
.seq NamedBody837_236 NamedBody837_287

def NamedBody837_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_294 : StackLang.HolProg 64 :=
.seq NamedBody837_292 NamedBody837_293

def NamedBody837_295 : StackLang.HolProg 64 :=
.seq NamedBody837_291 NamedBody837_294

def NamedBody837_296 : StackLang.HolProg 64 :=
.seq NamedBody837_290 NamedBody837_295

def NamedBody837_297 : StackLang.HolProg 64 :=
.seq NamedBody837_289 NamedBody837_296

def NamedBody837_298 : StackLang.HolProg 64 :=
.seq NamedBody837_288 NamedBody837_297

def NamedBody837_299 : StackLang.HolProg 64 :=
.seq NamedBody837_235 NamedBody837_298

def NamedBody837_300 : StackLang.HolProg 64 :=
.seq NamedBody837_232 NamedBody837_299

def NamedBody837_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_300 NamedBody837_301

def NamedBody837_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def NamedBody837_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_310 : StackLang.HolProg 64 :=
.seq NamedBody837_308 NamedBody837_309

def NamedBody837_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4185#64)

def NamedBody837_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_314 : StackLang.HolProg 64 :=
.seq NamedBody837_312 NamedBody837_313

def NamedBody837_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_318 : StackLang.HolProg 64 :=
.seq NamedBody837_316 NamedBody837_317

def NamedBody837_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_320 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_318 NamedBody837_319

def NamedBody837_321 : StackLang.HolProg 64 :=
.seq NamedBody837_315 NamedBody837_320

def NamedBody837_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 11

def NamedBody837_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_331 : StackLang.HolProg 64 :=
.seq NamedBody837_329 NamedBody837_330

def NamedBody837_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_333 : StackLang.HolProg 64 :=
.seq NamedBody837_331 NamedBody837_332

def NamedBody837_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_335 : StackLang.HolProg 64 :=
.seq NamedBody837_333 NamedBody837_334

def NamedBody837_336 : StackLang.HolProg 64 :=
.seq NamedBody837_328 NamedBody837_335

def NamedBody837_337 : StackLang.HolProg 64 :=
.seq NamedBody837_327 NamedBody837_336

def NamedBody837_338 : StackLang.HolProg 64 :=
.seq NamedBody837_326 NamedBody837_337

def NamedBody837_339 : StackLang.HolProg 64 :=
.seq NamedBody837_325 NamedBody837_338

def NamedBody837_340 : StackLang.HolProg 64 :=
.seq NamedBody837_324 NamedBody837_339

def NamedBody837_341 : StackLang.HolProg 64 :=
.seq NamedBody837_323 NamedBody837_340

def NamedBody837_342 : StackLang.HolProg 64 :=
.seq NamedBody837_322 NamedBody837_341

def NamedBody837_343 : StackLang.HolProg 64 :=
.seq NamedBody837_321 NamedBody837_342

def NamedBody837_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_351 : StackLang.HolProg 64 :=
.seq NamedBody837_349 NamedBody837_350

def NamedBody837_352 : StackLang.HolProg 64 :=
.seq NamedBody837_348 NamedBody837_351

def NamedBody837_353 : StackLang.HolProg 64 :=
.seq NamedBody837_347 NamedBody837_352

def NamedBody837_354 : StackLang.HolProg 64 :=
.seq NamedBody837_346 NamedBody837_353

def NamedBody837_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_357 : StackLang.HolProg 64 :=
.seq NamedBody837_355 NamedBody837_356

def NamedBody837_358 : StackLang.HolProg 64 :=
.call (some (NamedBody837_354, 1, 837, 10)) (Sum.inl 701) (some (NamedBody837_357, 837, 11))

def NamedBody837_359 : StackLang.HolProg 64 :=
.seq NamedBody837_345 NamedBody837_358

def NamedBody837_360 : StackLang.HolProg 64 :=
.seq NamedBody837_344 NamedBody837_359

def NamedBody837_361 : StackLang.HolProg 64 :=
.seq NamedBody837_343 NamedBody837_360

def NamedBody837_362 : StackLang.HolProg 64 :=
.seq NamedBody837_314 NamedBody837_361

def NamedBody837_363 : StackLang.HolProg 64 :=
.seq NamedBody837_311 NamedBody837_362

def NamedBody837_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_369 : StackLang.HolProg 64 :=
.seq NamedBody837_367 NamedBody837_368

def NamedBody837_370 : StackLang.HolProg 64 :=
.seq NamedBody837_366 NamedBody837_369

def NamedBody837_371 : StackLang.HolProg 64 :=
.seq NamedBody837_365 NamedBody837_370

def NamedBody837_372 : StackLang.HolProg 64 :=
.seq NamedBody837_364 NamedBody837_371

def NamedBody837_373 : StackLang.HolProg 64 :=
.seq NamedBody837_363 NamedBody837_372

def NamedBody837_374 : StackLang.HolProg 64 :=
.seq NamedBody837_310 NamedBody837_373

def NamedBody837_375 : StackLang.HolProg 64 :=
.seq NamedBody837_307 NamedBody837_374

def NamedBody837_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_375 NamedBody837_376

def NamedBody837_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def NamedBody837_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_385 : StackLang.HolProg 64 :=
.seq NamedBody837_383 NamedBody837_384

def NamedBody837_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4186#64)

def NamedBody837_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_389 : StackLang.HolProg 64 :=
.seq NamedBody837_387 NamedBody837_388

def NamedBody837_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_393 : StackLang.HolProg 64 :=
.seq NamedBody837_391 NamedBody837_392

def NamedBody837_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_395 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_393 NamedBody837_394

def NamedBody837_396 : StackLang.HolProg 64 :=
.seq NamedBody837_390 NamedBody837_395

def NamedBody837_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 13

def NamedBody837_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_406 : StackLang.HolProg 64 :=
.seq NamedBody837_404 NamedBody837_405

def NamedBody837_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_408 : StackLang.HolProg 64 :=
.seq NamedBody837_406 NamedBody837_407

def NamedBody837_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_410 : StackLang.HolProg 64 :=
.seq NamedBody837_408 NamedBody837_409

def NamedBody837_411 : StackLang.HolProg 64 :=
.seq NamedBody837_403 NamedBody837_410

def NamedBody837_412 : StackLang.HolProg 64 :=
.seq NamedBody837_402 NamedBody837_411

def NamedBody837_413 : StackLang.HolProg 64 :=
.seq NamedBody837_401 NamedBody837_412

def NamedBody837_414 : StackLang.HolProg 64 :=
.seq NamedBody837_400 NamedBody837_413

def NamedBody837_415 : StackLang.HolProg 64 :=
.seq NamedBody837_399 NamedBody837_414

def NamedBody837_416 : StackLang.HolProg 64 :=
.seq NamedBody837_398 NamedBody837_415

def NamedBody837_417 : StackLang.HolProg 64 :=
.seq NamedBody837_397 NamedBody837_416

def NamedBody837_418 : StackLang.HolProg 64 :=
.seq NamedBody837_396 NamedBody837_417

def NamedBody837_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_426 : StackLang.HolProg 64 :=
.seq NamedBody837_424 NamedBody837_425

def NamedBody837_427 : StackLang.HolProg 64 :=
.seq NamedBody837_423 NamedBody837_426

def NamedBody837_428 : StackLang.HolProg 64 :=
.seq NamedBody837_422 NamedBody837_427

def NamedBody837_429 : StackLang.HolProg 64 :=
.seq NamedBody837_421 NamedBody837_428

def NamedBody837_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_431 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_432 : StackLang.HolProg 64 :=
.seq NamedBody837_430 NamedBody837_431

def NamedBody837_433 : StackLang.HolProg 64 :=
.call (some (NamedBody837_429, 1, 837, 12)) (Sum.inl 702) (some (NamedBody837_432, 837, 13))

def NamedBody837_434 : StackLang.HolProg 64 :=
.seq NamedBody837_420 NamedBody837_433

def NamedBody837_435 : StackLang.HolProg 64 :=
.seq NamedBody837_419 NamedBody837_434

def NamedBody837_436 : StackLang.HolProg 64 :=
.seq NamedBody837_418 NamedBody837_435

def NamedBody837_437 : StackLang.HolProg 64 :=
.seq NamedBody837_389 NamedBody837_436

def NamedBody837_438 : StackLang.HolProg 64 :=
.seq NamedBody837_386 NamedBody837_437

def NamedBody837_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_444 : StackLang.HolProg 64 :=
.seq NamedBody837_442 NamedBody837_443

def NamedBody837_445 : StackLang.HolProg 64 :=
.seq NamedBody837_441 NamedBody837_444

def NamedBody837_446 : StackLang.HolProg 64 :=
.seq NamedBody837_440 NamedBody837_445

def NamedBody837_447 : StackLang.HolProg 64 :=
.seq NamedBody837_439 NamedBody837_446

def NamedBody837_448 : StackLang.HolProg 64 :=
.seq NamedBody837_438 NamedBody837_447

def NamedBody837_449 : StackLang.HolProg 64 :=
.seq NamedBody837_385 NamedBody837_448

def NamedBody837_450 : StackLang.HolProg 64 :=
.seq NamedBody837_382 NamedBody837_449

def NamedBody837_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_452 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_450 NamedBody837_451

def NamedBody837_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def NamedBody837_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_460 : StackLang.HolProg 64 :=
.seq NamedBody837_458 NamedBody837_459

def NamedBody837_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4187#64)

def NamedBody837_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_464 : StackLang.HolProg 64 :=
.seq NamedBody837_462 NamedBody837_463

def NamedBody837_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_468 : StackLang.HolProg 64 :=
.seq NamedBody837_466 NamedBody837_467

def NamedBody837_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_470 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_468 NamedBody837_469

def NamedBody837_471 : StackLang.HolProg 64 :=
.seq NamedBody837_465 NamedBody837_470

def NamedBody837_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 15

def NamedBody837_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_481 : StackLang.HolProg 64 :=
.seq NamedBody837_479 NamedBody837_480

def NamedBody837_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_483 : StackLang.HolProg 64 :=
.seq NamedBody837_481 NamedBody837_482

def NamedBody837_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_485 : StackLang.HolProg 64 :=
.seq NamedBody837_483 NamedBody837_484

def NamedBody837_486 : StackLang.HolProg 64 :=
.seq NamedBody837_478 NamedBody837_485

def NamedBody837_487 : StackLang.HolProg 64 :=
.seq NamedBody837_477 NamedBody837_486

def NamedBody837_488 : StackLang.HolProg 64 :=
.seq NamedBody837_476 NamedBody837_487

def NamedBody837_489 : StackLang.HolProg 64 :=
.seq NamedBody837_475 NamedBody837_488

def NamedBody837_490 : StackLang.HolProg 64 :=
.seq NamedBody837_474 NamedBody837_489

def NamedBody837_491 : StackLang.HolProg 64 :=
.seq NamedBody837_473 NamedBody837_490

def NamedBody837_492 : StackLang.HolProg 64 :=
.seq NamedBody837_472 NamedBody837_491

def NamedBody837_493 : StackLang.HolProg 64 :=
.seq NamedBody837_471 NamedBody837_492

def NamedBody837_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_501 : StackLang.HolProg 64 :=
.seq NamedBody837_499 NamedBody837_500

def NamedBody837_502 : StackLang.HolProg 64 :=
.seq NamedBody837_498 NamedBody837_501

def NamedBody837_503 : StackLang.HolProg 64 :=
.seq NamedBody837_497 NamedBody837_502

def NamedBody837_504 : StackLang.HolProg 64 :=
.seq NamedBody837_496 NamedBody837_503

def NamedBody837_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_506 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_507 : StackLang.HolProg 64 :=
.seq NamedBody837_505 NamedBody837_506

def NamedBody837_508 : StackLang.HolProg 64 :=
.call (some (NamedBody837_504, 1, 837, 14)) (Sum.inl 703) (some (NamedBody837_507, 837, 15))

def NamedBody837_509 : StackLang.HolProg 64 :=
.seq NamedBody837_495 NamedBody837_508

def NamedBody837_510 : StackLang.HolProg 64 :=
.seq NamedBody837_494 NamedBody837_509

def NamedBody837_511 : StackLang.HolProg 64 :=
.seq NamedBody837_493 NamedBody837_510

def NamedBody837_512 : StackLang.HolProg 64 :=
.seq NamedBody837_464 NamedBody837_511

def NamedBody837_513 : StackLang.HolProg 64 :=
.seq NamedBody837_461 NamedBody837_512

def NamedBody837_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_519 : StackLang.HolProg 64 :=
.seq NamedBody837_517 NamedBody837_518

def NamedBody837_520 : StackLang.HolProg 64 :=
.seq NamedBody837_516 NamedBody837_519

def NamedBody837_521 : StackLang.HolProg 64 :=
.seq NamedBody837_515 NamedBody837_520

def NamedBody837_522 : StackLang.HolProg 64 :=
.seq NamedBody837_514 NamedBody837_521

def NamedBody837_523 : StackLang.HolProg 64 :=
.seq NamedBody837_513 NamedBody837_522

def NamedBody837_524 : StackLang.HolProg 64 :=
.seq NamedBody837_460 NamedBody837_523

def NamedBody837_525 : StackLang.HolProg 64 :=
.seq NamedBody837_457 NamedBody837_524

def NamedBody837_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_527 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_525 NamedBody837_526

def NamedBody837_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def NamedBody837_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_535 : StackLang.HolProg 64 :=
.seq NamedBody837_533 NamedBody837_534

def NamedBody837_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4188#64)

def NamedBody837_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_539 : StackLang.HolProg 64 :=
.seq NamedBody837_537 NamedBody837_538

def NamedBody837_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_543 : StackLang.HolProg 64 :=
.seq NamedBody837_541 NamedBody837_542

def NamedBody837_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_545 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_543 NamedBody837_544

def NamedBody837_546 : StackLang.HolProg 64 :=
.seq NamedBody837_540 NamedBody837_545

def NamedBody837_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 17

def NamedBody837_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_556 : StackLang.HolProg 64 :=
.seq NamedBody837_554 NamedBody837_555

def NamedBody837_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_558 : StackLang.HolProg 64 :=
.seq NamedBody837_556 NamedBody837_557

def NamedBody837_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_560 : StackLang.HolProg 64 :=
.seq NamedBody837_558 NamedBody837_559

def NamedBody837_561 : StackLang.HolProg 64 :=
.seq NamedBody837_553 NamedBody837_560

def NamedBody837_562 : StackLang.HolProg 64 :=
.seq NamedBody837_552 NamedBody837_561

def NamedBody837_563 : StackLang.HolProg 64 :=
.seq NamedBody837_551 NamedBody837_562

def NamedBody837_564 : StackLang.HolProg 64 :=
.seq NamedBody837_550 NamedBody837_563

def NamedBody837_565 : StackLang.HolProg 64 :=
.seq NamedBody837_549 NamedBody837_564

def NamedBody837_566 : StackLang.HolProg 64 :=
.seq NamedBody837_548 NamedBody837_565

def NamedBody837_567 : StackLang.HolProg 64 :=
.seq NamedBody837_547 NamedBody837_566

def NamedBody837_568 : StackLang.HolProg 64 :=
.seq NamedBody837_546 NamedBody837_567

def NamedBody837_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_576 : StackLang.HolProg 64 :=
.seq NamedBody837_574 NamedBody837_575

def NamedBody837_577 : StackLang.HolProg 64 :=
.seq NamedBody837_573 NamedBody837_576

def NamedBody837_578 : StackLang.HolProg 64 :=
.seq NamedBody837_572 NamedBody837_577

def NamedBody837_579 : StackLang.HolProg 64 :=
.seq NamedBody837_571 NamedBody837_578

def NamedBody837_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_581 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_582 : StackLang.HolProg 64 :=
.seq NamedBody837_580 NamedBody837_581

def NamedBody837_583 : StackLang.HolProg 64 :=
.call (some (NamedBody837_579, 1, 837, 16)) (Sum.inl 836) (some (NamedBody837_582, 837, 17))

def NamedBody837_584 : StackLang.HolProg 64 :=
.seq NamedBody837_570 NamedBody837_583

def NamedBody837_585 : StackLang.HolProg 64 :=
.seq NamedBody837_569 NamedBody837_584

def NamedBody837_586 : StackLang.HolProg 64 :=
.seq NamedBody837_568 NamedBody837_585

def NamedBody837_587 : StackLang.HolProg 64 :=
.seq NamedBody837_539 NamedBody837_586

def NamedBody837_588 : StackLang.HolProg 64 :=
.seq NamedBody837_536 NamedBody837_587

def NamedBody837_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_594 : StackLang.HolProg 64 :=
.seq NamedBody837_592 NamedBody837_593

def NamedBody837_595 : StackLang.HolProg 64 :=
.seq NamedBody837_591 NamedBody837_594

def NamedBody837_596 : StackLang.HolProg 64 :=
.seq NamedBody837_590 NamedBody837_595

def NamedBody837_597 : StackLang.HolProg 64 :=
.seq NamedBody837_589 NamedBody837_596

def NamedBody837_598 : StackLang.HolProg 64 :=
.seq NamedBody837_588 NamedBody837_597

def NamedBody837_599 : StackLang.HolProg 64 :=
.seq NamedBody837_535 NamedBody837_598

def NamedBody837_600 : StackLang.HolProg 64 :=
.seq NamedBody837_532 NamedBody837_599

def NamedBody837_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_602 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_600 NamedBody837_601

def NamedBody837_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def NamedBody837_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_610 : StackLang.HolProg 64 :=
.seq NamedBody837_608 NamedBody837_609

def NamedBody837_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4189#64)

def NamedBody837_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_614 : StackLang.HolProg 64 :=
.seq NamedBody837_612 NamedBody837_613

def NamedBody837_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_618 : StackLang.HolProg 64 :=
.seq NamedBody837_616 NamedBody837_617

def NamedBody837_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_620 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_618 NamedBody837_619

def NamedBody837_621 : StackLang.HolProg 64 :=
.seq NamedBody837_615 NamedBody837_620

def NamedBody837_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 19

def NamedBody837_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_631 : StackLang.HolProg 64 :=
.seq NamedBody837_629 NamedBody837_630

def NamedBody837_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_633 : StackLang.HolProg 64 :=
.seq NamedBody837_631 NamedBody837_632

def NamedBody837_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_635 : StackLang.HolProg 64 :=
.seq NamedBody837_633 NamedBody837_634

def NamedBody837_636 : StackLang.HolProg 64 :=
.seq NamedBody837_628 NamedBody837_635

def NamedBody837_637 : StackLang.HolProg 64 :=
.seq NamedBody837_627 NamedBody837_636

def NamedBody837_638 : StackLang.HolProg 64 :=
.seq NamedBody837_626 NamedBody837_637

def NamedBody837_639 : StackLang.HolProg 64 :=
.seq NamedBody837_625 NamedBody837_638

def NamedBody837_640 : StackLang.HolProg 64 :=
.seq NamedBody837_624 NamedBody837_639

def NamedBody837_641 : StackLang.HolProg 64 :=
.seq NamedBody837_623 NamedBody837_640

def NamedBody837_642 : StackLang.HolProg 64 :=
.seq NamedBody837_622 NamedBody837_641

def NamedBody837_643 : StackLang.HolProg 64 :=
.seq NamedBody837_621 NamedBody837_642

def NamedBody837_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_651 : StackLang.HolProg 64 :=
.seq NamedBody837_649 NamedBody837_650

def NamedBody837_652 : StackLang.HolProg 64 :=
.seq NamedBody837_648 NamedBody837_651

def NamedBody837_653 : StackLang.HolProg 64 :=
.seq NamedBody837_647 NamedBody837_652

def NamedBody837_654 : StackLang.HolProg 64 :=
.seq NamedBody837_646 NamedBody837_653

def NamedBody837_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_656 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_657 : StackLang.HolProg 64 :=
.seq NamedBody837_655 NamedBody837_656

def NamedBody837_658 : StackLang.HolProg 64 :=
.call (some (NamedBody837_654, 1, 837, 18)) (Sum.inl 834) (some (NamedBody837_657, 837, 19))

def NamedBody837_659 : StackLang.HolProg 64 :=
.seq NamedBody837_645 NamedBody837_658

def NamedBody837_660 : StackLang.HolProg 64 :=
.seq NamedBody837_644 NamedBody837_659

def NamedBody837_661 : StackLang.HolProg 64 :=
.seq NamedBody837_643 NamedBody837_660

def NamedBody837_662 : StackLang.HolProg 64 :=
.seq NamedBody837_614 NamedBody837_661

def NamedBody837_663 : StackLang.HolProg 64 :=
.seq NamedBody837_611 NamedBody837_662

def NamedBody837_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_669 : StackLang.HolProg 64 :=
.seq NamedBody837_667 NamedBody837_668

def NamedBody837_670 : StackLang.HolProg 64 :=
.seq NamedBody837_666 NamedBody837_669

def NamedBody837_671 : StackLang.HolProg 64 :=
.seq NamedBody837_665 NamedBody837_670

def NamedBody837_672 : StackLang.HolProg 64 :=
.seq NamedBody837_664 NamedBody837_671

def NamedBody837_673 : StackLang.HolProg 64 :=
.seq NamedBody837_663 NamedBody837_672

def NamedBody837_674 : StackLang.HolProg 64 :=
.seq NamedBody837_610 NamedBody837_673

def NamedBody837_675 : StackLang.HolProg 64 :=
.seq NamedBody837_607 NamedBody837_674

def NamedBody837_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_677 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_675 NamedBody837_676

def NamedBody837_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def NamedBody837_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_685 : StackLang.HolProg 64 :=
.seq NamedBody837_683 NamedBody837_684

def NamedBody837_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4190#64)

def NamedBody837_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_689 : StackLang.HolProg 64 :=
.seq NamedBody837_687 NamedBody837_688

def NamedBody837_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_693 : StackLang.HolProg 64 :=
.seq NamedBody837_691 NamedBody837_692

def NamedBody837_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_695 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_693 NamedBody837_694

def NamedBody837_696 : StackLang.HolProg 64 :=
.seq NamedBody837_690 NamedBody837_695

def NamedBody837_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 21

def NamedBody837_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_706 : StackLang.HolProg 64 :=
.seq NamedBody837_704 NamedBody837_705

def NamedBody837_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_708 : StackLang.HolProg 64 :=
.seq NamedBody837_706 NamedBody837_707

def NamedBody837_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_710 : StackLang.HolProg 64 :=
.seq NamedBody837_708 NamedBody837_709

def NamedBody837_711 : StackLang.HolProg 64 :=
.seq NamedBody837_703 NamedBody837_710

def NamedBody837_712 : StackLang.HolProg 64 :=
.seq NamedBody837_702 NamedBody837_711

def NamedBody837_713 : StackLang.HolProg 64 :=
.seq NamedBody837_701 NamedBody837_712

def NamedBody837_714 : StackLang.HolProg 64 :=
.seq NamedBody837_700 NamedBody837_713

def NamedBody837_715 : StackLang.HolProg 64 :=
.seq NamedBody837_699 NamedBody837_714

def NamedBody837_716 : StackLang.HolProg 64 :=
.seq NamedBody837_698 NamedBody837_715

def NamedBody837_717 : StackLang.HolProg 64 :=
.seq NamedBody837_697 NamedBody837_716

def NamedBody837_718 : StackLang.HolProg 64 :=
.seq NamedBody837_696 NamedBody837_717

def NamedBody837_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_726 : StackLang.HolProg 64 :=
.seq NamedBody837_724 NamedBody837_725

def NamedBody837_727 : StackLang.HolProg 64 :=
.seq NamedBody837_723 NamedBody837_726

def NamedBody837_728 : StackLang.HolProg 64 :=
.seq NamedBody837_722 NamedBody837_727

def NamedBody837_729 : StackLang.HolProg 64 :=
.seq NamedBody837_721 NamedBody837_728

def NamedBody837_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_731 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_732 : StackLang.HolProg 64 :=
.seq NamedBody837_730 NamedBody837_731

def NamedBody837_733 : StackLang.HolProg 64 :=
.call (some (NamedBody837_729, 1, 837, 20)) (Sum.inl 828) (some (NamedBody837_732, 837, 21))

def NamedBody837_734 : StackLang.HolProg 64 :=
.seq NamedBody837_720 NamedBody837_733

def NamedBody837_735 : StackLang.HolProg 64 :=
.seq NamedBody837_719 NamedBody837_734

def NamedBody837_736 : StackLang.HolProg 64 :=
.seq NamedBody837_718 NamedBody837_735

def NamedBody837_737 : StackLang.HolProg 64 :=
.seq NamedBody837_689 NamedBody837_736

def NamedBody837_738 : StackLang.HolProg 64 :=
.seq NamedBody837_686 NamedBody837_737

def NamedBody837_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_744 : StackLang.HolProg 64 :=
.seq NamedBody837_742 NamedBody837_743

def NamedBody837_745 : StackLang.HolProg 64 :=
.seq NamedBody837_741 NamedBody837_744

def NamedBody837_746 : StackLang.HolProg 64 :=
.seq NamedBody837_740 NamedBody837_745

def NamedBody837_747 : StackLang.HolProg 64 :=
.seq NamedBody837_739 NamedBody837_746

def NamedBody837_748 : StackLang.HolProg 64 :=
.seq NamedBody837_738 NamedBody837_747

def NamedBody837_749 : StackLang.HolProg 64 :=
.seq NamedBody837_685 NamedBody837_748

def NamedBody837_750 : StackLang.HolProg 64 :=
.seq NamedBody837_682 NamedBody837_749

def NamedBody837_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_752 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_750 NamedBody837_751

def NamedBody837_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def NamedBody837_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_760 : StackLang.HolProg 64 :=
.seq NamedBody837_758 NamedBody837_759

def NamedBody837_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4191#64)

def NamedBody837_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_764 : StackLang.HolProg 64 :=
.seq NamedBody837_762 NamedBody837_763

def NamedBody837_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_768 : StackLang.HolProg 64 :=
.seq NamedBody837_766 NamedBody837_767

def NamedBody837_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_770 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_768 NamedBody837_769

def NamedBody837_771 : StackLang.HolProg 64 :=
.seq NamedBody837_765 NamedBody837_770

def NamedBody837_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 23

def NamedBody837_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_781 : StackLang.HolProg 64 :=
.seq NamedBody837_779 NamedBody837_780

def NamedBody837_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_783 : StackLang.HolProg 64 :=
.seq NamedBody837_781 NamedBody837_782

def NamedBody837_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_785 : StackLang.HolProg 64 :=
.seq NamedBody837_783 NamedBody837_784

def NamedBody837_786 : StackLang.HolProg 64 :=
.seq NamedBody837_778 NamedBody837_785

def NamedBody837_787 : StackLang.HolProg 64 :=
.seq NamedBody837_777 NamedBody837_786

def NamedBody837_788 : StackLang.HolProg 64 :=
.seq NamedBody837_776 NamedBody837_787

def NamedBody837_789 : StackLang.HolProg 64 :=
.seq NamedBody837_775 NamedBody837_788

def NamedBody837_790 : StackLang.HolProg 64 :=
.seq NamedBody837_774 NamedBody837_789

def NamedBody837_791 : StackLang.HolProg 64 :=
.seq NamedBody837_773 NamedBody837_790

def NamedBody837_792 : StackLang.HolProg 64 :=
.seq NamedBody837_772 NamedBody837_791

def NamedBody837_793 : StackLang.HolProg 64 :=
.seq NamedBody837_771 NamedBody837_792

def NamedBody837_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_801 : StackLang.HolProg 64 :=
.seq NamedBody837_799 NamedBody837_800

def NamedBody837_802 : StackLang.HolProg 64 :=
.seq NamedBody837_798 NamedBody837_801

def NamedBody837_803 : StackLang.HolProg 64 :=
.seq NamedBody837_797 NamedBody837_802

def NamedBody837_804 : StackLang.HolProg 64 :=
.seq NamedBody837_796 NamedBody837_803

def NamedBody837_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_806 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_807 : StackLang.HolProg 64 :=
.seq NamedBody837_805 NamedBody837_806

def NamedBody837_808 : StackLang.HolProg 64 :=
.call (some (NamedBody837_804, 1, 837, 22)) (Sum.inl 821) (some (NamedBody837_807, 837, 23))

def NamedBody837_809 : StackLang.HolProg 64 :=
.seq NamedBody837_795 NamedBody837_808

def NamedBody837_810 : StackLang.HolProg 64 :=
.seq NamedBody837_794 NamedBody837_809

def NamedBody837_811 : StackLang.HolProg 64 :=
.seq NamedBody837_793 NamedBody837_810

def NamedBody837_812 : StackLang.HolProg 64 :=
.seq NamedBody837_764 NamedBody837_811

def NamedBody837_813 : StackLang.HolProg 64 :=
.seq NamedBody837_761 NamedBody837_812

def NamedBody837_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_819 : StackLang.HolProg 64 :=
.seq NamedBody837_817 NamedBody837_818

def NamedBody837_820 : StackLang.HolProg 64 :=
.seq NamedBody837_816 NamedBody837_819

def NamedBody837_821 : StackLang.HolProg 64 :=
.seq NamedBody837_815 NamedBody837_820

def NamedBody837_822 : StackLang.HolProg 64 :=
.seq NamedBody837_814 NamedBody837_821

def NamedBody837_823 : StackLang.HolProg 64 :=
.seq NamedBody837_813 NamedBody837_822

def NamedBody837_824 : StackLang.HolProg 64 :=
.seq NamedBody837_760 NamedBody837_823

def NamedBody837_825 : StackLang.HolProg 64 :=
.seq NamedBody837_757 NamedBody837_824

def NamedBody837_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_827 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_825 NamedBody837_826

def NamedBody837_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def NamedBody837_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_835 : StackLang.HolProg 64 :=
.seq NamedBody837_833 NamedBody837_834

def NamedBody837_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4192#64)

def NamedBody837_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_839 : StackLang.HolProg 64 :=
.seq NamedBody837_837 NamedBody837_838

def NamedBody837_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_843 : StackLang.HolProg 64 :=
.seq NamedBody837_841 NamedBody837_842

def NamedBody837_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_845 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_843 NamedBody837_844

def NamedBody837_846 : StackLang.HolProg 64 :=
.seq NamedBody837_840 NamedBody837_845

def NamedBody837_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 25

def NamedBody837_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_856 : StackLang.HolProg 64 :=
.seq NamedBody837_854 NamedBody837_855

def NamedBody837_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_858 : StackLang.HolProg 64 :=
.seq NamedBody837_856 NamedBody837_857

def NamedBody837_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_860 : StackLang.HolProg 64 :=
.seq NamedBody837_858 NamedBody837_859

def NamedBody837_861 : StackLang.HolProg 64 :=
.seq NamedBody837_853 NamedBody837_860

def NamedBody837_862 : StackLang.HolProg 64 :=
.seq NamedBody837_852 NamedBody837_861

def NamedBody837_863 : StackLang.HolProg 64 :=
.seq NamedBody837_851 NamedBody837_862

def NamedBody837_864 : StackLang.HolProg 64 :=
.seq NamedBody837_850 NamedBody837_863

def NamedBody837_865 : StackLang.HolProg 64 :=
.seq NamedBody837_849 NamedBody837_864

def NamedBody837_866 : StackLang.HolProg 64 :=
.seq NamedBody837_848 NamedBody837_865

def NamedBody837_867 : StackLang.HolProg 64 :=
.seq NamedBody837_847 NamedBody837_866

def NamedBody837_868 : StackLang.HolProg 64 :=
.seq NamedBody837_846 NamedBody837_867

def NamedBody837_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_876 : StackLang.HolProg 64 :=
.seq NamedBody837_874 NamedBody837_875

def NamedBody837_877 : StackLang.HolProg 64 :=
.seq NamedBody837_873 NamedBody837_876

def NamedBody837_878 : StackLang.HolProg 64 :=
.seq NamedBody837_872 NamedBody837_877

def NamedBody837_879 : StackLang.HolProg 64 :=
.seq NamedBody837_871 NamedBody837_878

def NamedBody837_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_881 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_882 : StackLang.HolProg 64 :=
.seq NamedBody837_880 NamedBody837_881

def NamedBody837_883 : StackLang.HolProg 64 :=
.call (some (NamedBody837_879, 1, 837, 24)) (Sum.inl 822) (some (NamedBody837_882, 837, 25))

def NamedBody837_884 : StackLang.HolProg 64 :=
.seq NamedBody837_870 NamedBody837_883

def NamedBody837_885 : StackLang.HolProg 64 :=
.seq NamedBody837_869 NamedBody837_884

def NamedBody837_886 : StackLang.HolProg 64 :=
.seq NamedBody837_868 NamedBody837_885

def NamedBody837_887 : StackLang.HolProg 64 :=
.seq NamedBody837_839 NamedBody837_886

def NamedBody837_888 : StackLang.HolProg 64 :=
.seq NamedBody837_836 NamedBody837_887

def NamedBody837_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_894 : StackLang.HolProg 64 :=
.seq NamedBody837_892 NamedBody837_893

def NamedBody837_895 : StackLang.HolProg 64 :=
.seq NamedBody837_891 NamedBody837_894

def NamedBody837_896 : StackLang.HolProg 64 :=
.seq NamedBody837_890 NamedBody837_895

def NamedBody837_897 : StackLang.HolProg 64 :=
.seq NamedBody837_889 NamedBody837_896

def NamedBody837_898 : StackLang.HolProg 64 :=
.seq NamedBody837_888 NamedBody837_897

def NamedBody837_899 : StackLang.HolProg 64 :=
.seq NamedBody837_835 NamedBody837_898

def NamedBody837_900 : StackLang.HolProg 64 :=
.seq NamedBody837_832 NamedBody837_899

def NamedBody837_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_902 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_900 NamedBody837_901

def NamedBody837_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def NamedBody837_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_910 : StackLang.HolProg 64 :=
.seq NamedBody837_908 NamedBody837_909

def NamedBody837_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4193#64)

def NamedBody837_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_914 : StackLang.HolProg 64 :=
.seq NamedBody837_912 NamedBody837_913

def NamedBody837_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_918 : StackLang.HolProg 64 :=
.seq NamedBody837_916 NamedBody837_917

def NamedBody837_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_920 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_918 NamedBody837_919

def NamedBody837_921 : StackLang.HolProg 64 :=
.seq NamedBody837_915 NamedBody837_920

def NamedBody837_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 27

def NamedBody837_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_931 : StackLang.HolProg 64 :=
.seq NamedBody837_929 NamedBody837_930

def NamedBody837_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_933 : StackLang.HolProg 64 :=
.seq NamedBody837_931 NamedBody837_932

def NamedBody837_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_935 : StackLang.HolProg 64 :=
.seq NamedBody837_933 NamedBody837_934

def NamedBody837_936 : StackLang.HolProg 64 :=
.seq NamedBody837_928 NamedBody837_935

def NamedBody837_937 : StackLang.HolProg 64 :=
.seq NamedBody837_927 NamedBody837_936

def NamedBody837_938 : StackLang.HolProg 64 :=
.seq NamedBody837_926 NamedBody837_937

def NamedBody837_939 : StackLang.HolProg 64 :=
.seq NamedBody837_925 NamedBody837_938

def NamedBody837_940 : StackLang.HolProg 64 :=
.seq NamedBody837_924 NamedBody837_939

def NamedBody837_941 : StackLang.HolProg 64 :=
.seq NamedBody837_923 NamedBody837_940

def NamedBody837_942 : StackLang.HolProg 64 :=
.seq NamedBody837_922 NamedBody837_941

def NamedBody837_943 : StackLang.HolProg 64 :=
.seq NamedBody837_921 NamedBody837_942

def NamedBody837_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_951 : StackLang.HolProg 64 :=
.seq NamedBody837_949 NamedBody837_950

def NamedBody837_952 : StackLang.HolProg 64 :=
.seq NamedBody837_948 NamedBody837_951

def NamedBody837_953 : StackLang.HolProg 64 :=
.seq NamedBody837_947 NamedBody837_952

def NamedBody837_954 : StackLang.HolProg 64 :=
.seq NamedBody837_946 NamedBody837_953

def NamedBody837_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_956 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_957 : StackLang.HolProg 64 :=
.seq NamedBody837_955 NamedBody837_956

def NamedBody837_958 : StackLang.HolProg 64 :=
.call (some (NamedBody837_954, 1, 837, 26)) (Sum.inl 823) (some (NamedBody837_957, 837, 27))

def NamedBody837_959 : StackLang.HolProg 64 :=
.seq NamedBody837_945 NamedBody837_958

def NamedBody837_960 : StackLang.HolProg 64 :=
.seq NamedBody837_944 NamedBody837_959

def NamedBody837_961 : StackLang.HolProg 64 :=
.seq NamedBody837_943 NamedBody837_960

def NamedBody837_962 : StackLang.HolProg 64 :=
.seq NamedBody837_914 NamedBody837_961

def NamedBody837_963 : StackLang.HolProg 64 :=
.seq NamedBody837_911 NamedBody837_962

def NamedBody837_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_969 : StackLang.HolProg 64 :=
.seq NamedBody837_967 NamedBody837_968

def NamedBody837_970 : StackLang.HolProg 64 :=
.seq NamedBody837_966 NamedBody837_969

def NamedBody837_971 : StackLang.HolProg 64 :=
.seq NamedBody837_965 NamedBody837_970

def NamedBody837_972 : StackLang.HolProg 64 :=
.seq NamedBody837_964 NamedBody837_971

def NamedBody837_973 : StackLang.HolProg 64 :=
.seq NamedBody837_963 NamedBody837_972

def NamedBody837_974 : StackLang.HolProg 64 :=
.seq NamedBody837_910 NamedBody837_973

def NamedBody837_975 : StackLang.HolProg 64 :=
.seq NamedBody837_907 NamedBody837_974

def NamedBody837_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_977 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_975 NamedBody837_976

def NamedBody837_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 14#64)

def NamedBody837_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_985 : StackLang.HolProg 64 :=
.seq NamedBody837_983 NamedBody837_984

def NamedBody837_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4194#64)

def NamedBody837_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_989 : StackLang.HolProg 64 :=
.seq NamedBody837_987 NamedBody837_988

def NamedBody837_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_993 : StackLang.HolProg 64 :=
.seq NamedBody837_991 NamedBody837_992

def NamedBody837_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_995 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_993 NamedBody837_994

def NamedBody837_996 : StackLang.HolProg 64 :=
.seq NamedBody837_990 NamedBody837_995

def NamedBody837_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 29

def NamedBody837_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_1006 : StackLang.HolProg 64 :=
.seq NamedBody837_1004 NamedBody837_1005

def NamedBody837_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_1008 : StackLang.HolProg 64 :=
.seq NamedBody837_1006 NamedBody837_1007

def NamedBody837_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1010 : StackLang.HolProg 64 :=
.seq NamedBody837_1008 NamedBody837_1009

def NamedBody837_1011 : StackLang.HolProg 64 :=
.seq NamedBody837_1003 NamedBody837_1010

def NamedBody837_1012 : StackLang.HolProg 64 :=
.seq NamedBody837_1002 NamedBody837_1011

def NamedBody837_1013 : StackLang.HolProg 64 :=
.seq NamedBody837_1001 NamedBody837_1012

def NamedBody837_1014 : StackLang.HolProg 64 :=
.seq NamedBody837_1000 NamedBody837_1013

def NamedBody837_1015 : StackLang.HolProg 64 :=
.seq NamedBody837_999 NamedBody837_1014

def NamedBody837_1016 : StackLang.HolProg 64 :=
.seq NamedBody837_998 NamedBody837_1015

def NamedBody837_1017 : StackLang.HolProg 64 :=
.seq NamedBody837_997 NamedBody837_1016

def NamedBody837_1018 : StackLang.HolProg 64 :=
.seq NamedBody837_996 NamedBody837_1017

def NamedBody837_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1026 : StackLang.HolProg 64 :=
.seq NamedBody837_1024 NamedBody837_1025

def NamedBody837_1027 : StackLang.HolProg 64 :=
.seq NamedBody837_1023 NamedBody837_1026

def NamedBody837_1028 : StackLang.HolProg 64 :=
.seq NamedBody837_1022 NamedBody837_1027

def NamedBody837_1029 : StackLang.HolProg 64 :=
.seq NamedBody837_1021 NamedBody837_1028

def NamedBody837_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1031 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_1032 : StackLang.HolProg 64 :=
.seq NamedBody837_1030 NamedBody837_1031

def NamedBody837_1033 : StackLang.HolProg 64 :=
.call (some (NamedBody837_1029, 1, 837, 28)) (Sum.inl 824) (some (NamedBody837_1032, 837, 29))

def NamedBody837_1034 : StackLang.HolProg 64 :=
.seq NamedBody837_1020 NamedBody837_1033

def NamedBody837_1035 : StackLang.HolProg 64 :=
.seq NamedBody837_1019 NamedBody837_1034

def NamedBody837_1036 : StackLang.HolProg 64 :=
.seq NamedBody837_1018 NamedBody837_1035

def NamedBody837_1037 : StackLang.HolProg 64 :=
.seq NamedBody837_989 NamedBody837_1036

def NamedBody837_1038 : StackLang.HolProg 64 :=
.seq NamedBody837_986 NamedBody837_1037

def NamedBody837_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_1044 : StackLang.HolProg 64 :=
.seq NamedBody837_1042 NamedBody837_1043

def NamedBody837_1045 : StackLang.HolProg 64 :=
.seq NamedBody837_1041 NamedBody837_1044

def NamedBody837_1046 : StackLang.HolProg 64 :=
.seq NamedBody837_1040 NamedBody837_1045

def NamedBody837_1047 : StackLang.HolProg 64 :=
.seq NamedBody837_1039 NamedBody837_1046

def NamedBody837_1048 : StackLang.HolProg 64 :=
.seq NamedBody837_1038 NamedBody837_1047

def NamedBody837_1049 : StackLang.HolProg 64 :=
.seq NamedBody837_985 NamedBody837_1048

def NamedBody837_1050 : StackLang.HolProg 64 :=
.seq NamedBody837_982 NamedBody837_1049

def NamedBody837_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1052 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_1050 NamedBody837_1051

def NamedBody837_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15#64)

def NamedBody837_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1060 : StackLang.HolProg 64 :=
.seq NamedBody837_1058 NamedBody837_1059

def NamedBody837_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4195#64)

def NamedBody837_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_1064 : StackLang.HolProg 64 :=
.seq NamedBody837_1062 NamedBody837_1063

def NamedBody837_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_1067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_1068 : StackLang.HolProg 64 :=
.seq NamedBody837_1066 NamedBody837_1067

def NamedBody837_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1070 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_1068 NamedBody837_1069

def NamedBody837_1071 : StackLang.HolProg 64 :=
.seq NamedBody837_1065 NamedBody837_1070

def NamedBody837_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 31

def NamedBody837_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_1080 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_1081 : StackLang.HolProg 64 :=
.seq NamedBody837_1079 NamedBody837_1080

def NamedBody837_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_1083 : StackLang.HolProg 64 :=
.seq NamedBody837_1081 NamedBody837_1082

def NamedBody837_1084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1085 : StackLang.HolProg 64 :=
.seq NamedBody837_1083 NamedBody837_1084

def NamedBody837_1086 : StackLang.HolProg 64 :=
.seq NamedBody837_1078 NamedBody837_1085

def NamedBody837_1087 : StackLang.HolProg 64 :=
.seq NamedBody837_1077 NamedBody837_1086

def NamedBody837_1088 : StackLang.HolProg 64 :=
.seq NamedBody837_1076 NamedBody837_1087

def NamedBody837_1089 : StackLang.HolProg 64 :=
.seq NamedBody837_1075 NamedBody837_1088

def NamedBody837_1090 : StackLang.HolProg 64 :=
.seq NamedBody837_1074 NamedBody837_1089

def NamedBody837_1091 : StackLang.HolProg 64 :=
.seq NamedBody837_1073 NamedBody837_1090

def NamedBody837_1092 : StackLang.HolProg 64 :=
.seq NamedBody837_1072 NamedBody837_1091

def NamedBody837_1093 : StackLang.HolProg 64 :=
.seq NamedBody837_1071 NamedBody837_1092

def NamedBody837_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1101 : StackLang.HolProg 64 :=
.seq NamedBody837_1099 NamedBody837_1100

def NamedBody837_1102 : StackLang.HolProg 64 :=
.seq NamedBody837_1098 NamedBody837_1101

def NamedBody837_1103 : StackLang.HolProg 64 :=
.seq NamedBody837_1097 NamedBody837_1102

def NamedBody837_1104 : StackLang.HolProg 64 :=
.seq NamedBody837_1096 NamedBody837_1103

def NamedBody837_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1106 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_1107 : StackLang.HolProg 64 :=
.seq NamedBody837_1105 NamedBody837_1106

def NamedBody837_1108 : StackLang.HolProg 64 :=
.call (some (NamedBody837_1104, 1, 837, 30)) (Sum.inl 825) (some (NamedBody837_1107, 837, 31))

def NamedBody837_1109 : StackLang.HolProg 64 :=
.seq NamedBody837_1095 NamedBody837_1108

def NamedBody837_1110 : StackLang.HolProg 64 :=
.seq NamedBody837_1094 NamedBody837_1109

def NamedBody837_1111 : StackLang.HolProg 64 :=
.seq NamedBody837_1093 NamedBody837_1110

def NamedBody837_1112 : StackLang.HolProg 64 :=
.seq NamedBody837_1064 NamedBody837_1111

def NamedBody837_1113 : StackLang.HolProg 64 :=
.seq NamedBody837_1061 NamedBody837_1112

def NamedBody837_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_1119 : StackLang.HolProg 64 :=
.seq NamedBody837_1117 NamedBody837_1118

def NamedBody837_1120 : StackLang.HolProg 64 :=
.seq NamedBody837_1116 NamedBody837_1119

def NamedBody837_1121 : StackLang.HolProg 64 :=
.seq NamedBody837_1115 NamedBody837_1120

def NamedBody837_1122 : StackLang.HolProg 64 :=
.seq NamedBody837_1114 NamedBody837_1121

def NamedBody837_1123 : StackLang.HolProg 64 :=
.seq NamedBody837_1113 NamedBody837_1122

def NamedBody837_1124 : StackLang.HolProg 64 :=
.seq NamedBody837_1060 NamedBody837_1123

def NamedBody837_1125 : StackLang.HolProg 64 :=
.seq NamedBody837_1057 NamedBody837_1124

def NamedBody837_1126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1127 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_1125 NamedBody837_1126

def NamedBody837_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def NamedBody837_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1135 : StackLang.HolProg 64 :=
.seq NamedBody837_1133 NamedBody837_1134

def NamedBody837_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4196#64)

def NamedBody837_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_1139 : StackLang.HolProg 64 :=
.seq NamedBody837_1137 NamedBody837_1138

def NamedBody837_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_1143 : StackLang.HolProg 64 :=
.seq NamedBody837_1141 NamedBody837_1142

def NamedBody837_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_1143 NamedBody837_1144

def NamedBody837_1146 : StackLang.HolProg 64 :=
.seq NamedBody837_1140 NamedBody837_1145

def NamedBody837_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 33

def NamedBody837_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_1156 : StackLang.HolProg 64 :=
.seq NamedBody837_1154 NamedBody837_1155

def NamedBody837_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_1158 : StackLang.HolProg 64 :=
.seq NamedBody837_1156 NamedBody837_1157

def NamedBody837_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1160 : StackLang.HolProg 64 :=
.seq NamedBody837_1158 NamedBody837_1159

def NamedBody837_1161 : StackLang.HolProg 64 :=
.seq NamedBody837_1153 NamedBody837_1160

def NamedBody837_1162 : StackLang.HolProg 64 :=
.seq NamedBody837_1152 NamedBody837_1161

def NamedBody837_1163 : StackLang.HolProg 64 :=
.seq NamedBody837_1151 NamedBody837_1162

def NamedBody837_1164 : StackLang.HolProg 64 :=
.seq NamedBody837_1150 NamedBody837_1163

def NamedBody837_1165 : StackLang.HolProg 64 :=
.seq NamedBody837_1149 NamedBody837_1164

def NamedBody837_1166 : StackLang.HolProg 64 :=
.seq NamedBody837_1148 NamedBody837_1165

def NamedBody837_1167 : StackLang.HolProg 64 :=
.seq NamedBody837_1147 NamedBody837_1166

def NamedBody837_1168 : StackLang.HolProg 64 :=
.seq NamedBody837_1146 NamedBody837_1167

def NamedBody837_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1176 : StackLang.HolProg 64 :=
.seq NamedBody837_1174 NamedBody837_1175

def NamedBody837_1177 : StackLang.HolProg 64 :=
.seq NamedBody837_1173 NamedBody837_1176

def NamedBody837_1178 : StackLang.HolProg 64 :=
.seq NamedBody837_1172 NamedBody837_1177

def NamedBody837_1179 : StackLang.HolProg 64 :=
.seq NamedBody837_1171 NamedBody837_1178

def NamedBody837_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_1182 : StackLang.HolProg 64 :=
.seq NamedBody837_1180 NamedBody837_1181

def NamedBody837_1183 : StackLang.HolProg 64 :=
.call (some (NamedBody837_1179, 1, 837, 32)) (Sum.inl 826) (some (NamedBody837_1182, 837, 33))

def NamedBody837_1184 : StackLang.HolProg 64 :=
.seq NamedBody837_1170 NamedBody837_1183

def NamedBody837_1185 : StackLang.HolProg 64 :=
.seq NamedBody837_1169 NamedBody837_1184

def NamedBody837_1186 : StackLang.HolProg 64 :=
.seq NamedBody837_1168 NamedBody837_1185

def NamedBody837_1187 : StackLang.HolProg 64 :=
.seq NamedBody837_1139 NamedBody837_1186

def NamedBody837_1188 : StackLang.HolProg 64 :=
.seq NamedBody837_1136 NamedBody837_1187

def NamedBody837_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_1194 : StackLang.HolProg 64 :=
.seq NamedBody837_1192 NamedBody837_1193

def NamedBody837_1195 : StackLang.HolProg 64 :=
.seq NamedBody837_1191 NamedBody837_1194

def NamedBody837_1196 : StackLang.HolProg 64 :=
.seq NamedBody837_1190 NamedBody837_1195

def NamedBody837_1197 : StackLang.HolProg 64 :=
.seq NamedBody837_1189 NamedBody837_1196

def NamedBody837_1198 : StackLang.HolProg 64 :=
.seq NamedBody837_1188 NamedBody837_1197

def NamedBody837_1199 : StackLang.HolProg 64 :=
.seq NamedBody837_1135 NamedBody837_1198

def NamedBody837_1200 : StackLang.HolProg 64 :=
.seq NamedBody837_1132 NamedBody837_1199

def NamedBody837_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1202 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_1200 NamedBody837_1201

def NamedBody837_1203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 17#64)

def NamedBody837_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1210 : StackLang.HolProg 64 :=
.seq NamedBody837_1208 NamedBody837_1209

def NamedBody837_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4197#64)

def NamedBody837_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_1214 : StackLang.HolProg 64 :=
.seq NamedBody837_1212 NamedBody837_1213

def NamedBody837_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_1218 : StackLang.HolProg 64 :=
.seq NamedBody837_1216 NamedBody837_1217

def NamedBody837_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_1218 NamedBody837_1219

def NamedBody837_1221 : StackLang.HolProg 64 :=
.seq NamedBody837_1215 NamedBody837_1220

def NamedBody837_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 35

def NamedBody837_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_1231 : StackLang.HolProg 64 :=
.seq NamedBody837_1229 NamedBody837_1230

def NamedBody837_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_1233 : StackLang.HolProg 64 :=
.seq NamedBody837_1231 NamedBody837_1232

def NamedBody837_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1235 : StackLang.HolProg 64 :=
.seq NamedBody837_1233 NamedBody837_1234

def NamedBody837_1236 : StackLang.HolProg 64 :=
.seq NamedBody837_1228 NamedBody837_1235

def NamedBody837_1237 : StackLang.HolProg 64 :=
.seq NamedBody837_1227 NamedBody837_1236

def NamedBody837_1238 : StackLang.HolProg 64 :=
.seq NamedBody837_1226 NamedBody837_1237

def NamedBody837_1239 : StackLang.HolProg 64 :=
.seq NamedBody837_1225 NamedBody837_1238

def NamedBody837_1240 : StackLang.HolProg 64 :=
.seq NamedBody837_1224 NamedBody837_1239

def NamedBody837_1241 : StackLang.HolProg 64 :=
.seq NamedBody837_1223 NamedBody837_1240

def NamedBody837_1242 : StackLang.HolProg 64 :=
.seq NamedBody837_1222 NamedBody837_1241

def NamedBody837_1243 : StackLang.HolProg 64 :=
.seq NamedBody837_1221 NamedBody837_1242

def NamedBody837_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1251 : StackLang.HolProg 64 :=
.seq NamedBody837_1249 NamedBody837_1250

def NamedBody837_1252 : StackLang.HolProg 64 :=
.seq NamedBody837_1248 NamedBody837_1251

def NamedBody837_1253 : StackLang.HolProg 64 :=
.seq NamedBody837_1247 NamedBody837_1252

def NamedBody837_1254 : StackLang.HolProg 64 :=
.seq NamedBody837_1246 NamedBody837_1253

def NamedBody837_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1256 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_1257 : StackLang.HolProg 64 :=
.seq NamedBody837_1255 NamedBody837_1256

def NamedBody837_1258 : StackLang.HolProg 64 :=
.call (some (NamedBody837_1254, 1, 837, 34)) (Sum.inl 827) (some (NamedBody837_1257, 837, 35))

def NamedBody837_1259 : StackLang.HolProg 64 :=
.seq NamedBody837_1245 NamedBody837_1258

def NamedBody837_1260 : StackLang.HolProg 64 :=
.seq NamedBody837_1244 NamedBody837_1259

def NamedBody837_1261 : StackLang.HolProg 64 :=
.seq NamedBody837_1243 NamedBody837_1260

def NamedBody837_1262 : StackLang.HolProg 64 :=
.seq NamedBody837_1214 NamedBody837_1261

def NamedBody837_1263 : StackLang.HolProg 64 :=
.seq NamedBody837_1211 NamedBody837_1262

def NamedBody837_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_1269 : StackLang.HolProg 64 :=
.seq NamedBody837_1267 NamedBody837_1268

def NamedBody837_1270 : StackLang.HolProg 64 :=
.seq NamedBody837_1266 NamedBody837_1269

def NamedBody837_1271 : StackLang.HolProg 64 :=
.seq NamedBody837_1265 NamedBody837_1270

def NamedBody837_1272 : StackLang.HolProg 64 :=
.seq NamedBody837_1264 NamedBody837_1271

def NamedBody837_1273 : StackLang.HolProg 64 :=
.seq NamedBody837_1263 NamedBody837_1272

def NamedBody837_1274 : StackLang.HolProg 64 :=
.seq NamedBody837_1210 NamedBody837_1273

def NamedBody837_1275 : StackLang.HolProg 64 :=
.seq NamedBody837_1207 NamedBody837_1274

def NamedBody837_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1277 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_1275 NamedBody837_1276

def NamedBody837_1278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18#64)

def NamedBody837_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4198#64)

def NamedBody837_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_1287 : StackLang.HolProg 64 :=
.seq NamedBody837_1285 NamedBody837_1286

def NamedBody837_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody837_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody837_1291 : StackLang.HolProg 64 :=
.seq NamedBody837_1289 NamedBody837_1290

def NamedBody837_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1293 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody837_1291 NamedBody837_1292

def NamedBody837_1294 : StackLang.HolProg 64 :=
.seq NamedBody837_1288 NamedBody837_1293

def NamedBody837_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody837_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody837_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 37

def NamedBody837_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody837_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody837_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody837_1304 : StackLang.HolProg 64 :=
.seq NamedBody837_1302 NamedBody837_1303

def NamedBody837_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody837_1306 : StackLang.HolProg 64 :=
.seq NamedBody837_1304 NamedBody837_1305

def NamedBody837_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1308 : StackLang.HolProg 64 :=
.seq NamedBody837_1306 NamedBody837_1307

def NamedBody837_1309 : StackLang.HolProg 64 :=
.seq NamedBody837_1301 NamedBody837_1308

def NamedBody837_1310 : StackLang.HolProg 64 :=
.seq NamedBody837_1300 NamedBody837_1309

def NamedBody837_1311 : StackLang.HolProg 64 :=
.seq NamedBody837_1299 NamedBody837_1310

def NamedBody837_1312 : StackLang.HolProg 64 :=
.seq NamedBody837_1298 NamedBody837_1311

def NamedBody837_1313 : StackLang.HolProg 64 :=
.seq NamedBody837_1297 NamedBody837_1312

def NamedBody837_1314 : StackLang.HolProg 64 :=
.seq NamedBody837_1296 NamedBody837_1313

def NamedBody837_1315 : StackLang.HolProg 64 :=
.seq NamedBody837_1295 NamedBody837_1314

def NamedBody837_1316 : StackLang.HolProg 64 :=
.seq NamedBody837_1294 NamedBody837_1315

def NamedBody837_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody837_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1324 : StackLang.HolProg 64 :=
.seq NamedBody837_1322 NamedBody837_1323

def NamedBody837_1325 : StackLang.HolProg 64 :=
.seq NamedBody837_1321 NamedBody837_1324

def NamedBody837_1326 : StackLang.HolProg 64 :=
.seq NamedBody837_1320 NamedBody837_1325

def NamedBody837_1327 : StackLang.HolProg 64 :=
.seq NamedBody837_1319 NamedBody837_1326

def NamedBody837_1328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody837_1329 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_1330 : StackLang.HolProg 64 :=
.seq NamedBody837_1328 NamedBody837_1329

def NamedBody837_1331 : StackLang.HolProg 64 :=
.call (some (NamedBody837_1327, 1, 837, 36)) (Sum.inl 656) (some (NamedBody837_1330, 837, 37))

def NamedBody837_1332 : StackLang.HolProg 64 :=
.seq NamedBody837_1318 NamedBody837_1331

def NamedBody837_1333 : StackLang.HolProg 64 :=
.seq NamedBody837_1317 NamedBody837_1332

def NamedBody837_1334 : StackLang.HolProg 64 :=
.seq NamedBody837_1316 NamedBody837_1333

def NamedBody837_1335 : StackLang.HolProg 64 :=
.seq NamedBody837_1287 NamedBody837_1334

def NamedBody837_1336 : StackLang.HolProg 64 :=
.seq NamedBody837_1284 NamedBody837_1335

def NamedBody837_1337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody837_1339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody837_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody837_1342 : StackLang.HolProg 64 :=
.seq NamedBody837_1340 NamedBody837_1341

def NamedBody837_1343 : StackLang.HolProg 64 :=
.seq NamedBody837_1339 NamedBody837_1342

def NamedBody837_1344 : StackLang.HolProg 64 :=
.seq NamedBody837_1338 NamedBody837_1343

def NamedBody837_1345 : StackLang.HolProg 64 :=
.seq NamedBody837_1337 NamedBody837_1344

def NamedBody837_1346 : StackLang.HolProg 64 :=
.seq NamedBody837_1336 NamedBody837_1345

def NamedBody837_1347 : StackLang.HolProg 64 :=
.seq NamedBody837_1283 NamedBody837_1346

def NamedBody837_1348 : StackLang.HolProg 64 :=
.seq NamedBody837_1282 NamedBody837_1347

def NamedBody837_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1350 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody837_1348 NamedBody837_1349

def NamedBody837_1351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody837_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 99#64)

def NamedBody837_1354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody837_1356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody837_1357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody837_1358 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody837_1359 : StackLang.HolProg 64 :=
.seq NamedBody837_1357 NamedBody837_1358

def NamedBody837_1360 : StackLang.HolProg 64 :=
.seq NamedBody837_1356 NamedBody837_1359

def NamedBody837_1361 : StackLang.HolProg 64 :=
.seq NamedBody837_1355 NamedBody837_1360

def NamedBody837_1362 : StackLang.HolProg 64 :=
.seq NamedBody837_1354 NamedBody837_1361

def NamedBody837_1363 : StackLang.HolProg 64 :=
.seq NamedBody837_1353 NamedBody837_1362

def NamedBody837_1364 : StackLang.HolProg 64 :=
.seq NamedBody837_1352 NamedBody837_1363

def NamedBody837_1365 : StackLang.HolProg 64 :=
.seq NamedBody837_1351 NamedBody837_1364

def NamedBody837_1366 : StackLang.HolProg 64 :=
.seq NamedBody837_1350 NamedBody837_1365

def NamedBody837_1367 : StackLang.HolProg 64 :=
.seq NamedBody837_1281 NamedBody837_1366

def NamedBody837_1368 : StackLang.HolProg 64 :=
.seq NamedBody837_1280 NamedBody837_1367

def NamedBody837_1369 : StackLang.HolProg 64 :=
.seq NamedBody837_1279 NamedBody837_1368

def NamedBody837_1370 : StackLang.HolProg 64 :=
.seq NamedBody837_1278 NamedBody837_1369

def NamedBody837_1371 : StackLang.HolProg 64 :=
.seq NamedBody837_1277 NamedBody837_1370

def NamedBody837_1372 : StackLang.HolProg 64 :=
.seq NamedBody837_1206 NamedBody837_1371

def NamedBody837_1373 : StackLang.HolProg 64 :=
.seq NamedBody837_1205 NamedBody837_1372

def NamedBody837_1374 : StackLang.HolProg 64 :=
.seq NamedBody837_1204 NamedBody837_1373

def NamedBody837_1375 : StackLang.HolProg 64 :=
.seq NamedBody837_1203 NamedBody837_1374

def NamedBody837_1376 : StackLang.HolProg 64 :=
.seq NamedBody837_1202 NamedBody837_1375

def NamedBody837_1377 : StackLang.HolProg 64 :=
.seq NamedBody837_1131 NamedBody837_1376

def NamedBody837_1378 : StackLang.HolProg 64 :=
.seq NamedBody837_1130 NamedBody837_1377

def NamedBody837_1379 : StackLang.HolProg 64 :=
.seq NamedBody837_1129 NamedBody837_1378

def NamedBody837_1380 : StackLang.HolProg 64 :=
.seq NamedBody837_1128 NamedBody837_1379

def NamedBody837_1381 : StackLang.HolProg 64 :=
.seq NamedBody837_1127 NamedBody837_1380

def NamedBody837_1382 : StackLang.HolProg 64 :=
.seq NamedBody837_1056 NamedBody837_1381

def NamedBody837_1383 : StackLang.HolProg 64 :=
.seq NamedBody837_1055 NamedBody837_1382

def NamedBody837_1384 : StackLang.HolProg 64 :=
.seq NamedBody837_1054 NamedBody837_1383

def NamedBody837_1385 : StackLang.HolProg 64 :=
.seq NamedBody837_1053 NamedBody837_1384

def NamedBody837_1386 : StackLang.HolProg 64 :=
.seq NamedBody837_1052 NamedBody837_1385

def NamedBody837_1387 : StackLang.HolProg 64 :=
.seq NamedBody837_981 NamedBody837_1386

def NamedBody837_1388 : StackLang.HolProg 64 :=
.seq NamedBody837_980 NamedBody837_1387

def NamedBody837_1389 : StackLang.HolProg 64 :=
.seq NamedBody837_979 NamedBody837_1388

def NamedBody837_1390 : StackLang.HolProg 64 :=
.seq NamedBody837_978 NamedBody837_1389

def NamedBody837_1391 : StackLang.HolProg 64 :=
.seq NamedBody837_977 NamedBody837_1390

def NamedBody837_1392 : StackLang.HolProg 64 :=
.seq NamedBody837_906 NamedBody837_1391

def NamedBody837_1393 : StackLang.HolProg 64 :=
.seq NamedBody837_905 NamedBody837_1392

def NamedBody837_1394 : StackLang.HolProg 64 :=
.seq NamedBody837_904 NamedBody837_1393

def NamedBody837_1395 : StackLang.HolProg 64 :=
.seq NamedBody837_903 NamedBody837_1394

def NamedBody837_1396 : StackLang.HolProg 64 :=
.seq NamedBody837_902 NamedBody837_1395

def NamedBody837_1397 : StackLang.HolProg 64 :=
.seq NamedBody837_831 NamedBody837_1396

def NamedBody837_1398 : StackLang.HolProg 64 :=
.seq NamedBody837_830 NamedBody837_1397

def NamedBody837_1399 : StackLang.HolProg 64 :=
.seq NamedBody837_829 NamedBody837_1398

def NamedBody837_1400 : StackLang.HolProg 64 :=
.seq NamedBody837_828 NamedBody837_1399

def NamedBody837_1401 : StackLang.HolProg 64 :=
.seq NamedBody837_827 NamedBody837_1400

def NamedBody837_1402 : StackLang.HolProg 64 :=
.seq NamedBody837_756 NamedBody837_1401

def NamedBody837_1403 : StackLang.HolProg 64 :=
.seq NamedBody837_755 NamedBody837_1402

def NamedBody837_1404 : StackLang.HolProg 64 :=
.seq NamedBody837_754 NamedBody837_1403

def NamedBody837_1405 : StackLang.HolProg 64 :=
.seq NamedBody837_753 NamedBody837_1404

def NamedBody837_1406 : StackLang.HolProg 64 :=
.seq NamedBody837_752 NamedBody837_1405

def NamedBody837_1407 : StackLang.HolProg 64 :=
.seq NamedBody837_681 NamedBody837_1406

def NamedBody837_1408 : StackLang.HolProg 64 :=
.seq NamedBody837_680 NamedBody837_1407

def NamedBody837_1409 : StackLang.HolProg 64 :=
.seq NamedBody837_679 NamedBody837_1408

def NamedBody837_1410 : StackLang.HolProg 64 :=
.seq NamedBody837_678 NamedBody837_1409

def NamedBody837_1411 : StackLang.HolProg 64 :=
.seq NamedBody837_677 NamedBody837_1410

def NamedBody837_1412 : StackLang.HolProg 64 :=
.seq NamedBody837_606 NamedBody837_1411

def NamedBody837_1413 : StackLang.HolProg 64 :=
.seq NamedBody837_605 NamedBody837_1412

def NamedBody837_1414 : StackLang.HolProg 64 :=
.seq NamedBody837_604 NamedBody837_1413

def NamedBody837_1415 : StackLang.HolProg 64 :=
.seq NamedBody837_603 NamedBody837_1414

def NamedBody837_1416 : StackLang.HolProg 64 :=
.seq NamedBody837_602 NamedBody837_1415

def NamedBody837_1417 : StackLang.HolProg 64 :=
.seq NamedBody837_531 NamedBody837_1416

def NamedBody837_1418 : StackLang.HolProg 64 :=
.seq NamedBody837_530 NamedBody837_1417

def NamedBody837_1419 : StackLang.HolProg 64 :=
.seq NamedBody837_529 NamedBody837_1418

def NamedBody837_1420 : StackLang.HolProg 64 :=
.seq NamedBody837_528 NamedBody837_1419

def NamedBody837_1421 : StackLang.HolProg 64 :=
.seq NamedBody837_527 NamedBody837_1420

def NamedBody837_1422 : StackLang.HolProg 64 :=
.seq NamedBody837_456 NamedBody837_1421

def NamedBody837_1423 : StackLang.HolProg 64 :=
.seq NamedBody837_455 NamedBody837_1422

def NamedBody837_1424 : StackLang.HolProg 64 :=
.seq NamedBody837_454 NamedBody837_1423

def NamedBody837_1425 : StackLang.HolProg 64 :=
.seq NamedBody837_453 NamedBody837_1424

def NamedBody837_1426 : StackLang.HolProg 64 :=
.seq NamedBody837_452 NamedBody837_1425

def NamedBody837_1427 : StackLang.HolProg 64 :=
.seq NamedBody837_381 NamedBody837_1426

def NamedBody837_1428 : StackLang.HolProg 64 :=
.seq NamedBody837_380 NamedBody837_1427

def NamedBody837_1429 : StackLang.HolProg 64 :=
.seq NamedBody837_379 NamedBody837_1428

def NamedBody837_1430 : StackLang.HolProg 64 :=
.seq NamedBody837_378 NamedBody837_1429

def NamedBody837_1431 : StackLang.HolProg 64 :=
.seq NamedBody837_377 NamedBody837_1430

def NamedBody837_1432 : StackLang.HolProg 64 :=
.seq NamedBody837_306 NamedBody837_1431

def NamedBody837_1433 : StackLang.HolProg 64 :=
.seq NamedBody837_305 NamedBody837_1432

def NamedBody837_1434 : StackLang.HolProg 64 :=
.seq NamedBody837_304 NamedBody837_1433

def NamedBody837_1435 : StackLang.HolProg 64 :=
.seq NamedBody837_303 NamedBody837_1434

def NamedBody837_1436 : StackLang.HolProg 64 :=
.seq NamedBody837_302 NamedBody837_1435

def NamedBody837_1437 : StackLang.HolProg 64 :=
.seq NamedBody837_231 NamedBody837_1436

def NamedBody837_1438 : StackLang.HolProg 64 :=
.seq NamedBody837_230 NamedBody837_1437

def NamedBody837_1439 : StackLang.HolProg 64 :=
.seq NamedBody837_229 NamedBody837_1438

def NamedBody837_1440 : StackLang.HolProg 64 :=
.seq NamedBody837_228 NamedBody837_1439

def NamedBody837_1441 : StackLang.HolProg 64 :=
.seq NamedBody837_227 NamedBody837_1440

def NamedBody837_1442 : StackLang.HolProg 64 :=
.seq NamedBody837_156 NamedBody837_1441

def NamedBody837_1443 : StackLang.HolProg 64 :=
.seq NamedBody837_155 NamedBody837_1442

def NamedBody837_1444 : StackLang.HolProg 64 :=
.seq NamedBody837_154 NamedBody837_1443

def NamedBody837_1445 : StackLang.HolProg 64 :=
.seq NamedBody837_153 NamedBody837_1444

def NamedBody837_1446 : StackLang.HolProg 64 :=
.seq NamedBody837_152 NamedBody837_1445

def NamedBody837_1447 : StackLang.HolProg 64 :=
.seq NamedBody837_81 NamedBody837_1446

def NamedBody837_1448 : StackLang.HolProg 64 :=
.seq NamedBody837_80 NamedBody837_1447

def NamedBody837_1449 : StackLang.HolProg 64 :=
.seq NamedBody837_79 NamedBody837_1448

def NamedBody837_1450 : StackLang.HolProg 64 :=
.seq NamedBody837_78 NamedBody837_1449

def NamedBody837_1451 : StackLang.HolProg 64 :=
.seq NamedBody837_77 NamedBody837_1450

def NamedBody837_1452 : StackLang.HolProg 64 :=
.seq NamedBody837_8 NamedBody837_1451

def NamedBody837_1453 : StackLang.HolProg 64 :=
.seq NamedBody837_7 NamedBody837_1452

def NamedBody837_1454 : StackLang.HolProg 64 :=
.seq NamedBody837_6 NamedBody837_1453

def Named837 : Nat × StackLang.HolProg 64 := (837, NamedBody837_1454)
theorem Named837_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed837 = Named837 := by
  kernel_rfl
#print axioms Named837_eq
end InitECandidate.Proofs.BackendStages
