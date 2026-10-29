import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed238
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody238_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody238_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody238_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody238_3 : StackLang.HolProg 64 :=
.seq NamedBody238_1 NamedBody238_2

def NamedBody238_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody238_3 NamedBody238_4

def NamedBody238_6 : StackLang.HolProg 64 :=
.seq NamedBody238_0 NamedBody238_5

def NamedBody238_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody238_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody238_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody238_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody238_11 : StackLang.HolProg 64 :=
.seq NamedBody238_9 NamedBody238_10

def NamedBody238_12 : StackLang.HolProg 64 :=
.seq NamedBody238_8 NamedBody238_11

def NamedBody238_13 : StackLang.HolProg 64 :=
.seq NamedBody238_7 NamedBody238_12

def NamedBody238_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 455#64)

def NamedBody238_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody238_17 : StackLang.HolProg 64 :=
.seq NamedBody238_15 NamedBody238_16

def NamedBody238_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody238_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody238_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody238_21 : StackLang.HolProg 64 :=
.seq NamedBody238_19 NamedBody238_20

def NamedBody238_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody238_21 NamedBody238_22

def NamedBody238_24 : StackLang.HolProg 64 :=
.seq NamedBody238_18 NamedBody238_23

def NamedBody238_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody238_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody238_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 238 3

def NamedBody238_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody238_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody238_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody238_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody238_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody238_34 : StackLang.HolProg 64 :=
.seq NamedBody238_32 NamedBody238_33

def NamedBody238_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody238_36 : StackLang.HolProg 64 :=
.seq NamedBody238_34 NamedBody238_35

def NamedBody238_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody238_38 : StackLang.HolProg 64 :=
.seq NamedBody238_36 NamedBody238_37

def NamedBody238_39 : StackLang.HolProg 64 :=
.seq NamedBody238_31 NamedBody238_38

def NamedBody238_40 : StackLang.HolProg 64 :=
.seq NamedBody238_30 NamedBody238_39

def NamedBody238_41 : StackLang.HolProg 64 :=
.seq NamedBody238_29 NamedBody238_40

def NamedBody238_42 : StackLang.HolProg 64 :=
.seq NamedBody238_28 NamedBody238_41

def NamedBody238_43 : StackLang.HolProg 64 :=
.seq NamedBody238_27 NamedBody238_42

def NamedBody238_44 : StackLang.HolProg 64 :=
.seq NamedBody238_26 NamedBody238_43

def NamedBody238_45 : StackLang.HolProg 64 :=
.seq NamedBody238_25 NamedBody238_44

def NamedBody238_46 : StackLang.HolProg 64 :=
.seq NamedBody238_24 NamedBody238_45

def NamedBody238_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody238_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody238_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody238_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody238_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody238_55 : StackLang.HolProg 64 :=
.seq NamedBody238_53 NamedBody238_54

def NamedBody238_56 : StackLang.HolProg 64 :=
.seq NamedBody238_52 NamedBody238_55

def NamedBody238_57 : StackLang.HolProg 64 :=
.seq NamedBody238_51 NamedBody238_56

def NamedBody238_58 : StackLang.HolProg 64 :=
.seq NamedBody238_50 NamedBody238_57

def NamedBody238_59 : StackLang.HolProg 64 :=
.seq NamedBody238_49 NamedBody238_58

def NamedBody238_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody238_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody238_62 : StackLang.HolProg 64 :=
.seq NamedBody238_60 NamedBody238_61

def NamedBody238_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody238_64 : StackLang.HolProg 64 :=
.seq NamedBody238_62 NamedBody238_63

def NamedBody238_65 : StackLang.HolProg 64 :=
.call (some (NamedBody238_59, 1, 238, 2)) (Sum.inl 237) (some (NamedBody238_64, 238, 3))

def NamedBody238_66 : StackLang.HolProg 64 :=
.seq NamedBody238_48 NamedBody238_65

def NamedBody238_67 : StackLang.HolProg 64 :=
.seq NamedBody238_47 NamedBody238_66

def NamedBody238_68 : StackLang.HolProg 64 :=
.seq NamedBody238_46 NamedBody238_67

def NamedBody238_69 : StackLang.HolProg 64 :=
.seq NamedBody238_17 NamedBody238_68

def NamedBody238_70 : StackLang.HolProg 64 :=
.seq NamedBody238_14 NamedBody238_69

def NamedBody238_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody238_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody238_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 456#64)

def NamedBody238_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody238_76 : StackLang.HolProg 64 :=
.seq NamedBody238_74 NamedBody238_75

def NamedBody238_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody238_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody238_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody238_80 : StackLang.HolProg 64 :=
.seq NamedBody238_78 NamedBody238_79

def NamedBody238_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody238_80 NamedBody238_81

def NamedBody238_83 : StackLang.HolProg 64 :=
.seq NamedBody238_77 NamedBody238_82

def NamedBody238_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody238_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody238_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 238 5

def NamedBody238_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody238_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody238_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody238_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody238_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody238_93 : StackLang.HolProg 64 :=
.seq NamedBody238_91 NamedBody238_92

def NamedBody238_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody238_95 : StackLang.HolProg 64 :=
.seq NamedBody238_93 NamedBody238_94

def NamedBody238_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody238_97 : StackLang.HolProg 64 :=
.seq NamedBody238_95 NamedBody238_96

def NamedBody238_98 : StackLang.HolProg 64 :=
.seq NamedBody238_90 NamedBody238_97

def NamedBody238_99 : StackLang.HolProg 64 :=
.seq NamedBody238_89 NamedBody238_98

def NamedBody238_100 : StackLang.HolProg 64 :=
.seq NamedBody238_88 NamedBody238_99

def NamedBody238_101 : StackLang.HolProg 64 :=
.seq NamedBody238_87 NamedBody238_100

def NamedBody238_102 : StackLang.HolProg 64 :=
.seq NamedBody238_86 NamedBody238_101

def NamedBody238_103 : StackLang.HolProg 64 :=
.seq NamedBody238_85 NamedBody238_102

def NamedBody238_104 : StackLang.HolProg 64 :=
.seq NamedBody238_84 NamedBody238_103

def NamedBody238_105 : StackLang.HolProg 64 :=
.seq NamedBody238_83 NamedBody238_104

def NamedBody238_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody238_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody238_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody238_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody238_113 : StackLang.HolProg 64 :=
.seq NamedBody238_111 NamedBody238_112

def NamedBody238_114 : StackLang.HolProg 64 :=
.seq NamedBody238_110 NamedBody238_113

def NamedBody238_115 : StackLang.HolProg 64 :=
.seq NamedBody238_109 NamedBody238_114

def NamedBody238_116 : StackLang.HolProg 64 :=
.seq NamedBody238_108 NamedBody238_115

def NamedBody238_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody238_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody238_119 : StackLang.HolProg 64 :=
.seq NamedBody238_117 NamedBody238_118

def NamedBody238_120 : StackLang.HolProg 64 :=
.call (some (NamedBody238_116, 1, 238, 4)) (Sum.inl 236) (some (NamedBody238_119, 238, 5))

def NamedBody238_121 : StackLang.HolProg 64 :=
.seq NamedBody238_107 NamedBody238_120

def NamedBody238_122 : StackLang.HolProg 64 :=
.seq NamedBody238_106 NamedBody238_121

def NamedBody238_123 : StackLang.HolProg 64 :=
.seq NamedBody238_105 NamedBody238_122

def NamedBody238_124 : StackLang.HolProg 64 :=
.seq NamedBody238_76 NamedBody238_123

def NamedBody238_125 : StackLang.HolProg 64 :=
.seq NamedBody238_73 NamedBody238_124

def NamedBody238_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody238_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody238_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody238_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody238_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody238_131 : StackLang.HolProg 64 :=
.seq NamedBody238_129 NamedBody238_130

def NamedBody238_132 : StackLang.HolProg 64 :=
.seq NamedBody238_128 NamedBody238_131

def NamedBody238_133 : StackLang.HolProg 64 :=
.seq NamedBody238_127 NamedBody238_132

def NamedBody238_134 : StackLang.HolProg 64 :=
.seq NamedBody238_126 NamedBody238_133

def NamedBody238_135 : StackLang.HolProg 64 :=
.seq NamedBody238_125 NamedBody238_134

def NamedBody238_136 : StackLang.HolProg 64 :=
.seq NamedBody238_72 NamedBody238_135

def NamedBody238_137 : StackLang.HolProg 64 :=
.seq NamedBody238_71 NamedBody238_136

def NamedBody238_138 : StackLang.HolProg 64 :=
.seq NamedBody238_70 NamedBody238_137

def NamedBody238_139 : StackLang.HolProg 64 :=
.seq NamedBody238_13 NamedBody238_138

def NamedBody238_140 : StackLang.HolProg 64 :=
.seq NamedBody238_6 NamedBody238_139

def Named238 : Nat × StackLang.HolProg 64 := (238, NamedBody238_140)
theorem Named238_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed238 = Named238 := by
  kernel_rfl
#print axioms Named238_eq
end InitECandidate.Proofs.BackendStages
