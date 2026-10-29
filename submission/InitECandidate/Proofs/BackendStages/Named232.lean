import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed232
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody232_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody232_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody232_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody232_3 : StackLang.HolProg 64 :=
.seq NamedBody232_1 NamedBody232_2

def NamedBody232_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody232_3 NamedBody232_4

def NamedBody232_6 : StackLang.HolProg 64 :=
.seq NamedBody232_0 NamedBody232_5

def NamedBody232_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody232_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_10 : StackLang.HolProg 64 :=
.seq NamedBody232_8 NamedBody232_9

def NamedBody232_11 : StackLang.HolProg 64 :=
.seq NamedBody232_7 NamedBody232_10

def NamedBody232_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 419#64)

def NamedBody232_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_15 : StackLang.HolProg 64 :=
.seq NamedBody232_13 NamedBody232_14

def NamedBody232_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody232_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody232_19 : StackLang.HolProg 64 :=
.seq NamedBody232_17 NamedBody232_18

def NamedBody232_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody232_19 NamedBody232_20

def NamedBody232_22 : StackLang.HolProg 64 :=
.seq NamedBody232_16 NamedBody232_21

def NamedBody232_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody232_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 3

def NamedBody232_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody232_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody232_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody232_32 : StackLang.HolProg 64 :=
.seq NamedBody232_30 NamedBody232_31

def NamedBody232_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody232_34 : StackLang.HolProg 64 :=
.seq NamedBody232_32 NamedBody232_33

def NamedBody232_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_36 : StackLang.HolProg 64 :=
.seq NamedBody232_34 NamedBody232_35

def NamedBody232_37 : StackLang.HolProg 64 :=
.seq NamedBody232_29 NamedBody232_36

def NamedBody232_38 : StackLang.HolProg 64 :=
.seq NamedBody232_28 NamedBody232_37

def NamedBody232_39 : StackLang.HolProg 64 :=
.seq NamedBody232_27 NamedBody232_38

def NamedBody232_40 : StackLang.HolProg 64 :=
.seq NamedBody232_26 NamedBody232_39

def NamedBody232_41 : StackLang.HolProg 64 :=
.seq NamedBody232_25 NamedBody232_40

def NamedBody232_42 : StackLang.HolProg 64 :=
.seq NamedBody232_24 NamedBody232_41

def NamedBody232_43 : StackLang.HolProg 64 :=
.seq NamedBody232_23 NamedBody232_42

def NamedBody232_44 : StackLang.HolProg 64 :=
.seq NamedBody232_22 NamedBody232_43

def NamedBody232_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody232_52 : StackLang.HolProg 64 :=
.seq NamedBody232_50 NamedBody232_51

def NamedBody232_53 : StackLang.HolProg 64 :=
.seq NamedBody232_49 NamedBody232_52

def NamedBody232_54 : StackLang.HolProg 64 :=
.seq NamedBody232_48 NamedBody232_53

def NamedBody232_55 : StackLang.HolProg 64 :=
.seq NamedBody232_47 NamedBody232_54

def NamedBody232_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody232_58 : StackLang.HolProg 64 :=
.seq NamedBody232_56 NamedBody232_57

def NamedBody232_59 : StackLang.HolProg 64 :=
.call (some (NamedBody232_55, 1, 232, 2)) (Sum.inl 69) (some (NamedBody232_58, 232, 3))

def NamedBody232_60 : StackLang.HolProg 64 :=
.seq NamedBody232_46 NamedBody232_59

def NamedBody232_61 : StackLang.HolProg 64 :=
.seq NamedBody232_45 NamedBody232_60

def NamedBody232_62 : StackLang.HolProg 64 :=
.seq NamedBody232_44 NamedBody232_61

def NamedBody232_63 : StackLang.HolProg 64 :=
.seq NamedBody232_15 NamedBody232_62

def NamedBody232_64 : StackLang.HolProg 64 :=
.seq NamedBody232_12 NamedBody232_63

def NamedBody232_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody232_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody232_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody232_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 420#64)

def NamedBody232_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_71 : StackLang.HolProg 64 :=
.seq NamedBody232_69 NamedBody232_70

def NamedBody232_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody232_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody232_75 : StackLang.HolProg 64 :=
.seq NamedBody232_73 NamedBody232_74

def NamedBody232_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody232_75 NamedBody232_76

def NamedBody232_78 : StackLang.HolProg 64 :=
.seq NamedBody232_72 NamedBody232_77

def NamedBody232_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody232_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 5

def NamedBody232_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody232_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody232_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody232_88 : StackLang.HolProg 64 :=
.seq NamedBody232_86 NamedBody232_87

def NamedBody232_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody232_90 : StackLang.HolProg 64 :=
.seq NamedBody232_88 NamedBody232_89

def NamedBody232_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_92 : StackLang.HolProg 64 :=
.seq NamedBody232_90 NamedBody232_91

def NamedBody232_93 : StackLang.HolProg 64 :=
.seq NamedBody232_85 NamedBody232_92

def NamedBody232_94 : StackLang.HolProg 64 :=
.seq NamedBody232_84 NamedBody232_93

def NamedBody232_95 : StackLang.HolProg 64 :=
.seq NamedBody232_83 NamedBody232_94

def NamedBody232_96 : StackLang.HolProg 64 :=
.seq NamedBody232_82 NamedBody232_95

def NamedBody232_97 : StackLang.HolProg 64 :=
.seq NamedBody232_81 NamedBody232_96

def NamedBody232_98 : StackLang.HolProg 64 :=
.seq NamedBody232_80 NamedBody232_97

def NamedBody232_99 : StackLang.HolProg 64 :=
.seq NamedBody232_79 NamedBody232_98

def NamedBody232_100 : StackLang.HolProg 64 :=
.seq NamedBody232_78 NamedBody232_99

def NamedBody232_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody232_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_109 : StackLang.HolProg 64 :=
.seq NamedBody232_107 NamedBody232_108

def NamedBody232_110 : StackLang.HolProg 64 :=
.seq NamedBody232_106 NamedBody232_109

def NamedBody232_111 : StackLang.HolProg 64 :=
.seq NamedBody232_105 NamedBody232_110

def NamedBody232_112 : StackLang.HolProg 64 :=
.seq NamedBody232_104 NamedBody232_111

def NamedBody232_113 : StackLang.HolProg 64 :=
.seq NamedBody232_103 NamedBody232_112

def NamedBody232_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody232_116 : StackLang.HolProg 64 :=
.seq NamedBody232_114 NamedBody232_115

def NamedBody232_117 : StackLang.HolProg 64 :=
.call (some (NamedBody232_113, 1, 232, 4)) (Sum.inl 68) (some (NamedBody232_116, 232, 5))

def NamedBody232_118 : StackLang.HolProg 64 :=
.seq NamedBody232_102 NamedBody232_117

def NamedBody232_119 : StackLang.HolProg 64 :=
.seq NamedBody232_101 NamedBody232_118

def NamedBody232_120 : StackLang.HolProg 64 :=
.seq NamedBody232_100 NamedBody232_119

def NamedBody232_121 : StackLang.HolProg 64 :=
.seq NamedBody232_71 NamedBody232_120

def NamedBody232_122 : StackLang.HolProg 64 :=
.seq NamedBody232_68 NamedBody232_121

def NamedBody232_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody232_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody232_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 64#64)

def NamedBody232_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 421#64)

def NamedBody232_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_130 : StackLang.HolProg 64 :=
.seq NamedBody232_128 NamedBody232_129

def NamedBody232_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody232_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody232_134 : StackLang.HolProg 64 :=
.seq NamedBody232_132 NamedBody232_133

def NamedBody232_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody232_134 NamedBody232_135

def NamedBody232_137 : StackLang.HolProg 64 :=
.seq NamedBody232_131 NamedBody232_136

def NamedBody232_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody232_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 7

def NamedBody232_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody232_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody232_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody232_147 : StackLang.HolProg 64 :=
.seq NamedBody232_145 NamedBody232_146

def NamedBody232_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody232_149 : StackLang.HolProg 64 :=
.seq NamedBody232_147 NamedBody232_148

def NamedBody232_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_151 : StackLang.HolProg 64 :=
.seq NamedBody232_149 NamedBody232_150

def NamedBody232_152 : StackLang.HolProg 64 :=
.seq NamedBody232_144 NamedBody232_151

def NamedBody232_153 : StackLang.HolProg 64 :=
.seq NamedBody232_143 NamedBody232_152

def NamedBody232_154 : StackLang.HolProg 64 :=
.seq NamedBody232_142 NamedBody232_153

def NamedBody232_155 : StackLang.HolProg 64 :=
.seq NamedBody232_141 NamedBody232_154

def NamedBody232_156 : StackLang.HolProg 64 :=
.seq NamedBody232_140 NamedBody232_155

def NamedBody232_157 : StackLang.HolProg 64 :=
.seq NamedBody232_139 NamedBody232_156

def NamedBody232_158 : StackLang.HolProg 64 :=
.seq NamedBody232_138 NamedBody232_157

def NamedBody232_159 : StackLang.HolProg 64 :=
.seq NamedBody232_137 NamedBody232_158

def NamedBody232_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody232_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_170 : StackLang.HolProg 64 :=
.seq NamedBody232_168 NamedBody232_169

def NamedBody232_171 : StackLang.HolProg 64 :=
.seq NamedBody232_167 NamedBody232_170

def NamedBody232_172 : StackLang.HolProg 64 :=
.seq NamedBody232_166 NamedBody232_171

def NamedBody232_173 : StackLang.HolProg 64 :=
.seq NamedBody232_165 NamedBody232_172

def NamedBody232_174 : StackLang.HolProg 64 :=
.seq NamedBody232_164 NamedBody232_173

def NamedBody232_175 : StackLang.HolProg 64 :=
.seq NamedBody232_163 NamedBody232_174

def NamedBody232_176 : StackLang.HolProg 64 :=
.seq NamedBody232_162 NamedBody232_175

def NamedBody232_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody232_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_181 : StackLang.HolProg 64 :=
.seq NamedBody232_179 NamedBody232_180

def NamedBody232_182 : StackLang.HolProg 64 :=
.seq NamedBody232_178 NamedBody232_181

def NamedBody232_183 : StackLang.HolProg 64 :=
.seq NamedBody232_177 NamedBody232_182

def NamedBody232_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody232_185 : StackLang.HolProg 64 :=
.seq NamedBody232_183 NamedBody232_184

def NamedBody232_186 : StackLang.HolProg 64 :=
.call (some (NamedBody232_176, 1, 232, 6)) (Sum.inl 158) (some (NamedBody232_185, 232, 7))

def NamedBody232_187 : StackLang.HolProg 64 :=
.seq NamedBody232_161 NamedBody232_186

def NamedBody232_188 : StackLang.HolProg 64 :=
.seq NamedBody232_160 NamedBody232_187

def NamedBody232_189 : StackLang.HolProg 64 :=
.seq NamedBody232_159 NamedBody232_188

def NamedBody232_190 : StackLang.HolProg 64 :=
.seq NamedBody232_130 NamedBody232_189

def NamedBody232_191 : StackLang.HolProg 64 :=
.seq NamedBody232_127 NamedBody232_190

def NamedBody232_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody232_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody232_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def NamedBody232_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody232_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 422#64)

def NamedBody232_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_200 : StackLang.HolProg 64 :=
.seq NamedBody232_198 NamedBody232_199

def NamedBody232_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody232_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody232_204 : StackLang.HolProg 64 :=
.seq NamedBody232_202 NamedBody232_203

def NamedBody232_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_206 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody232_204 NamedBody232_205

def NamedBody232_207 : StackLang.HolProg 64 :=
.seq NamedBody232_201 NamedBody232_206

def NamedBody232_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody232_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 9

def NamedBody232_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody232_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody232_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody232_217 : StackLang.HolProg 64 :=
.seq NamedBody232_215 NamedBody232_216

def NamedBody232_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody232_219 : StackLang.HolProg 64 :=
.seq NamedBody232_217 NamedBody232_218

def NamedBody232_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_221 : StackLang.HolProg 64 :=
.seq NamedBody232_219 NamedBody232_220

def NamedBody232_222 : StackLang.HolProg 64 :=
.seq NamedBody232_214 NamedBody232_221

def NamedBody232_223 : StackLang.HolProg 64 :=
.seq NamedBody232_213 NamedBody232_222

def NamedBody232_224 : StackLang.HolProg 64 :=
.seq NamedBody232_212 NamedBody232_223

def NamedBody232_225 : StackLang.HolProg 64 :=
.seq NamedBody232_211 NamedBody232_224

def NamedBody232_226 : StackLang.HolProg 64 :=
.seq NamedBody232_210 NamedBody232_225

def NamedBody232_227 : StackLang.HolProg 64 :=
.seq NamedBody232_209 NamedBody232_226

def NamedBody232_228 : StackLang.HolProg 64 :=
.seq NamedBody232_208 NamedBody232_227

def NamedBody232_229 : StackLang.HolProg 64 :=
.seq NamedBody232_207 NamedBody232_228

def NamedBody232_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_237 : StackLang.HolProg 64 :=
.seq NamedBody232_235 NamedBody232_236

def NamedBody232_238 : StackLang.HolProg 64 :=
.seq NamedBody232_234 NamedBody232_237

def NamedBody232_239 : StackLang.HolProg 64 :=
.seq NamedBody232_233 NamedBody232_238

def NamedBody232_240 : StackLang.HolProg 64 :=
.seq NamedBody232_232 NamedBody232_239

def NamedBody232_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody232_242 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody232_243 : StackLang.HolProg 64 :=
.seq NamedBody232_241 NamedBody232_242

def NamedBody232_244 : StackLang.HolProg 64 :=
.call (some (NamedBody232_240, 1, 232, 8)) (Sum.inl 77) (some (NamedBody232_243, 232, 9))

def NamedBody232_245 : StackLang.HolProg 64 :=
.seq NamedBody232_231 NamedBody232_244

def NamedBody232_246 : StackLang.HolProg 64 :=
.seq NamedBody232_230 NamedBody232_245

def NamedBody232_247 : StackLang.HolProg 64 :=
.seq NamedBody232_229 NamedBody232_246

def NamedBody232_248 : StackLang.HolProg 64 :=
.seq NamedBody232_200 NamedBody232_247

def NamedBody232_249 : StackLang.HolProg 64 :=
.seq NamedBody232_197 NamedBody232_248

def NamedBody232_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody232_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody232_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 423#64)

def NamedBody232_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_255 : StackLang.HolProg 64 :=
.seq NamedBody232_253 NamedBody232_254

def NamedBody232_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody232_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody232_259 : StackLang.HolProg 64 :=
.seq NamedBody232_257 NamedBody232_258

def NamedBody232_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_261 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody232_259 NamedBody232_260

def NamedBody232_262 : StackLang.HolProg 64 :=
.seq NamedBody232_256 NamedBody232_261

def NamedBody232_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody232_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody232_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 11

def NamedBody232_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody232_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody232_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody232_272 : StackLang.HolProg 64 :=
.seq NamedBody232_270 NamedBody232_271

def NamedBody232_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody232_274 : StackLang.HolProg 64 :=
.seq NamedBody232_272 NamedBody232_273

def NamedBody232_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_276 : StackLang.HolProg 64 :=
.seq NamedBody232_274 NamedBody232_275

def NamedBody232_277 : StackLang.HolProg 64 :=
.seq NamedBody232_269 NamedBody232_276

def NamedBody232_278 : StackLang.HolProg 64 :=
.seq NamedBody232_268 NamedBody232_277

def NamedBody232_279 : StackLang.HolProg 64 :=
.seq NamedBody232_267 NamedBody232_278

def NamedBody232_280 : StackLang.HolProg 64 :=
.seq NamedBody232_266 NamedBody232_279

def NamedBody232_281 : StackLang.HolProg 64 :=
.seq NamedBody232_265 NamedBody232_280

def NamedBody232_282 : StackLang.HolProg 64 :=
.seq NamedBody232_264 NamedBody232_281

def NamedBody232_283 : StackLang.HolProg 64 :=
.seq NamedBody232_263 NamedBody232_282

def NamedBody232_284 : StackLang.HolProg 64 :=
.seq NamedBody232_262 NamedBody232_283

def NamedBody232_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody232_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody232_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody232_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody232_292 : StackLang.HolProg 64 :=
.seq NamedBody232_290 NamedBody232_291

def NamedBody232_293 : StackLang.HolProg 64 :=
.seq NamedBody232_289 NamedBody232_292

def NamedBody232_294 : StackLang.HolProg 64 :=
.seq NamedBody232_288 NamedBody232_293

def NamedBody232_295 : StackLang.HolProg 64 :=
.seq NamedBody232_287 NamedBody232_294

def NamedBody232_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody232_297 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody232_298 : StackLang.HolProg 64 :=
.seq NamedBody232_296 NamedBody232_297

def NamedBody232_299 : StackLang.HolProg 64 :=
.call (some (NamedBody232_295, 1, 232, 10)) (Sum.inl 70) (some (NamedBody232_298, 232, 11))

def NamedBody232_300 : StackLang.HolProg 64 :=
.seq NamedBody232_286 NamedBody232_299

def NamedBody232_301 : StackLang.HolProg 64 :=
.seq NamedBody232_285 NamedBody232_300

def NamedBody232_302 : StackLang.HolProg 64 :=
.seq NamedBody232_284 NamedBody232_301

def NamedBody232_303 : StackLang.HolProg 64 :=
.seq NamedBody232_255 NamedBody232_302

def NamedBody232_304 : StackLang.HolProg 64 :=
.seq NamedBody232_252 NamedBody232_303

def NamedBody232_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody232_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody232_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody232_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody232_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody232_310 : StackLang.HolProg 64 :=
.seq NamedBody232_308 NamedBody232_309

def NamedBody232_311 : StackLang.HolProg 64 :=
.seq NamedBody232_307 NamedBody232_310

def NamedBody232_312 : StackLang.HolProg 64 :=
.seq NamedBody232_306 NamedBody232_311

def NamedBody232_313 : StackLang.HolProg 64 :=
.seq NamedBody232_305 NamedBody232_312

def NamedBody232_314 : StackLang.HolProg 64 :=
.seq NamedBody232_304 NamedBody232_313

def NamedBody232_315 : StackLang.HolProg 64 :=
.seq NamedBody232_251 NamedBody232_314

def NamedBody232_316 : StackLang.HolProg 64 :=
.seq NamedBody232_250 NamedBody232_315

def NamedBody232_317 : StackLang.HolProg 64 :=
.seq NamedBody232_249 NamedBody232_316

def NamedBody232_318 : StackLang.HolProg 64 :=
.seq NamedBody232_196 NamedBody232_317

def NamedBody232_319 : StackLang.HolProg 64 :=
.seq NamedBody232_195 NamedBody232_318

def NamedBody232_320 : StackLang.HolProg 64 :=
.seq NamedBody232_194 NamedBody232_319

def NamedBody232_321 : StackLang.HolProg 64 :=
.seq NamedBody232_193 NamedBody232_320

def NamedBody232_322 : StackLang.HolProg 64 :=
.seq NamedBody232_192 NamedBody232_321

def NamedBody232_323 : StackLang.HolProg 64 :=
.seq NamedBody232_191 NamedBody232_322

def NamedBody232_324 : StackLang.HolProg 64 :=
.seq NamedBody232_126 NamedBody232_323

def NamedBody232_325 : StackLang.HolProg 64 :=
.seq NamedBody232_125 NamedBody232_324

def NamedBody232_326 : StackLang.HolProg 64 :=
.seq NamedBody232_124 NamedBody232_325

def NamedBody232_327 : StackLang.HolProg 64 :=
.seq NamedBody232_123 NamedBody232_326

def NamedBody232_328 : StackLang.HolProg 64 :=
.seq NamedBody232_122 NamedBody232_327

def NamedBody232_329 : StackLang.HolProg 64 :=
.seq NamedBody232_67 NamedBody232_328

def NamedBody232_330 : StackLang.HolProg 64 :=
.seq NamedBody232_66 NamedBody232_329

def NamedBody232_331 : StackLang.HolProg 64 :=
.seq NamedBody232_65 NamedBody232_330

def NamedBody232_332 : StackLang.HolProg 64 :=
.seq NamedBody232_64 NamedBody232_331

def NamedBody232_333 : StackLang.HolProg 64 :=
.seq NamedBody232_11 NamedBody232_332

def NamedBody232_334 : StackLang.HolProg 64 :=
.seq NamedBody232_6 NamedBody232_333

def Named232 : Nat × StackLang.HolProg 64 := (232, NamedBody232_334)
theorem Named232_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed232 = Named232 := by
  kernel_rfl
#print axioms Named232_eq
end InitECandidate.Proofs.BackendStages
