import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed152
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody152_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody152_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody152_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody152_3 : StackLang.HolProg 64 :=
.seq NamedBody152_1 NamedBody152_2

def NamedBody152_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody152_3 NamedBody152_4

def NamedBody152_6 : StackLang.HolProg 64 :=
.seq NamedBody152_0 NamedBody152_5

def NamedBody152_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody152_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody152_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody152_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody152_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody152_13 : StackLang.HolProg 64 :=
.seq NamedBody152_11 NamedBody152_12

def NamedBody152_14 : StackLang.HolProg 64 :=
.seq NamedBody152_10 NamedBody152_13

def NamedBody152_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody152_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody152_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody152_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody152_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody152_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody152_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody152_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody152_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody152_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody152_30 : StackLang.HolProg 64 :=
.seq NamedBody152_28 NamedBody152_29

def NamedBody152_31 : StackLang.HolProg 64 :=
.seq NamedBody152_27 NamedBody152_30

def NamedBody152_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 128#64)

def NamedBody152_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody152_35 : StackLang.HolProg 64 :=
.seq NamedBody152_33 NamedBody152_34

def NamedBody152_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody152_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody152_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody152_39 : StackLang.HolProg 64 :=
.seq NamedBody152_37 NamedBody152_38

def NamedBody152_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody152_39 NamedBody152_40

def NamedBody152_42 : StackLang.HolProg 64 :=
.seq NamedBody152_36 NamedBody152_41

def NamedBody152_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody152_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody152_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 152 3

def NamedBody152_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody152_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody152_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody152_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody152_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody152_52 : StackLang.HolProg 64 :=
.seq NamedBody152_50 NamedBody152_51

def NamedBody152_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody152_54 : StackLang.HolProg 64 :=
.seq NamedBody152_52 NamedBody152_53

def NamedBody152_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody152_56 : StackLang.HolProg 64 :=
.seq NamedBody152_54 NamedBody152_55

def NamedBody152_57 : StackLang.HolProg 64 :=
.seq NamedBody152_49 NamedBody152_56

def NamedBody152_58 : StackLang.HolProg 64 :=
.seq NamedBody152_48 NamedBody152_57

def NamedBody152_59 : StackLang.HolProg 64 :=
.seq NamedBody152_47 NamedBody152_58

def NamedBody152_60 : StackLang.HolProg 64 :=
.seq NamedBody152_46 NamedBody152_59

def NamedBody152_61 : StackLang.HolProg 64 :=
.seq NamedBody152_45 NamedBody152_60

def NamedBody152_62 : StackLang.HolProg 64 :=
.seq NamedBody152_44 NamedBody152_61

def NamedBody152_63 : StackLang.HolProg 64 :=
.seq NamedBody152_43 NamedBody152_62

def NamedBody152_64 : StackLang.HolProg 64 :=
.seq NamedBody152_42 NamedBody152_63

def NamedBody152_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody152_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody152_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody152_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody152_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody152_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody152_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody152_75 : StackLang.HolProg 64 :=
.seq NamedBody152_73 NamedBody152_74

def NamedBody152_76 : StackLang.HolProg 64 :=
.seq NamedBody152_72 NamedBody152_75

def NamedBody152_77 : StackLang.HolProg 64 :=
.seq NamedBody152_71 NamedBody152_76

def NamedBody152_78 : StackLang.HolProg 64 :=
.seq NamedBody152_70 NamedBody152_77

def NamedBody152_79 : StackLang.HolProg 64 :=
.seq NamedBody152_69 NamedBody152_78

def NamedBody152_80 : StackLang.HolProg 64 :=
.seq NamedBody152_68 NamedBody152_79

def NamedBody152_81 : StackLang.HolProg 64 :=
.seq NamedBody152_67 NamedBody152_80

def NamedBody152_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody152_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody152_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody152_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody152_86 : StackLang.HolProg 64 :=
.seq NamedBody152_84 NamedBody152_85

def NamedBody152_87 : StackLang.HolProg 64 :=
.seq NamedBody152_83 NamedBody152_86

def NamedBody152_88 : StackLang.HolProg 64 :=
.seq NamedBody152_82 NamedBody152_87

def NamedBody152_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody152_90 : StackLang.HolProg 64 :=
.seq NamedBody152_88 NamedBody152_89

def NamedBody152_91 : StackLang.HolProg 64 :=
.call (some (NamedBody152_81, 1, 152, 2)) (Sum.inl 88) (some (NamedBody152_90, 152, 3))

def NamedBody152_92 : StackLang.HolProg 64 :=
.seq NamedBody152_66 NamedBody152_91

def NamedBody152_93 : StackLang.HolProg 64 :=
.seq NamedBody152_65 NamedBody152_92

def NamedBody152_94 : StackLang.HolProg 64 :=
.seq NamedBody152_64 NamedBody152_93

def NamedBody152_95 : StackLang.HolProg 64 :=
.seq NamedBody152_35 NamedBody152_94

def NamedBody152_96 : StackLang.HolProg 64 :=
.seq NamedBody152_32 NamedBody152_95

def NamedBody152_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody152_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody152_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody152_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody152_102 : StackLang.HolProg 64 :=
.seq NamedBody152_100 NamedBody152_101

def NamedBody152_103 : StackLang.HolProg 64 :=
.seq NamedBody152_99 NamedBody152_102

def NamedBody152_104 : StackLang.HolProg 64 :=
.seq NamedBody152_98 NamedBody152_103

def NamedBody152_105 : StackLang.HolProg 64 :=
.seq NamedBody152_97 NamedBody152_104

def NamedBody152_106 : StackLang.HolProg 64 :=
.seq NamedBody152_96 NamedBody152_105

def NamedBody152_107 : StackLang.HolProg 64 :=
.seq NamedBody152_31 NamedBody152_106

def NamedBody152_108 : StackLang.HolProg 64 :=
.seq NamedBody152_26 NamedBody152_107

def NamedBody152_109 : StackLang.HolProg 64 :=
.seq NamedBody152_25 NamedBody152_108

def NamedBody152_110 : StackLang.HolProg 64 :=
.seq NamedBody152_24 NamedBody152_109

def NamedBody152_111 : StackLang.HolProg 64 :=
.seq NamedBody152_23 NamedBody152_110

def NamedBody152_112 : StackLang.HolProg 64 :=
.seq NamedBody152_22 NamedBody152_111

def NamedBody152_113 : StackLang.HolProg 64 :=
.seq NamedBody152_21 NamedBody152_112

def NamedBody152_114 : StackLang.HolProg 64 :=
.seq NamedBody152_20 NamedBody152_113

def NamedBody152_115 : StackLang.HolProg 64 :=
.seq NamedBody152_19 NamedBody152_114

def NamedBody152_116 : StackLang.HolProg 64 :=
.seq NamedBody152_18 NamedBody152_115

def NamedBody152_117 : StackLang.HolProg 64 :=
.seq NamedBody152_17 NamedBody152_116

def NamedBody152_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody152_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody152_120 : StackLang.HolProg 64 :=
.seq NamedBody152_118 NamedBody152_119

def NamedBody152_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody152_117 NamedBody152_120

def NamedBody152_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody152_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody152_124 : StackLang.HolProg 64 :=
.seq NamedBody152_122 NamedBody152_123

def NamedBody152_125 : StackLang.HolProg 64 :=
.seq NamedBody152_121 NamedBody152_124

def NamedBody152_126 : StackLang.HolProg 64 :=
.seq NamedBody152_16 NamedBody152_125

def NamedBody152_127 : StackLang.HolProg 64 :=
.seq NamedBody152_15 NamedBody152_126

def NamedBody152_128 : StackLang.HolProg 64 :=
.loop NamedBody152_127

def NamedBody152_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody152_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody152_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody152_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody152_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody152_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody152_135 : StackLang.HolProg 64 :=
.seq NamedBody152_133 NamedBody152_134

def NamedBody152_136 : StackLang.HolProg 64 :=
.seq NamedBody152_132 NamedBody152_135

def NamedBody152_137 : StackLang.HolProg 64 :=
.seq NamedBody152_131 NamedBody152_136

def NamedBody152_138 : StackLang.HolProg 64 :=
.seq NamedBody152_130 NamedBody152_137

def NamedBody152_139 : StackLang.HolProg 64 :=
.seq NamedBody152_129 NamedBody152_138

def NamedBody152_140 : StackLang.HolProg 64 :=
.seq NamedBody152_128 NamedBody152_139

def NamedBody152_141 : StackLang.HolProg 64 :=
.seq NamedBody152_14 NamedBody152_140

def NamedBody152_142 : StackLang.HolProg 64 :=
.seq NamedBody152_9 NamedBody152_141

def NamedBody152_143 : StackLang.HolProg 64 :=
.seq NamedBody152_8 NamedBody152_142

def NamedBody152_144 : StackLang.HolProg 64 :=
.seq NamedBody152_7 NamedBody152_143

def NamedBody152_145 : StackLang.HolProg 64 :=
.seq NamedBody152_6 NamedBody152_144

def Named152 : Nat × StackLang.HolProg 64 := (152, NamedBody152_145)
theorem Named152_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed152 = Named152 := by
  kernel_rfl
#print axioms Named152_eq
end InitECandidate.Proofs.BackendStages
