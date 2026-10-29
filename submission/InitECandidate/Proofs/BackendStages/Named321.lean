import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed321
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody321_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody321_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody321_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody321_3 : StackLang.HolProg 64 :=
.seq NamedBody321_1 NamedBody321_2

def NamedBody321_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody321_3 NamedBody321_4

def NamedBody321_6 : StackLang.HolProg 64 :=
.seq NamedBody321_0 NamedBody321_5

def NamedBody321_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody321_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody321_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody321_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody321_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody321_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 3#64)

def NamedBody321_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 40#64))

def NamedBody321_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody321_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody321_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody321_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody321_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_25 : StackLang.HolProg 64 :=
.seq NamedBody321_23 NamedBody321_24

def NamedBody321_26 : StackLang.HolProg 64 :=
.seq NamedBody321_22 NamedBody321_25

def NamedBody321_27 : StackLang.HolProg 64 :=
.seq NamedBody321_21 NamedBody321_26

def NamedBody321_28 : StackLang.HolProg 64 :=
.seq NamedBody321_20 NamedBody321_27

def NamedBody321_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 899#64)

def NamedBody321_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody321_32 : StackLang.HolProg 64 :=
.seq NamedBody321_30 NamedBody321_31

def NamedBody321_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody321_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody321_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody321_36 : StackLang.HolProg 64 :=
.seq NamedBody321_34 NamedBody321_35

def NamedBody321_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_38 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody321_36 NamedBody321_37

def NamedBody321_39 : StackLang.HolProg 64 :=
.seq NamedBody321_33 NamedBody321_38

def NamedBody321_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody321_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody321_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 3

def NamedBody321_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody321_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody321_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody321_49 : StackLang.HolProg 64 :=
.seq NamedBody321_47 NamedBody321_48

def NamedBody321_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody321_51 : StackLang.HolProg 64 :=
.seq NamedBody321_49 NamedBody321_50

def NamedBody321_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_53 : StackLang.HolProg 64 :=
.seq NamedBody321_51 NamedBody321_52

def NamedBody321_54 : StackLang.HolProg 64 :=
.seq NamedBody321_46 NamedBody321_53

def NamedBody321_55 : StackLang.HolProg 64 :=
.seq NamedBody321_45 NamedBody321_54

def NamedBody321_56 : StackLang.HolProg 64 :=
.seq NamedBody321_44 NamedBody321_55

def NamedBody321_57 : StackLang.HolProg 64 :=
.seq NamedBody321_43 NamedBody321_56

def NamedBody321_58 : StackLang.HolProg 64 :=
.seq NamedBody321_42 NamedBody321_57

def NamedBody321_59 : StackLang.HolProg 64 :=
.seq NamedBody321_41 NamedBody321_58

def NamedBody321_60 : StackLang.HolProg 64 :=
.seq NamedBody321_40 NamedBody321_59

def NamedBody321_61 : StackLang.HolProg 64 :=
.seq NamedBody321_39 NamedBody321_60

def NamedBody321_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody321_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody321_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_72 : StackLang.HolProg 64 :=
.seq NamedBody321_70 NamedBody321_71

def NamedBody321_73 : StackLang.HolProg 64 :=
.seq NamedBody321_69 NamedBody321_72

def NamedBody321_74 : StackLang.HolProg 64 :=
.seq NamedBody321_68 NamedBody321_73

def NamedBody321_75 : StackLang.HolProg 64 :=
.seq NamedBody321_67 NamedBody321_74

def NamedBody321_76 : StackLang.HolProg 64 :=
.seq NamedBody321_66 NamedBody321_75

def NamedBody321_77 : StackLang.HolProg 64 :=
.seq NamedBody321_65 NamedBody321_76

def NamedBody321_78 : StackLang.HolProg 64 :=
.seq NamedBody321_64 NamedBody321_77

def NamedBody321_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_82 : StackLang.HolProg 64 :=
.seq NamedBody321_80 NamedBody321_81

def NamedBody321_83 : StackLang.HolProg 64 :=
.seq NamedBody321_79 NamedBody321_82

def NamedBody321_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody321_85 : StackLang.HolProg 64 :=
.seq NamedBody321_83 NamedBody321_84

def NamedBody321_86 : StackLang.HolProg 64 :=
.call (some (NamedBody321_78, 1, 321, 2)) (Sum.inl 68) (some (NamedBody321_85, 321, 3))

def NamedBody321_87 : StackLang.HolProg 64 :=
.seq NamedBody321_63 NamedBody321_86

def NamedBody321_88 : StackLang.HolProg 64 :=
.seq NamedBody321_62 NamedBody321_87

def NamedBody321_89 : StackLang.HolProg 64 :=
.seq NamedBody321_61 NamedBody321_88

def NamedBody321_90 : StackLang.HolProg 64 :=
.seq NamedBody321_32 NamedBody321_89

def NamedBody321_91 : StackLang.HolProg 64 :=
.seq NamedBody321_29 NamedBody321_90

def NamedBody321_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody321_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody321_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody321_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_99 : StackLang.HolProg 64 :=
.seq NamedBody321_97 NamedBody321_98

def NamedBody321_100 : StackLang.HolProg 64 :=
.seq NamedBody321_96 NamedBody321_99

def NamedBody321_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_103 : StackLang.HolProg 64 :=
.seq NamedBody321_101 NamedBody321_102

def NamedBody321_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody321_100 NamedBody321_103

def NamedBody321_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody321_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_111 : StackLang.HolProg 64 :=
.seq NamedBody321_109 NamedBody321_110

def NamedBody321_112 : StackLang.HolProg 64 :=
.seq NamedBody321_108 NamedBody321_111

def NamedBody321_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 900#64)

def NamedBody321_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody321_116 : StackLang.HolProg 64 :=
.seq NamedBody321_114 NamedBody321_115

def NamedBody321_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody321_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody321_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody321_120 : StackLang.HolProg 64 :=
.seq NamedBody321_118 NamedBody321_119

def NamedBody321_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody321_120 NamedBody321_121

def NamedBody321_123 : StackLang.HolProg 64 :=
.seq NamedBody321_117 NamedBody321_122

def NamedBody321_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody321_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody321_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 5

def NamedBody321_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody321_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody321_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody321_133 : StackLang.HolProg 64 :=
.seq NamedBody321_131 NamedBody321_132

def NamedBody321_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody321_135 : StackLang.HolProg 64 :=
.seq NamedBody321_133 NamedBody321_134

def NamedBody321_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_137 : StackLang.HolProg 64 :=
.seq NamedBody321_135 NamedBody321_136

def NamedBody321_138 : StackLang.HolProg 64 :=
.seq NamedBody321_130 NamedBody321_137

def NamedBody321_139 : StackLang.HolProg 64 :=
.seq NamedBody321_129 NamedBody321_138

def NamedBody321_140 : StackLang.HolProg 64 :=
.seq NamedBody321_128 NamedBody321_139

def NamedBody321_141 : StackLang.HolProg 64 :=
.seq NamedBody321_127 NamedBody321_140

def NamedBody321_142 : StackLang.HolProg 64 :=
.seq NamedBody321_126 NamedBody321_141

def NamedBody321_143 : StackLang.HolProg 64 :=
.seq NamedBody321_125 NamedBody321_142

def NamedBody321_144 : StackLang.HolProg 64 :=
.seq NamedBody321_124 NamedBody321_143

def NamedBody321_145 : StackLang.HolProg 64 :=
.seq NamedBody321_123 NamedBody321_144

def NamedBody321_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody321_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody321_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_154 : StackLang.HolProg 64 :=
.seq NamedBody321_152 NamedBody321_153

def NamedBody321_155 : StackLang.HolProg 64 :=
.seq NamedBody321_151 NamedBody321_154

def NamedBody321_156 : StackLang.HolProg 64 :=
.seq NamedBody321_150 NamedBody321_155

def NamedBody321_157 : StackLang.HolProg 64 :=
.seq NamedBody321_149 NamedBody321_156

def NamedBody321_158 : StackLang.HolProg 64 :=
.seq NamedBody321_148 NamedBody321_157

def NamedBody321_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_160 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody321_161 : StackLang.HolProg 64 :=
.seq NamedBody321_159 NamedBody321_160

def NamedBody321_162 : StackLang.HolProg 64 :=
.call (some (NamedBody321_158, 1, 321, 4)) (Sum.inl 290) (some (NamedBody321_161, 321, 5))

def NamedBody321_163 : StackLang.HolProg 64 :=
.seq NamedBody321_147 NamedBody321_162

def NamedBody321_164 : StackLang.HolProg 64 :=
.seq NamedBody321_146 NamedBody321_163

def NamedBody321_165 : StackLang.HolProg 64 :=
.seq NamedBody321_145 NamedBody321_164

def NamedBody321_166 : StackLang.HolProg 64 :=
.seq NamedBody321_116 NamedBody321_165

def NamedBody321_167 : StackLang.HolProg 64 :=
.seq NamedBody321_113 NamedBody321_166

def NamedBody321_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody321_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody321_173 : StackLang.HolProg 64 :=
.seq NamedBody321_171 NamedBody321_172

def NamedBody321_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 901#64)

def NamedBody321_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody321_177 : StackLang.HolProg 64 :=
.seq NamedBody321_175 NamedBody321_176

def NamedBody321_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody321_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody321_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody321_181 : StackLang.HolProg 64 :=
.seq NamedBody321_179 NamedBody321_180

def NamedBody321_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_183 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody321_181 NamedBody321_182

def NamedBody321_184 : StackLang.HolProg 64 :=
.seq NamedBody321_178 NamedBody321_183

def NamedBody321_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody321_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody321_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 7

def NamedBody321_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody321_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody321_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody321_194 : StackLang.HolProg 64 :=
.seq NamedBody321_192 NamedBody321_193

def NamedBody321_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody321_196 : StackLang.HolProg 64 :=
.seq NamedBody321_194 NamedBody321_195

def NamedBody321_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_198 : StackLang.HolProg 64 :=
.seq NamedBody321_196 NamedBody321_197

def NamedBody321_199 : StackLang.HolProg 64 :=
.seq NamedBody321_191 NamedBody321_198

def NamedBody321_200 : StackLang.HolProg 64 :=
.seq NamedBody321_190 NamedBody321_199

def NamedBody321_201 : StackLang.HolProg 64 :=
.seq NamedBody321_189 NamedBody321_200

def NamedBody321_202 : StackLang.HolProg 64 :=
.seq NamedBody321_188 NamedBody321_201

def NamedBody321_203 : StackLang.HolProg 64 :=
.seq NamedBody321_187 NamedBody321_202

def NamedBody321_204 : StackLang.HolProg 64 :=
.seq NamedBody321_186 NamedBody321_203

def NamedBody321_205 : StackLang.HolProg 64 :=
.seq NamedBody321_185 NamedBody321_204

def NamedBody321_206 : StackLang.HolProg 64 :=
.seq NamedBody321_184 NamedBody321_205

def NamedBody321_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody321_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody321_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody321_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_218 : StackLang.HolProg 64 :=
.seq NamedBody321_216 NamedBody321_217

def NamedBody321_219 : StackLang.HolProg 64 :=
.seq NamedBody321_215 NamedBody321_218

def NamedBody321_220 : StackLang.HolProg 64 :=
.seq NamedBody321_214 NamedBody321_219

def NamedBody321_221 : StackLang.HolProg 64 :=
.seq NamedBody321_213 NamedBody321_220

def NamedBody321_222 : StackLang.HolProg 64 :=
.seq NamedBody321_212 NamedBody321_221

def NamedBody321_223 : StackLang.HolProg 64 :=
.seq NamedBody321_211 NamedBody321_222

def NamedBody321_224 : StackLang.HolProg 64 :=
.seq NamedBody321_210 NamedBody321_223

def NamedBody321_225 : StackLang.HolProg 64 :=
.seq NamedBody321_209 NamedBody321_224

def NamedBody321_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody321_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_230 : StackLang.HolProg 64 :=
.seq NamedBody321_228 NamedBody321_229

def NamedBody321_231 : StackLang.HolProg 64 :=
.seq NamedBody321_227 NamedBody321_230

def NamedBody321_232 : StackLang.HolProg 64 :=
.seq NamedBody321_226 NamedBody321_231

def NamedBody321_233 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody321_234 : StackLang.HolProg 64 :=
.seq NamedBody321_232 NamedBody321_233

def NamedBody321_235 : StackLang.HolProg 64 :=
.call (some (NamedBody321_225, 1, 321, 6)) (Sum.inl 179) (some (NamedBody321_234, 321, 7))

def NamedBody321_236 : StackLang.HolProg 64 :=
.seq NamedBody321_208 NamedBody321_235

def NamedBody321_237 : StackLang.HolProg 64 :=
.seq NamedBody321_207 NamedBody321_236

def NamedBody321_238 : StackLang.HolProg 64 :=
.seq NamedBody321_206 NamedBody321_237

def NamedBody321_239 : StackLang.HolProg 64 :=
.seq NamedBody321_177 NamedBody321_238

def NamedBody321_240 : StackLang.HolProg 64 :=
.seq NamedBody321_174 NamedBody321_239

def NamedBody321_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody321_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody321_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody321_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 902#64)

def NamedBody321_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody321_253 : StackLang.HolProg 64 :=
.seq NamedBody321_251 NamedBody321_252

def NamedBody321_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody321_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody321_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody321_257 : StackLang.HolProg 64 :=
.seq NamedBody321_255 NamedBody321_256

def NamedBody321_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody321_257 NamedBody321_258

def NamedBody321_260 : StackLang.HolProg 64 :=
.seq NamedBody321_254 NamedBody321_259

def NamedBody321_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody321_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody321_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 9

def NamedBody321_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody321_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody321_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody321_270 : StackLang.HolProg 64 :=
.seq NamedBody321_268 NamedBody321_269

def NamedBody321_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody321_272 : StackLang.HolProg 64 :=
.seq NamedBody321_270 NamedBody321_271

def NamedBody321_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_274 : StackLang.HolProg 64 :=
.seq NamedBody321_272 NamedBody321_273

def NamedBody321_275 : StackLang.HolProg 64 :=
.seq NamedBody321_267 NamedBody321_274

def NamedBody321_276 : StackLang.HolProg 64 :=
.seq NamedBody321_266 NamedBody321_275

def NamedBody321_277 : StackLang.HolProg 64 :=
.seq NamedBody321_265 NamedBody321_276

def NamedBody321_278 : StackLang.HolProg 64 :=
.seq NamedBody321_264 NamedBody321_277

def NamedBody321_279 : StackLang.HolProg 64 :=
.seq NamedBody321_263 NamedBody321_278

def NamedBody321_280 : StackLang.HolProg 64 :=
.seq NamedBody321_262 NamedBody321_279

def NamedBody321_281 : StackLang.HolProg 64 :=
.seq NamedBody321_261 NamedBody321_280

def NamedBody321_282 : StackLang.HolProg 64 :=
.seq NamedBody321_260 NamedBody321_281

def NamedBody321_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody321_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody321_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody321_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody321_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody321_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_295 : StackLang.HolProg 64 :=
.seq NamedBody321_293 NamedBody321_294

def NamedBody321_296 : StackLang.HolProg 64 :=
.seq NamedBody321_292 NamedBody321_295

def NamedBody321_297 : StackLang.HolProg 64 :=
.seq NamedBody321_291 NamedBody321_296

def NamedBody321_298 : StackLang.HolProg 64 :=
.seq NamedBody321_290 NamedBody321_297

def NamedBody321_299 : StackLang.HolProg 64 :=
.seq NamedBody321_289 NamedBody321_298

def NamedBody321_300 : StackLang.HolProg 64 :=
.seq NamedBody321_288 NamedBody321_299

def NamedBody321_301 : StackLang.HolProg 64 :=
.seq NamedBody321_287 NamedBody321_300

def NamedBody321_302 : StackLang.HolProg 64 :=
.seq NamedBody321_286 NamedBody321_301

def NamedBody321_303 : StackLang.HolProg 64 :=
.seq NamedBody321_285 NamedBody321_302

def NamedBody321_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody321_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody321_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_309 : StackLang.HolProg 64 :=
.seq NamedBody321_307 NamedBody321_308

def NamedBody321_310 : StackLang.HolProg 64 :=
.seq NamedBody321_306 NamedBody321_309

def NamedBody321_311 : StackLang.HolProg 64 :=
.seq NamedBody321_305 NamedBody321_310

def NamedBody321_312 : StackLang.HolProg 64 :=
.seq NamedBody321_304 NamedBody321_311

def NamedBody321_313 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody321_314 : StackLang.HolProg 64 :=
.seq NamedBody321_312 NamedBody321_313

def NamedBody321_315 : StackLang.HolProg 64 :=
.call (some (NamedBody321_303, 1, 321, 8)) (Sum.inl 326) (some (NamedBody321_314, 321, 9))

def NamedBody321_316 : StackLang.HolProg 64 :=
.seq NamedBody321_284 NamedBody321_315

def NamedBody321_317 : StackLang.HolProg 64 :=
.seq NamedBody321_283 NamedBody321_316

def NamedBody321_318 : StackLang.HolProg 64 :=
.seq NamedBody321_282 NamedBody321_317

def NamedBody321_319 : StackLang.HolProg 64 :=
.seq NamedBody321_253 NamedBody321_318

def NamedBody321_320 : StackLang.HolProg 64 :=
.seq NamedBody321_250 NamedBody321_319

def NamedBody321_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody321_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_325 : StackLang.HolProg 64 :=
.seq NamedBody321_323 NamedBody321_324

def NamedBody321_326 : StackLang.HolProg 64 :=
.seq NamedBody321_322 NamedBody321_325

def NamedBody321_327 : StackLang.HolProg 64 :=
.seq NamedBody321_321 NamedBody321_326

def NamedBody321_328 : StackLang.HolProg 64 :=
.seq NamedBody321_320 NamedBody321_327

def NamedBody321_329 : StackLang.HolProg 64 :=
.seq NamedBody321_249 NamedBody321_328

def NamedBody321_330 : StackLang.HolProg 64 :=
.seq NamedBody321_248 NamedBody321_329

def NamedBody321_331 : StackLang.HolProg 64 :=
.seq NamedBody321_247 NamedBody321_330

def NamedBody321_332 : StackLang.HolProg 64 :=
.seq NamedBody321_246 NamedBody321_331

def NamedBody321_333 : StackLang.HolProg 64 :=
.seq NamedBody321_245 NamedBody321_332

def NamedBody321_334 : StackLang.HolProg 64 :=
.seq NamedBody321_244 NamedBody321_333

def NamedBody321_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody321_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody321_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody321_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody321_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody321_341 : StackLang.HolProg 64 :=
.seq NamedBody321_339 NamedBody321_340

def NamedBody321_342 : StackLang.HolProg 64 :=
.seq NamedBody321_338 NamedBody321_341

def NamedBody321_343 : StackLang.HolProg 64 :=
.seq NamedBody321_337 NamedBody321_342

def NamedBody321_344 : StackLang.HolProg 64 :=
.seq NamedBody321_336 NamedBody321_343

def NamedBody321_345 : StackLang.HolProg 64 :=
.seq NamedBody321_335 NamedBody321_344

def NamedBody321_346 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody321_334 NamedBody321_345

def NamedBody321_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_349 : StackLang.HolProg 64 :=
.seq NamedBody321_347 NamedBody321_348

def NamedBody321_350 : StackLang.HolProg 64 :=
.seq NamedBody321_346 NamedBody321_349

def NamedBody321_351 : StackLang.HolProg 64 :=
.seq NamedBody321_243 NamedBody321_350

def NamedBody321_352 : StackLang.HolProg 64 :=
.seq NamedBody321_242 NamedBody321_351

def NamedBody321_353 : StackLang.HolProg 64 :=
.seq NamedBody321_241 NamedBody321_352

def NamedBody321_354 : StackLang.HolProg 64 :=
.seq NamedBody321_240 NamedBody321_353

def NamedBody321_355 : StackLang.HolProg 64 :=
.seq NamedBody321_173 NamedBody321_354

def NamedBody321_356 : StackLang.HolProg 64 :=
.seq NamedBody321_170 NamedBody321_355

def NamedBody321_357 : StackLang.HolProg 64 :=
.seq NamedBody321_169 NamedBody321_356

def NamedBody321_358 : StackLang.HolProg 64 :=
.seq NamedBody321_168 NamedBody321_357

def NamedBody321_359 : StackLang.HolProg 64 :=
.seq NamedBody321_167 NamedBody321_358

def NamedBody321_360 : StackLang.HolProg 64 :=
.seq NamedBody321_112 NamedBody321_359

def NamedBody321_361 : StackLang.HolProg 64 :=
.seq NamedBody321_107 NamedBody321_360

def NamedBody321_362 : StackLang.HolProg 64 :=
.seq NamedBody321_106 NamedBody321_361

def NamedBody321_363 : StackLang.HolProg 64 :=
.seq NamedBody321_105 NamedBody321_362

def NamedBody321_364 : StackLang.HolProg 64 :=
.seq NamedBody321_104 NamedBody321_363

def NamedBody321_365 : StackLang.HolProg 64 :=
.seq NamedBody321_95 NamedBody321_364

def NamedBody321_366 : StackLang.HolProg 64 :=
.seq NamedBody321_94 NamedBody321_365

def NamedBody321_367 : StackLang.HolProg 64 :=
.seq NamedBody321_93 NamedBody321_366

def NamedBody321_368 : StackLang.HolProg 64 :=
.seq NamedBody321_92 NamedBody321_367

def NamedBody321_369 : StackLang.HolProg 64 :=
.seq NamedBody321_91 NamedBody321_368

def NamedBody321_370 : StackLang.HolProg 64 :=
.seq NamedBody321_28 NamedBody321_369

def NamedBody321_371 : StackLang.HolProg 64 :=
.seq NamedBody321_19 NamedBody321_370

def NamedBody321_372 : StackLang.HolProg 64 :=
.seq NamedBody321_18 NamedBody321_371

def NamedBody321_373 : StackLang.HolProg 64 :=
.seq NamedBody321_17 NamedBody321_372

def NamedBody321_374 : StackLang.HolProg 64 :=
.seq NamedBody321_16 NamedBody321_373

def NamedBody321_375 : StackLang.HolProg 64 :=
.seq NamedBody321_15 NamedBody321_374

def NamedBody321_376 : StackLang.HolProg 64 :=
.seq NamedBody321_14 NamedBody321_375

def NamedBody321_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_379 : StackLang.HolProg 64 :=
.seq NamedBody321_377 NamedBody321_378

def NamedBody321_380 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody321_376 NamedBody321_379

def NamedBody321_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody321_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody321_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody321_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody321_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody321_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody321_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody321_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody321_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody321_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody321_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody321_398 : StackLang.HolProg 64 :=
.seq NamedBody321_396 NamedBody321_397

def NamedBody321_399 : StackLang.HolProg 64 :=
.seq NamedBody321_395 NamedBody321_398

def NamedBody321_400 : StackLang.HolProg 64 :=
.seq NamedBody321_394 NamedBody321_399

def NamedBody321_401 : StackLang.HolProg 64 :=
.seq NamedBody321_393 NamedBody321_400

def NamedBody321_402 : StackLang.HolProg 64 :=
.seq NamedBody321_392 NamedBody321_401

def NamedBody321_403 : StackLang.HolProg 64 :=
.seq NamedBody321_391 NamedBody321_402

def NamedBody321_404 : StackLang.HolProg 64 :=
.seq NamedBody321_390 NamedBody321_403

def NamedBody321_405 : StackLang.HolProg 64 :=
.seq NamedBody321_389 NamedBody321_404

def NamedBody321_406 : StackLang.HolProg 64 :=
.seq NamedBody321_388 NamedBody321_405

def NamedBody321_407 : StackLang.HolProg 64 :=
.seq NamedBody321_387 NamedBody321_406

def NamedBody321_408 : StackLang.HolProg 64 :=
.seq NamedBody321_386 NamedBody321_407

def NamedBody321_409 : StackLang.HolProg 64 :=
.seq NamedBody321_385 NamedBody321_408

def NamedBody321_410 : StackLang.HolProg 64 :=
.seq NamedBody321_384 NamedBody321_409

def NamedBody321_411 : StackLang.HolProg 64 :=
.seq NamedBody321_383 NamedBody321_410

def NamedBody321_412 : StackLang.HolProg 64 :=
.seq NamedBody321_382 NamedBody321_411

def NamedBody321_413 : StackLang.HolProg 64 :=
.seq NamedBody321_381 NamedBody321_412

def NamedBody321_414 : StackLang.HolProg 64 :=
.seq NamedBody321_380 NamedBody321_413

def NamedBody321_415 : StackLang.HolProg 64 :=
.seq NamedBody321_13 NamedBody321_414

def NamedBody321_416 : StackLang.HolProg 64 :=
.seq NamedBody321_12 NamedBody321_415

def NamedBody321_417 : StackLang.HolProg 64 :=
.seq NamedBody321_11 NamedBody321_416

def NamedBody321_418 : StackLang.HolProg 64 :=
.seq NamedBody321_10 NamedBody321_417

def NamedBody321_419 : StackLang.HolProg 64 :=
.seq NamedBody321_9 NamedBody321_418

def NamedBody321_420 : StackLang.HolProg 64 :=
.seq NamedBody321_8 NamedBody321_419

def NamedBody321_421 : StackLang.HolProg 64 :=
.seq NamedBody321_7 NamedBody321_420

def NamedBody321_422 : StackLang.HolProg 64 :=
.seq NamedBody321_6 NamedBody321_421

def Named321 : Nat × StackLang.HolProg 64 := (321, NamedBody321_422)
theorem Named321_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed321 = Named321 := by
  kernel_rfl
#print axioms Named321_eq
end InitECandidate.Proofs.BackendStages
