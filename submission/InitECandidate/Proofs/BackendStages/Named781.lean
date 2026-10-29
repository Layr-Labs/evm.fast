import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed781
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody781_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody781_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody781_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody781_3 : StackLang.HolProg 64 :=
.seq NamedBody781_1 NamedBody781_2

def NamedBody781_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody781_3 NamedBody781_4

def NamedBody781_6 : StackLang.HolProg 64 :=
.seq NamedBody781_0 NamedBody781_5

def NamedBody781_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody781_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody781_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody781_12 : StackLang.HolProg 64 :=
.seq NamedBody781_10 NamedBody781_11

def NamedBody781_13 : StackLang.HolProg 64 :=
.seq NamedBody781_9 NamedBody781_12

def NamedBody781_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3547#64)

def NamedBody781_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody781_17 : StackLang.HolProg 64 :=
.seq NamedBody781_15 NamedBody781_16

def NamedBody781_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody781_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody781_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody781_21 : StackLang.HolProg 64 :=
.seq NamedBody781_19 NamedBody781_20

def NamedBody781_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody781_21 NamedBody781_22

def NamedBody781_24 : StackLang.HolProg 64 :=
.seq NamedBody781_18 NamedBody781_23

def NamedBody781_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody781_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody781_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 3

def NamedBody781_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody781_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody781_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody781_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody781_34 : StackLang.HolProg 64 :=
.seq NamedBody781_32 NamedBody781_33

def NamedBody781_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody781_36 : StackLang.HolProg 64 :=
.seq NamedBody781_34 NamedBody781_35

def NamedBody781_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody781_38 : StackLang.HolProg 64 :=
.seq NamedBody781_36 NamedBody781_37

def NamedBody781_39 : StackLang.HolProg 64 :=
.seq NamedBody781_31 NamedBody781_38

def NamedBody781_40 : StackLang.HolProg 64 :=
.seq NamedBody781_30 NamedBody781_39

def NamedBody781_41 : StackLang.HolProg 64 :=
.seq NamedBody781_29 NamedBody781_40

def NamedBody781_42 : StackLang.HolProg 64 :=
.seq NamedBody781_28 NamedBody781_41

def NamedBody781_43 : StackLang.HolProg 64 :=
.seq NamedBody781_27 NamedBody781_42

def NamedBody781_44 : StackLang.HolProg 64 :=
.seq NamedBody781_26 NamedBody781_43

def NamedBody781_45 : StackLang.HolProg 64 :=
.seq NamedBody781_25 NamedBody781_44

def NamedBody781_46 : StackLang.HolProg 64 :=
.seq NamedBody781_24 NamedBody781_45

def NamedBody781_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody781_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody781_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody781_55 : StackLang.HolProg 64 :=
.seq NamedBody781_53 NamedBody781_54

def NamedBody781_56 : StackLang.HolProg 64 :=
.seq NamedBody781_52 NamedBody781_55

def NamedBody781_57 : StackLang.HolProg 64 :=
.seq NamedBody781_51 NamedBody781_56

def NamedBody781_58 : StackLang.HolProg 64 :=
.seq NamedBody781_50 NamedBody781_57

def NamedBody781_59 : StackLang.HolProg 64 :=
.seq NamedBody781_49 NamedBody781_58

def NamedBody781_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody781_62 : StackLang.HolProg 64 :=
.seq NamedBody781_60 NamedBody781_61

def NamedBody781_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody781_64 : StackLang.HolProg 64 :=
.seq NamedBody781_62 NamedBody781_63

def NamedBody781_65 : StackLang.HolProg 64 :=
.call (some (NamedBody781_59, 1, 781, 2)) (Sum.inl 729) (some (NamedBody781_64, 781, 3))

def NamedBody781_66 : StackLang.HolProg 64 :=
.seq NamedBody781_48 NamedBody781_65

def NamedBody781_67 : StackLang.HolProg 64 :=
.seq NamedBody781_47 NamedBody781_66

def NamedBody781_68 : StackLang.HolProg 64 :=
.seq NamedBody781_46 NamedBody781_67

def NamedBody781_69 : StackLang.HolProg 64 :=
.seq NamedBody781_17 NamedBody781_68

def NamedBody781_70 : StackLang.HolProg 64 :=
.seq NamedBody781_14 NamedBody781_69

def NamedBody781_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody781_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody781_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody781_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody781_78 : StackLang.HolProg 64 :=
.seq NamedBody781_76 NamedBody781_77

def NamedBody781_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3548#64)

def NamedBody781_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody781_82 : StackLang.HolProg 64 :=
.seq NamedBody781_80 NamedBody781_81

def NamedBody781_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody781_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody781_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody781_86 : StackLang.HolProg 64 :=
.seq NamedBody781_84 NamedBody781_85

def NamedBody781_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody781_86 NamedBody781_87

def NamedBody781_89 : StackLang.HolProg 64 :=
.seq NamedBody781_83 NamedBody781_88

def NamedBody781_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody781_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody781_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 5

def NamedBody781_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody781_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody781_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody781_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody781_99 : StackLang.HolProg 64 :=
.seq NamedBody781_97 NamedBody781_98

def NamedBody781_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody781_101 : StackLang.HolProg 64 :=
.seq NamedBody781_99 NamedBody781_100

def NamedBody781_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody781_103 : StackLang.HolProg 64 :=
.seq NamedBody781_101 NamedBody781_102

def NamedBody781_104 : StackLang.HolProg 64 :=
.seq NamedBody781_96 NamedBody781_103

def NamedBody781_105 : StackLang.HolProg 64 :=
.seq NamedBody781_95 NamedBody781_104

def NamedBody781_106 : StackLang.HolProg 64 :=
.seq NamedBody781_94 NamedBody781_105

def NamedBody781_107 : StackLang.HolProg 64 :=
.seq NamedBody781_93 NamedBody781_106

def NamedBody781_108 : StackLang.HolProg 64 :=
.seq NamedBody781_92 NamedBody781_107

def NamedBody781_109 : StackLang.HolProg 64 :=
.seq NamedBody781_91 NamedBody781_108

def NamedBody781_110 : StackLang.HolProg 64 :=
.seq NamedBody781_90 NamedBody781_109

def NamedBody781_111 : StackLang.HolProg 64 :=
.seq NamedBody781_89 NamedBody781_110

def NamedBody781_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody781_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody781_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody781_120 : StackLang.HolProg 64 :=
.seq NamedBody781_118 NamedBody781_119

def NamedBody781_121 : StackLang.HolProg 64 :=
.seq NamedBody781_117 NamedBody781_120

def NamedBody781_122 : StackLang.HolProg 64 :=
.seq NamedBody781_116 NamedBody781_121

def NamedBody781_123 : StackLang.HolProg 64 :=
.seq NamedBody781_115 NamedBody781_122

def NamedBody781_124 : StackLang.HolProg 64 :=
.seq NamedBody781_114 NamedBody781_123

def NamedBody781_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody781_127 : StackLang.HolProg 64 :=
.seq NamedBody781_125 NamedBody781_126

def NamedBody781_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody781_129 : StackLang.HolProg 64 :=
.seq NamedBody781_127 NamedBody781_128

def NamedBody781_130 : StackLang.HolProg 64 :=
.call (some (NamedBody781_124, 1, 781, 4)) (Sum.inl 729) (some (NamedBody781_129, 781, 5))

def NamedBody781_131 : StackLang.HolProg 64 :=
.seq NamedBody781_113 NamedBody781_130

def NamedBody781_132 : StackLang.HolProg 64 :=
.seq NamedBody781_112 NamedBody781_131

def NamedBody781_133 : StackLang.HolProg 64 :=
.seq NamedBody781_111 NamedBody781_132

def NamedBody781_134 : StackLang.HolProg 64 :=
.seq NamedBody781_82 NamedBody781_133

def NamedBody781_135 : StackLang.HolProg 64 :=
.seq NamedBody781_79 NamedBody781_134

def NamedBody781_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody781_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_138 : StackLang.HolProg 64 :=
.seq NamedBody781_136 NamedBody781_137

def NamedBody781_139 : StackLang.HolProg 64 :=
.seq NamedBody781_135 NamedBody781_138

def NamedBody781_140 : StackLang.HolProg 64 :=
.seq NamedBody781_78 NamedBody781_139

def NamedBody781_141 : StackLang.HolProg 64 :=
.seq NamedBody781_75 NamedBody781_140

def NamedBody781_142 : StackLang.HolProg 64 :=
.seq NamedBody781_74 NamedBody781_141

def NamedBody781_143 : StackLang.HolProg 64 :=
.seq NamedBody781_73 NamedBody781_142

def NamedBody781_144 : StackLang.HolProg 64 :=
.seq NamedBody781_72 NamedBody781_143

def NamedBody781_145 : StackLang.HolProg 64 :=
.seq NamedBody781_71 NamedBody781_144

def NamedBody781_146 : StackLang.HolProg 64 :=
.seq NamedBody781_70 NamedBody781_145

def NamedBody781_147 : StackLang.HolProg 64 :=
.seq NamedBody781_13 NamedBody781_146

def NamedBody781_148 : StackLang.HolProg 64 :=
.seq NamedBody781_8 NamedBody781_147

def NamedBody781_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody781_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody781_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody781_152 : StackLang.HolProg 64 :=
.seq NamedBody781_150 NamedBody781_151

def NamedBody781_153 : StackLang.HolProg 64 :=
.seq NamedBody781_149 NamedBody781_152

def NamedBody781_154 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody781_148 NamedBody781_153

def NamedBody781_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody781_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody781_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody781_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3549#64)

def NamedBody781_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody781_164 : StackLang.HolProg 64 :=
.seq NamedBody781_162 NamedBody781_163

def NamedBody781_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody781_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody781_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody781_168 : StackLang.HolProg 64 :=
.seq NamedBody781_166 NamedBody781_167

def NamedBody781_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody781_168 NamedBody781_169

def NamedBody781_171 : StackLang.HolProg 64 :=
.seq NamedBody781_165 NamedBody781_170

def NamedBody781_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody781_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody781_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 7

def NamedBody781_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody781_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody781_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody781_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody781_181 : StackLang.HolProg 64 :=
.seq NamedBody781_179 NamedBody781_180

def NamedBody781_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody781_183 : StackLang.HolProg 64 :=
.seq NamedBody781_181 NamedBody781_182

def NamedBody781_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody781_185 : StackLang.HolProg 64 :=
.seq NamedBody781_183 NamedBody781_184

def NamedBody781_186 : StackLang.HolProg 64 :=
.seq NamedBody781_178 NamedBody781_185

def NamedBody781_187 : StackLang.HolProg 64 :=
.seq NamedBody781_177 NamedBody781_186

def NamedBody781_188 : StackLang.HolProg 64 :=
.seq NamedBody781_176 NamedBody781_187

def NamedBody781_189 : StackLang.HolProg 64 :=
.seq NamedBody781_175 NamedBody781_188

def NamedBody781_190 : StackLang.HolProg 64 :=
.seq NamedBody781_174 NamedBody781_189

def NamedBody781_191 : StackLang.HolProg 64 :=
.seq NamedBody781_173 NamedBody781_190

def NamedBody781_192 : StackLang.HolProg 64 :=
.seq NamedBody781_172 NamedBody781_191

def NamedBody781_193 : StackLang.HolProg 64 :=
.seq NamedBody781_171 NamedBody781_192

def NamedBody781_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody781_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody781_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody781_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody781_201 : StackLang.HolProg 64 :=
.seq NamedBody781_199 NamedBody781_200

def NamedBody781_202 : StackLang.HolProg 64 :=
.seq NamedBody781_198 NamedBody781_201

def NamedBody781_203 : StackLang.HolProg 64 :=
.seq NamedBody781_197 NamedBody781_202

def NamedBody781_204 : StackLang.HolProg 64 :=
.seq NamedBody781_196 NamedBody781_203

def NamedBody781_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody781_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody781_207 : StackLang.HolProg 64 :=
.seq NamedBody781_205 NamedBody781_206

def NamedBody781_208 : StackLang.HolProg 64 :=
.call (some (NamedBody781_204, 1, 781, 6)) (Sum.inl 736) (some (NamedBody781_207, 781, 7))

def NamedBody781_209 : StackLang.HolProg 64 :=
.seq NamedBody781_195 NamedBody781_208

def NamedBody781_210 : StackLang.HolProg 64 :=
.seq NamedBody781_194 NamedBody781_209

def NamedBody781_211 : StackLang.HolProg 64 :=
.seq NamedBody781_193 NamedBody781_210

def NamedBody781_212 : StackLang.HolProg 64 :=
.seq NamedBody781_164 NamedBody781_211

def NamedBody781_213 : StackLang.HolProg 64 :=
.seq NamedBody781_161 NamedBody781_212

def NamedBody781_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody781_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody781_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody781_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody781_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody781_219 : StackLang.HolProg 64 :=
.seq NamedBody781_217 NamedBody781_218

def NamedBody781_220 : StackLang.HolProg 64 :=
.seq NamedBody781_216 NamedBody781_219

def NamedBody781_221 : StackLang.HolProg 64 :=
.seq NamedBody781_215 NamedBody781_220

def NamedBody781_222 : StackLang.HolProg 64 :=
.seq NamedBody781_214 NamedBody781_221

def NamedBody781_223 : StackLang.HolProg 64 :=
.seq NamedBody781_213 NamedBody781_222

def NamedBody781_224 : StackLang.HolProg 64 :=
.seq NamedBody781_160 NamedBody781_223

def NamedBody781_225 : StackLang.HolProg 64 :=
.seq NamedBody781_159 NamedBody781_224

def NamedBody781_226 : StackLang.HolProg 64 :=
.seq NamedBody781_158 NamedBody781_225

def NamedBody781_227 : StackLang.HolProg 64 :=
.seq NamedBody781_157 NamedBody781_226

def NamedBody781_228 : StackLang.HolProg 64 :=
.seq NamedBody781_156 NamedBody781_227

def NamedBody781_229 : StackLang.HolProg 64 :=
.seq NamedBody781_155 NamedBody781_228

def NamedBody781_230 : StackLang.HolProg 64 :=
.seq NamedBody781_154 NamedBody781_229

def NamedBody781_231 : StackLang.HolProg 64 :=
.seq NamedBody781_7 NamedBody781_230

def NamedBody781_232 : StackLang.HolProg 64 :=
.seq NamedBody781_6 NamedBody781_231

def Named781 : Nat × StackLang.HolProg 64 := (781, NamedBody781_232)
theorem Named781_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed781 = Named781 := by
  kernel_rfl
#print axioms Named781_eq
end InitECandidate.Proofs.BackendStages
