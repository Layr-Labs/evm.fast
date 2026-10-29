import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed305
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody305_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody305_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody305_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody305_3 : StackLang.HolProg 64 :=
.seq NamedBody305_1 NamedBody305_2

def NamedBody305_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody305_3 NamedBody305_4

def NamedBody305_6 : StackLang.HolProg 64 :=
.seq NamedBody305_0 NamedBody305_5

def NamedBody305_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody305_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody305_9 : StackLang.HolProg 64 :=
.seq NamedBody305_7 NamedBody305_8

def NamedBody305_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody305_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody305_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody305_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551488#64))

def NamedBody305_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody305_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody305_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody305_18 : StackLang.HolProg 64 :=
.seq NamedBody305_16 NamedBody305_17

def NamedBody305_19 : StackLang.HolProg 64 :=
.seq NamedBody305_15 NamedBody305_18

def NamedBody305_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 839#64)

def NamedBody305_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_23 : StackLang.HolProg 64 :=
.seq NamedBody305_21 NamedBody305_22

def NamedBody305_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody305_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody305_27 : StackLang.HolProg 64 :=
.seq NamedBody305_25 NamedBody305_26

def NamedBody305_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody305_27 NamedBody305_28

def NamedBody305_30 : StackLang.HolProg 64 :=
.seq NamedBody305_24 NamedBody305_29

def NamedBody305_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody305_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 3

def NamedBody305_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody305_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody305_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody305_40 : StackLang.HolProg 64 :=
.seq NamedBody305_38 NamedBody305_39

def NamedBody305_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody305_42 : StackLang.HolProg 64 :=
.seq NamedBody305_40 NamedBody305_41

def NamedBody305_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_44 : StackLang.HolProg 64 :=
.seq NamedBody305_42 NamedBody305_43

def NamedBody305_45 : StackLang.HolProg 64 :=
.seq NamedBody305_37 NamedBody305_44

def NamedBody305_46 : StackLang.HolProg 64 :=
.seq NamedBody305_36 NamedBody305_45

def NamedBody305_47 : StackLang.HolProg 64 :=
.seq NamedBody305_35 NamedBody305_46

def NamedBody305_48 : StackLang.HolProg 64 :=
.seq NamedBody305_34 NamedBody305_47

def NamedBody305_49 : StackLang.HolProg 64 :=
.seq NamedBody305_33 NamedBody305_48

def NamedBody305_50 : StackLang.HolProg 64 :=
.seq NamedBody305_32 NamedBody305_49

def NamedBody305_51 : StackLang.HolProg 64 :=
.seq NamedBody305_31 NamedBody305_50

def NamedBody305_52 : StackLang.HolProg 64 :=
.seq NamedBody305_30 NamedBody305_51

def NamedBody305_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody305_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody305_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody305_63 : StackLang.HolProg 64 :=
.seq NamedBody305_61 NamedBody305_62

def NamedBody305_64 : StackLang.HolProg 64 :=
.seq NamedBody305_60 NamedBody305_63

def NamedBody305_65 : StackLang.HolProg 64 :=
.seq NamedBody305_59 NamedBody305_64

def NamedBody305_66 : StackLang.HolProg 64 :=
.seq NamedBody305_58 NamedBody305_65

def NamedBody305_67 : StackLang.HolProg 64 :=
.seq NamedBody305_57 NamedBody305_66

def NamedBody305_68 : StackLang.HolProg 64 :=
.seq NamedBody305_56 NamedBody305_67

def NamedBody305_69 : StackLang.HolProg 64 :=
.seq NamedBody305_55 NamedBody305_68

def NamedBody305_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody305_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody305_73 : StackLang.HolProg 64 :=
.seq NamedBody305_71 NamedBody305_72

def NamedBody305_74 : StackLang.HolProg 64 :=
.seq NamedBody305_70 NamedBody305_73

def NamedBody305_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody305_76 : StackLang.HolProg 64 :=
.seq NamedBody305_74 NamedBody305_75

def NamedBody305_77 : StackLang.HolProg 64 :=
.call (some (NamedBody305_69, 1, 305, 2)) (Sum.inl 79) (some (NamedBody305_76, 305, 3))

def NamedBody305_78 : StackLang.HolProg 64 :=
.seq NamedBody305_54 NamedBody305_77

def NamedBody305_79 : StackLang.HolProg 64 :=
.seq NamedBody305_53 NamedBody305_78

def NamedBody305_80 : StackLang.HolProg 64 :=
.seq NamedBody305_52 NamedBody305_79

def NamedBody305_81 : StackLang.HolProg 64 :=
.seq NamedBody305_23 NamedBody305_80

def NamedBody305_82 : StackLang.HolProg 64 :=
.seq NamedBody305_20 NamedBody305_81

def NamedBody305_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody305_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody305_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody305_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody305_91 : StackLang.HolProg 64 :=
.seq NamedBody305_89 NamedBody305_90

def NamedBody305_92 : StackLang.HolProg 64 :=
.seq NamedBody305_88 NamedBody305_91

def NamedBody305_93 : StackLang.HolProg 64 :=
.seq NamedBody305_87 NamedBody305_92

def NamedBody305_94 : StackLang.HolProg 64 :=
.seq NamedBody305_86 NamedBody305_93

def NamedBody305_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody305_94 NamedBody305_95

def NamedBody305_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody305_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody305_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody305_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_103 : StackLang.HolProg 64 :=
.seq NamedBody305_101 NamedBody305_102

def NamedBody305_104 : StackLang.HolProg 64 :=
.seq NamedBody305_100 NamedBody305_103

def NamedBody305_105 : StackLang.HolProg 64 :=
.seq NamedBody305_99 NamedBody305_104

def NamedBody305_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 840#64)

def NamedBody305_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_109 : StackLang.HolProg 64 :=
.seq NamedBody305_107 NamedBody305_108

def NamedBody305_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody305_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody305_113 : StackLang.HolProg 64 :=
.seq NamedBody305_111 NamedBody305_112

def NamedBody305_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody305_113 NamedBody305_114

def NamedBody305_116 : StackLang.HolProg 64 :=
.seq NamedBody305_110 NamedBody305_115

def NamedBody305_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody305_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 5

def NamedBody305_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody305_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody305_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody305_126 : StackLang.HolProg 64 :=
.seq NamedBody305_124 NamedBody305_125

def NamedBody305_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody305_128 : StackLang.HolProg 64 :=
.seq NamedBody305_126 NamedBody305_127

def NamedBody305_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_130 : StackLang.HolProg 64 :=
.seq NamedBody305_128 NamedBody305_129

def NamedBody305_131 : StackLang.HolProg 64 :=
.seq NamedBody305_123 NamedBody305_130

def NamedBody305_132 : StackLang.HolProg 64 :=
.seq NamedBody305_122 NamedBody305_131

def NamedBody305_133 : StackLang.HolProg 64 :=
.seq NamedBody305_121 NamedBody305_132

def NamedBody305_134 : StackLang.HolProg 64 :=
.seq NamedBody305_120 NamedBody305_133

def NamedBody305_135 : StackLang.HolProg 64 :=
.seq NamedBody305_119 NamedBody305_134

def NamedBody305_136 : StackLang.HolProg 64 :=
.seq NamedBody305_118 NamedBody305_135

def NamedBody305_137 : StackLang.HolProg 64 :=
.seq NamedBody305_117 NamedBody305_136

def NamedBody305_138 : StackLang.HolProg 64 :=
.seq NamedBody305_116 NamedBody305_137

def NamedBody305_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody305_146 : StackLang.HolProg 64 :=
.seq NamedBody305_144 NamedBody305_145

def NamedBody305_147 : StackLang.HolProg 64 :=
.seq NamedBody305_143 NamedBody305_146

def NamedBody305_148 : StackLang.HolProg 64 :=
.seq NamedBody305_142 NamedBody305_147

def NamedBody305_149 : StackLang.HolProg 64 :=
.seq NamedBody305_141 NamedBody305_148

def NamedBody305_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody305_152 : StackLang.HolProg 64 :=
.seq NamedBody305_150 NamedBody305_151

def NamedBody305_153 : StackLang.HolProg 64 :=
.call (some (NamedBody305_149, 1, 305, 4)) (Sum.inl 294) (some (NamedBody305_152, 305, 5))

def NamedBody305_154 : StackLang.HolProg 64 :=
.seq NamedBody305_140 NamedBody305_153

def NamedBody305_155 : StackLang.HolProg 64 :=
.seq NamedBody305_139 NamedBody305_154

def NamedBody305_156 : StackLang.HolProg 64 :=
.seq NamedBody305_138 NamedBody305_155

def NamedBody305_157 : StackLang.HolProg 64 :=
.seq NamedBody305_109 NamedBody305_156

def NamedBody305_158 : StackLang.HolProg 64 :=
.seq NamedBody305_106 NamedBody305_157

def NamedBody305_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody305_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody305_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody305_166 : StackLang.HolProg 64 :=
.seq NamedBody305_164 NamedBody305_165

def NamedBody305_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 841#64)

def NamedBody305_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_170 : StackLang.HolProg 64 :=
.seq NamedBody305_168 NamedBody305_169

def NamedBody305_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody305_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody305_174 : StackLang.HolProg 64 :=
.seq NamedBody305_172 NamedBody305_173

def NamedBody305_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_176 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody305_174 NamedBody305_175

def NamedBody305_177 : StackLang.HolProg 64 :=
.seq NamedBody305_171 NamedBody305_176

def NamedBody305_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody305_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 7

def NamedBody305_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody305_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody305_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody305_187 : StackLang.HolProg 64 :=
.seq NamedBody305_185 NamedBody305_186

def NamedBody305_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody305_189 : StackLang.HolProg 64 :=
.seq NamedBody305_187 NamedBody305_188

def NamedBody305_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_191 : StackLang.HolProg 64 :=
.seq NamedBody305_189 NamedBody305_190

def NamedBody305_192 : StackLang.HolProg 64 :=
.seq NamedBody305_184 NamedBody305_191

def NamedBody305_193 : StackLang.HolProg 64 :=
.seq NamedBody305_183 NamedBody305_192

def NamedBody305_194 : StackLang.HolProg 64 :=
.seq NamedBody305_182 NamedBody305_193

def NamedBody305_195 : StackLang.HolProg 64 :=
.seq NamedBody305_181 NamedBody305_194

def NamedBody305_196 : StackLang.HolProg 64 :=
.seq NamedBody305_180 NamedBody305_195

def NamedBody305_197 : StackLang.HolProg 64 :=
.seq NamedBody305_179 NamedBody305_196

def NamedBody305_198 : StackLang.HolProg 64 :=
.seq NamedBody305_178 NamedBody305_197

def NamedBody305_199 : StackLang.HolProg 64 :=
.seq NamedBody305_177 NamedBody305_198

def NamedBody305_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody305_209 : StackLang.HolProg 64 :=
.seq NamedBody305_207 NamedBody305_208

def NamedBody305_210 : StackLang.HolProg 64 :=
.seq NamedBody305_206 NamedBody305_209

def NamedBody305_211 : StackLang.HolProg 64 :=
.seq NamedBody305_205 NamedBody305_210

def NamedBody305_212 : StackLang.HolProg 64 :=
.seq NamedBody305_204 NamedBody305_211

def NamedBody305_213 : StackLang.HolProg 64 :=
.seq NamedBody305_203 NamedBody305_212

def NamedBody305_214 : StackLang.HolProg 64 :=
.seq NamedBody305_202 NamedBody305_213

def NamedBody305_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody305_218 : StackLang.HolProg 64 :=
.seq NamedBody305_216 NamedBody305_217

def NamedBody305_219 : StackLang.HolProg 64 :=
.seq NamedBody305_215 NamedBody305_218

def NamedBody305_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody305_221 : StackLang.HolProg 64 :=
.seq NamedBody305_219 NamedBody305_220

def NamedBody305_222 : StackLang.HolProg 64 :=
.call (some (NamedBody305_214, 1, 305, 6)) (Sum.inl 286) (some (NamedBody305_221, 305, 7))

def NamedBody305_223 : StackLang.HolProg 64 :=
.seq NamedBody305_201 NamedBody305_222

def NamedBody305_224 : StackLang.HolProg 64 :=
.seq NamedBody305_200 NamedBody305_223

def NamedBody305_225 : StackLang.HolProg 64 :=
.seq NamedBody305_199 NamedBody305_224

def NamedBody305_226 : StackLang.HolProg 64 :=
.seq NamedBody305_170 NamedBody305_225

def NamedBody305_227 : StackLang.HolProg 64 :=
.seq NamedBody305_167 NamedBody305_226

def NamedBody305_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_230 : StackLang.HolProg 64 :=
.seq NamedBody305_228 NamedBody305_229

def NamedBody305_231 : StackLang.HolProg 64 :=
.seq NamedBody305_227 NamedBody305_230

def NamedBody305_232 : StackLang.HolProg 64 :=
.seq NamedBody305_166 NamedBody305_231

def NamedBody305_233 : StackLang.HolProg 64 :=
.seq NamedBody305_163 NamedBody305_232

def NamedBody305_234 : StackLang.HolProg 64 :=
.seq NamedBody305_162 NamedBody305_233

def NamedBody305_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_237 : StackLang.HolProg 64 :=
.seq NamedBody305_235 NamedBody305_236

def NamedBody305_238 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody305_234 NamedBody305_237

def NamedBody305_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody305_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 842#64)

def NamedBody305_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_244 : StackLang.HolProg 64 :=
.seq NamedBody305_242 NamedBody305_243

def NamedBody305_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody305_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody305_248 : StackLang.HolProg 64 :=
.seq NamedBody305_246 NamedBody305_247

def NamedBody305_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_250 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody305_248 NamedBody305_249

def NamedBody305_251 : StackLang.HolProg 64 :=
.seq NamedBody305_245 NamedBody305_250

def NamedBody305_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody305_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 9

def NamedBody305_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody305_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody305_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody305_261 : StackLang.HolProg 64 :=
.seq NamedBody305_259 NamedBody305_260

def NamedBody305_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody305_263 : StackLang.HolProg 64 :=
.seq NamedBody305_261 NamedBody305_262

def NamedBody305_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_265 : StackLang.HolProg 64 :=
.seq NamedBody305_263 NamedBody305_264

def NamedBody305_266 : StackLang.HolProg 64 :=
.seq NamedBody305_258 NamedBody305_265

def NamedBody305_267 : StackLang.HolProg 64 :=
.seq NamedBody305_257 NamedBody305_266

def NamedBody305_268 : StackLang.HolProg 64 :=
.seq NamedBody305_256 NamedBody305_267

def NamedBody305_269 : StackLang.HolProg 64 :=
.seq NamedBody305_255 NamedBody305_268

def NamedBody305_270 : StackLang.HolProg 64 :=
.seq NamedBody305_254 NamedBody305_269

def NamedBody305_271 : StackLang.HolProg 64 :=
.seq NamedBody305_253 NamedBody305_270

def NamedBody305_272 : StackLang.HolProg 64 :=
.seq NamedBody305_252 NamedBody305_271

def NamedBody305_273 : StackLang.HolProg 64 :=
.seq NamedBody305_251 NamedBody305_272

def NamedBody305_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody305_281 : StackLang.HolProg 64 :=
.seq NamedBody305_279 NamedBody305_280

def NamedBody305_282 : StackLang.HolProg 64 :=
.seq NamedBody305_278 NamedBody305_281

def NamedBody305_283 : StackLang.HolProg 64 :=
.seq NamedBody305_277 NamedBody305_282

def NamedBody305_284 : StackLang.HolProg 64 :=
.seq NamedBody305_276 NamedBody305_283

def NamedBody305_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_286 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody305_287 : StackLang.HolProg 64 :=
.seq NamedBody305_285 NamedBody305_286

def NamedBody305_288 : StackLang.HolProg 64 :=
.call (some (NamedBody305_284, 1, 305, 8)) (Sum.inl 304) (some (NamedBody305_287, 305, 9))

def NamedBody305_289 : StackLang.HolProg 64 :=
.seq NamedBody305_275 NamedBody305_288

def NamedBody305_290 : StackLang.HolProg 64 :=
.seq NamedBody305_274 NamedBody305_289

def NamedBody305_291 : StackLang.HolProg 64 :=
.seq NamedBody305_273 NamedBody305_290

def NamedBody305_292 : StackLang.HolProg 64 :=
.seq NamedBody305_244 NamedBody305_291

def NamedBody305_293 : StackLang.HolProg 64 :=
.seq NamedBody305_241 NamedBody305_292

def NamedBody305_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody305_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody305_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 843#64)

def NamedBody305_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_303 : StackLang.HolProg 64 :=
.seq NamedBody305_301 NamedBody305_302

def NamedBody305_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody305_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody305_307 : StackLang.HolProg 64 :=
.seq NamedBody305_305 NamedBody305_306

def NamedBody305_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_309 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody305_307 NamedBody305_308

def NamedBody305_310 : StackLang.HolProg 64 :=
.seq NamedBody305_304 NamedBody305_309

def NamedBody305_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody305_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 11

def NamedBody305_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody305_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody305_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody305_320 : StackLang.HolProg 64 :=
.seq NamedBody305_318 NamedBody305_319

def NamedBody305_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody305_322 : StackLang.HolProg 64 :=
.seq NamedBody305_320 NamedBody305_321

def NamedBody305_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_324 : StackLang.HolProg 64 :=
.seq NamedBody305_322 NamedBody305_323

def NamedBody305_325 : StackLang.HolProg 64 :=
.seq NamedBody305_317 NamedBody305_324

def NamedBody305_326 : StackLang.HolProg 64 :=
.seq NamedBody305_316 NamedBody305_325

def NamedBody305_327 : StackLang.HolProg 64 :=
.seq NamedBody305_315 NamedBody305_326

def NamedBody305_328 : StackLang.HolProg 64 :=
.seq NamedBody305_314 NamedBody305_327

def NamedBody305_329 : StackLang.HolProg 64 :=
.seq NamedBody305_313 NamedBody305_328

def NamedBody305_330 : StackLang.HolProg 64 :=
.seq NamedBody305_312 NamedBody305_329

def NamedBody305_331 : StackLang.HolProg 64 :=
.seq NamedBody305_311 NamedBody305_330

def NamedBody305_332 : StackLang.HolProg 64 :=
.seq NamedBody305_310 NamedBody305_331

def NamedBody305_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody305_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody305_341 : StackLang.HolProg 64 :=
.seq NamedBody305_339 NamedBody305_340

def NamedBody305_342 : StackLang.HolProg 64 :=
.seq NamedBody305_338 NamedBody305_341

def NamedBody305_343 : StackLang.HolProg 64 :=
.seq NamedBody305_337 NamedBody305_342

def NamedBody305_344 : StackLang.HolProg 64 :=
.seq NamedBody305_336 NamedBody305_343

def NamedBody305_345 : StackLang.HolProg 64 :=
.seq NamedBody305_335 NamedBody305_344

def NamedBody305_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody305_347 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody305_348 : StackLang.HolProg 64 :=
.seq NamedBody305_346 NamedBody305_347

def NamedBody305_349 : StackLang.HolProg 64 :=
.call (some (NamedBody305_345, 1, 305, 10)) (Sum.inl 68) (some (NamedBody305_348, 305, 11))

def NamedBody305_350 : StackLang.HolProg 64 :=
.seq NamedBody305_334 NamedBody305_349

def NamedBody305_351 : StackLang.HolProg 64 :=
.seq NamedBody305_333 NamedBody305_350

def NamedBody305_352 : StackLang.HolProg 64 :=
.seq NamedBody305_332 NamedBody305_351

def NamedBody305_353 : StackLang.HolProg 64 :=
.seq NamedBody305_303 NamedBody305_352

def NamedBody305_354 : StackLang.HolProg 64 :=
.seq NamedBody305_300 NamedBody305_353

def NamedBody305_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody305_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody305_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody305_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 844#64)

def NamedBody305_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_362 : StackLang.HolProg 64 :=
.seq NamedBody305_360 NamedBody305_361

def NamedBody305_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody305_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody305_366 : StackLang.HolProg 64 :=
.seq NamedBody305_364 NamedBody305_365

def NamedBody305_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_368 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody305_366 NamedBody305_367

def NamedBody305_369 : StackLang.HolProg 64 :=
.seq NamedBody305_363 NamedBody305_368

def NamedBody305_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody305_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody305_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 13

def NamedBody305_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody305_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody305_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody305_379 : StackLang.HolProg 64 :=
.seq NamedBody305_377 NamedBody305_378

def NamedBody305_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody305_381 : StackLang.HolProg 64 :=
.seq NamedBody305_379 NamedBody305_380

def NamedBody305_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_383 : StackLang.HolProg 64 :=
.seq NamedBody305_381 NamedBody305_382

def NamedBody305_384 : StackLang.HolProg 64 :=
.seq NamedBody305_376 NamedBody305_383

def NamedBody305_385 : StackLang.HolProg 64 :=
.seq NamedBody305_375 NamedBody305_384

def NamedBody305_386 : StackLang.HolProg 64 :=
.seq NamedBody305_374 NamedBody305_385

def NamedBody305_387 : StackLang.HolProg 64 :=
.seq NamedBody305_373 NamedBody305_386

def NamedBody305_388 : StackLang.HolProg 64 :=
.seq NamedBody305_372 NamedBody305_387

def NamedBody305_389 : StackLang.HolProg 64 :=
.seq NamedBody305_371 NamedBody305_388

def NamedBody305_390 : StackLang.HolProg 64 :=
.seq NamedBody305_370 NamedBody305_389

def NamedBody305_391 : StackLang.HolProg 64 :=
.seq NamedBody305_369 NamedBody305_390

def NamedBody305_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody305_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody305_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody305_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody305_401 : StackLang.HolProg 64 :=
.seq NamedBody305_399 NamedBody305_400

def NamedBody305_402 : StackLang.HolProg 64 :=
.seq NamedBody305_398 NamedBody305_401

def NamedBody305_403 : StackLang.HolProg 64 :=
.seq NamedBody305_397 NamedBody305_402

def NamedBody305_404 : StackLang.HolProg 64 :=
.seq NamedBody305_396 NamedBody305_403

def NamedBody305_405 : StackLang.HolProg 64 :=
.seq NamedBody305_395 NamedBody305_404

def NamedBody305_406 : StackLang.HolProg 64 :=
.seq NamedBody305_394 NamedBody305_405

def NamedBody305_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody305_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody305_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody305_410 : StackLang.HolProg 64 :=
.seq NamedBody305_408 NamedBody305_409

def NamedBody305_411 : StackLang.HolProg 64 :=
.seq NamedBody305_407 NamedBody305_410

def NamedBody305_412 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody305_413 : StackLang.HolProg 64 :=
.seq NamedBody305_411 NamedBody305_412

def NamedBody305_414 : StackLang.HolProg 64 :=
.call (some (NamedBody305_406, 1, 305, 12)) (Sum.inl 77) (some (NamedBody305_413, 305, 13))

def NamedBody305_415 : StackLang.HolProg 64 :=
.seq NamedBody305_393 NamedBody305_414

def NamedBody305_416 : StackLang.HolProg 64 :=
.seq NamedBody305_392 NamedBody305_415

def NamedBody305_417 : StackLang.HolProg 64 :=
.seq NamedBody305_391 NamedBody305_416

def NamedBody305_418 : StackLang.HolProg 64 :=
.seq NamedBody305_362 NamedBody305_417

def NamedBody305_419 : StackLang.HolProg 64 :=
.seq NamedBody305_359 NamedBody305_418

def NamedBody305_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody305_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody305_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody305_426 : StackLang.HolProg 64 :=
.seq NamedBody305_424 NamedBody305_425

def NamedBody305_427 : StackLang.HolProg 64 :=
.seq NamedBody305_423 NamedBody305_426

def NamedBody305_428 : StackLang.HolProg 64 :=
.seq NamedBody305_422 NamedBody305_427

def NamedBody305_429 : StackLang.HolProg 64 :=
.seq NamedBody305_421 NamedBody305_428

def NamedBody305_430 : StackLang.HolProg 64 :=
.seq NamedBody305_420 NamedBody305_429

def NamedBody305_431 : StackLang.HolProg 64 :=
.seq NamedBody305_419 NamedBody305_430

def NamedBody305_432 : StackLang.HolProg 64 :=
.seq NamedBody305_358 NamedBody305_431

def NamedBody305_433 : StackLang.HolProg 64 :=
.seq NamedBody305_357 NamedBody305_432

def NamedBody305_434 : StackLang.HolProg 64 :=
.seq NamedBody305_356 NamedBody305_433

def NamedBody305_435 : StackLang.HolProg 64 :=
.seq NamedBody305_355 NamedBody305_434

def NamedBody305_436 : StackLang.HolProg 64 :=
.seq NamedBody305_354 NamedBody305_435

def NamedBody305_437 : StackLang.HolProg 64 :=
.seq NamedBody305_299 NamedBody305_436

def NamedBody305_438 : StackLang.HolProg 64 :=
.seq NamedBody305_298 NamedBody305_437

def NamedBody305_439 : StackLang.HolProg 64 :=
.seq NamedBody305_297 NamedBody305_438

def NamedBody305_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody305_442 : StackLang.HolProg 64 :=
.seq NamedBody305_440 NamedBody305_441

def NamedBody305_443 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody305_439 NamedBody305_442

def NamedBody305_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody305_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody305_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody305_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody305_448 : StackLang.HolProg 64 :=
.seq NamedBody305_446 NamedBody305_447

def NamedBody305_449 : StackLang.HolProg 64 :=
.seq NamedBody305_445 NamedBody305_448

def NamedBody305_450 : StackLang.HolProg 64 :=
.seq NamedBody305_444 NamedBody305_449

def NamedBody305_451 : StackLang.HolProg 64 :=
.seq NamedBody305_443 NamedBody305_450

def NamedBody305_452 : StackLang.HolProg 64 :=
.seq NamedBody305_296 NamedBody305_451

def NamedBody305_453 : StackLang.HolProg 64 :=
.seq NamedBody305_295 NamedBody305_452

def NamedBody305_454 : StackLang.HolProg 64 :=
.seq NamedBody305_294 NamedBody305_453

def NamedBody305_455 : StackLang.HolProg 64 :=
.seq NamedBody305_293 NamedBody305_454

def NamedBody305_456 : StackLang.HolProg 64 :=
.seq NamedBody305_240 NamedBody305_455

def NamedBody305_457 : StackLang.HolProg 64 :=
.seq NamedBody305_239 NamedBody305_456

def NamedBody305_458 : StackLang.HolProg 64 :=
.seq NamedBody305_238 NamedBody305_457

def NamedBody305_459 : StackLang.HolProg 64 :=
.seq NamedBody305_161 NamedBody305_458

def NamedBody305_460 : StackLang.HolProg 64 :=
.seq NamedBody305_160 NamedBody305_459

def NamedBody305_461 : StackLang.HolProg 64 :=
.seq NamedBody305_159 NamedBody305_460

def NamedBody305_462 : StackLang.HolProg 64 :=
.seq NamedBody305_158 NamedBody305_461

def NamedBody305_463 : StackLang.HolProg 64 :=
.seq NamedBody305_105 NamedBody305_462

def NamedBody305_464 : StackLang.HolProg 64 :=
.seq NamedBody305_98 NamedBody305_463

def NamedBody305_465 : StackLang.HolProg 64 :=
.seq NamedBody305_97 NamedBody305_464

def NamedBody305_466 : StackLang.HolProg 64 :=
.seq NamedBody305_96 NamedBody305_465

def NamedBody305_467 : StackLang.HolProg 64 :=
.seq NamedBody305_85 NamedBody305_466

def NamedBody305_468 : StackLang.HolProg 64 :=
.seq NamedBody305_84 NamedBody305_467

def NamedBody305_469 : StackLang.HolProg 64 :=
.seq NamedBody305_83 NamedBody305_468

def NamedBody305_470 : StackLang.HolProg 64 :=
.seq NamedBody305_82 NamedBody305_469

def NamedBody305_471 : StackLang.HolProg 64 :=
.seq NamedBody305_19 NamedBody305_470

def NamedBody305_472 : StackLang.HolProg 64 :=
.seq NamedBody305_14 NamedBody305_471

def NamedBody305_473 : StackLang.HolProg 64 :=
.seq NamedBody305_13 NamedBody305_472

def NamedBody305_474 : StackLang.HolProg 64 :=
.seq NamedBody305_12 NamedBody305_473

def NamedBody305_475 : StackLang.HolProg 64 :=
.seq NamedBody305_11 NamedBody305_474

def NamedBody305_476 : StackLang.HolProg 64 :=
.seq NamedBody305_10 NamedBody305_475

def NamedBody305_477 : StackLang.HolProg 64 :=
.seq NamedBody305_9 NamedBody305_476

def NamedBody305_478 : StackLang.HolProg 64 :=
.seq NamedBody305_6 NamedBody305_477

def Named305 : Nat × StackLang.HolProg 64 := (305, NamedBody305_478)
theorem Named305_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed305 = Named305 := by
  kernel_rfl
#print axioms Named305_eq
end InitECandidate.Proofs.BackendStages
