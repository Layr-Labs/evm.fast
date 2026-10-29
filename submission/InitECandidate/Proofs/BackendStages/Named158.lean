import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed158
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody158_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody158_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody158_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody158_3 : StackLang.HolProg 64 :=
.seq NamedBody158_1 NamedBody158_2

def NamedBody158_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody158_3 NamedBody158_4

def NamedBody158_6 : StackLang.HolProg 64 :=
.seq NamedBody158_0 NamedBody158_5

def NamedBody158_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody158_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody158_9 : StackLang.HolProg 64 :=
.seq NamedBody158_7 NamedBody158_8

def NamedBody158_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody158_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody158_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody158_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551544#64))

def NamedBody158_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 200#64)

def NamedBody158_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody158_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_21 : StackLang.HolProg 64 :=
.seq NamedBody158_19 NamedBody158_20

def NamedBody158_22 : StackLang.HolProg 64 :=
.seq NamedBody158_18 NamedBody158_21

def NamedBody158_23 : StackLang.HolProg 64 :=
.seq NamedBody158_17 NamedBody158_22

def NamedBody158_24 : StackLang.HolProg 64 :=
.seq NamedBody158_16 NamedBody158_23

def NamedBody158_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 141#64)

def NamedBody158_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_28 : StackLang.HolProg 64 :=
.seq NamedBody158_26 NamedBody158_27

def NamedBody158_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody158_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody158_32 : StackLang.HolProg 64 :=
.seq NamedBody158_30 NamedBody158_31

def NamedBody158_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody158_32 NamedBody158_33

def NamedBody158_35 : StackLang.HolProg 64 :=
.seq NamedBody158_29 NamedBody158_34

def NamedBody158_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody158_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 3

def NamedBody158_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody158_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody158_45 : StackLang.HolProg 64 :=
.seq NamedBody158_43 NamedBody158_44

def NamedBody158_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody158_47 : StackLang.HolProg 64 :=
.seq NamedBody158_45 NamedBody158_46

def NamedBody158_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_49 : StackLang.HolProg 64 :=
.seq NamedBody158_47 NamedBody158_48

def NamedBody158_50 : StackLang.HolProg 64 :=
.seq NamedBody158_42 NamedBody158_49

def NamedBody158_51 : StackLang.HolProg 64 :=
.seq NamedBody158_41 NamedBody158_50

def NamedBody158_52 : StackLang.HolProg 64 :=
.seq NamedBody158_40 NamedBody158_51

def NamedBody158_53 : StackLang.HolProg 64 :=
.seq NamedBody158_39 NamedBody158_52

def NamedBody158_54 : StackLang.HolProg 64 :=
.seq NamedBody158_38 NamedBody158_53

def NamedBody158_55 : StackLang.HolProg 64 :=
.seq NamedBody158_37 NamedBody158_54

def NamedBody158_56 : StackLang.HolProg 64 :=
.seq NamedBody158_36 NamedBody158_55

def NamedBody158_57 : StackLang.HolProg 64 :=
.seq NamedBody158_35 NamedBody158_56

def NamedBody158_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_67 : StackLang.HolProg 64 :=
.seq NamedBody158_65 NamedBody158_66

def NamedBody158_68 : StackLang.HolProg 64 :=
.seq NamedBody158_64 NamedBody158_67

def NamedBody158_69 : StackLang.HolProg 64 :=
.seq NamedBody158_63 NamedBody158_68

def NamedBody158_70 : StackLang.HolProg 64 :=
.seq NamedBody158_62 NamedBody158_69

def NamedBody158_71 : StackLang.HolProg 64 :=
.seq NamedBody158_61 NamedBody158_70

def NamedBody158_72 : StackLang.HolProg 64 :=
.seq NamedBody158_60 NamedBody158_71

def NamedBody158_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_76 : StackLang.HolProg 64 :=
.seq NamedBody158_74 NamedBody158_75

def NamedBody158_77 : StackLang.HolProg 64 :=
.seq NamedBody158_73 NamedBody158_76

def NamedBody158_78 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody158_79 : StackLang.HolProg 64 :=
.seq NamedBody158_77 NamedBody158_78

def NamedBody158_80 : StackLang.HolProg 64 :=
.call (some (NamedBody158_72, 1, 158, 2)) (Sum.inl 78) (some (NamedBody158_79, 158, 3))

def NamedBody158_81 : StackLang.HolProg 64 :=
.seq NamedBody158_59 NamedBody158_80

def NamedBody158_82 : StackLang.HolProg 64 :=
.seq NamedBody158_58 NamedBody158_81

def NamedBody158_83 : StackLang.HolProg 64 :=
.seq NamedBody158_57 NamedBody158_82

def NamedBody158_84 : StackLang.HolProg 64 :=
.seq NamedBody158_28 NamedBody158_83

def NamedBody158_85 : StackLang.HolProg 64 :=
.seq NamedBody158_25 NamedBody158_84

def NamedBody158_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody158_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_91 : StackLang.HolProg 64 :=
.seq NamedBody158_89 NamedBody158_90

def NamedBody158_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 136#64)))

def NamedBody158_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_97 : StackLang.HolProg 64 :=
.seq NamedBody158_95 NamedBody158_96

def NamedBody158_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody158_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_104 : StackLang.HolProg 64 :=
.seq NamedBody158_102 NamedBody158_103

def NamedBody158_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_106 : StackLang.HolProg 64 :=
.seq NamedBody158_104 NamedBody158_105

def NamedBody158_107 : StackLang.HolProg 64 :=
.seq NamedBody158_101 NamedBody158_106

def NamedBody158_108 : StackLang.HolProg 64 :=
.seq NamedBody158_100 NamedBody158_107

def NamedBody158_109 : StackLang.HolProg 64 :=
.seq NamedBody158_99 NamedBody158_108

def NamedBody158_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 142#64)

def NamedBody158_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_113 : StackLang.HolProg 64 :=
.seq NamedBody158_111 NamedBody158_112

def NamedBody158_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody158_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody158_117 : StackLang.HolProg 64 :=
.seq NamedBody158_115 NamedBody158_116

def NamedBody158_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody158_117 NamedBody158_118

def NamedBody158_120 : StackLang.HolProg 64 :=
.seq NamedBody158_114 NamedBody158_119

def NamedBody158_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody158_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 5

def NamedBody158_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody158_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody158_130 : StackLang.HolProg 64 :=
.seq NamedBody158_128 NamedBody158_129

def NamedBody158_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody158_132 : StackLang.HolProg 64 :=
.seq NamedBody158_130 NamedBody158_131

def NamedBody158_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_134 : StackLang.HolProg 64 :=
.seq NamedBody158_132 NamedBody158_133

def NamedBody158_135 : StackLang.HolProg 64 :=
.seq NamedBody158_127 NamedBody158_134

def NamedBody158_136 : StackLang.HolProg 64 :=
.seq NamedBody158_126 NamedBody158_135

def NamedBody158_137 : StackLang.HolProg 64 :=
.seq NamedBody158_125 NamedBody158_136

def NamedBody158_138 : StackLang.HolProg 64 :=
.seq NamedBody158_124 NamedBody158_137

def NamedBody158_139 : StackLang.HolProg 64 :=
.seq NamedBody158_123 NamedBody158_138

def NamedBody158_140 : StackLang.HolProg 64 :=
.seq NamedBody158_122 NamedBody158_139

def NamedBody158_141 : StackLang.HolProg 64 :=
.seq NamedBody158_121 NamedBody158_140

def NamedBody158_142 : StackLang.HolProg 64 :=
.seq NamedBody158_120 NamedBody158_141

def NamedBody158_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_152 : StackLang.HolProg 64 :=
.seq NamedBody158_150 NamedBody158_151

def NamedBody158_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_156 : StackLang.HolProg 64 :=
.seq NamedBody158_154 NamedBody158_155

def NamedBody158_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_159 : StackLang.HolProg 64 :=
.seq NamedBody158_157 NamedBody158_158

def NamedBody158_160 : StackLang.HolProg 64 :=
.seq NamedBody158_156 NamedBody158_159

def NamedBody158_161 : StackLang.HolProg 64 :=
.seq NamedBody158_153 NamedBody158_160

def NamedBody158_162 : StackLang.HolProg 64 :=
.seq NamedBody158_152 NamedBody158_161

def NamedBody158_163 : StackLang.HolProg 64 :=
.seq NamedBody158_149 NamedBody158_162

def NamedBody158_164 : StackLang.HolProg 64 :=
.seq NamedBody158_148 NamedBody158_163

def NamedBody158_165 : StackLang.HolProg 64 :=
.seq NamedBody158_147 NamedBody158_164

def NamedBody158_166 : StackLang.HolProg 64 :=
.seq NamedBody158_146 NamedBody158_165

def NamedBody158_167 : StackLang.HolProg 64 :=
.seq NamedBody158_145 NamedBody158_166

def NamedBody158_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_171 : StackLang.HolProg 64 :=
.seq NamedBody158_169 NamedBody158_170

def NamedBody158_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_175 : StackLang.HolProg 64 :=
.seq NamedBody158_173 NamedBody158_174

def NamedBody158_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_178 : StackLang.HolProg 64 :=
.seq NamedBody158_176 NamedBody158_177

def NamedBody158_179 : StackLang.HolProg 64 :=
.seq NamedBody158_175 NamedBody158_178

def NamedBody158_180 : StackLang.HolProg 64 :=
.seq NamedBody158_172 NamedBody158_179

def NamedBody158_181 : StackLang.HolProg 64 :=
.seq NamedBody158_171 NamedBody158_180

def NamedBody158_182 : StackLang.HolProg 64 :=
.seq NamedBody158_168 NamedBody158_181

def NamedBody158_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody158_184 : StackLang.HolProg 64 :=
.seq NamedBody158_182 NamedBody158_183

def NamedBody158_185 : StackLang.HolProg 64 :=
.call (some (NamedBody158_167, 1, 158, 4)) (Sum.inl 157) (some (NamedBody158_184, 158, 5))

def NamedBody158_186 : StackLang.HolProg 64 :=
.seq NamedBody158_144 NamedBody158_185

def NamedBody158_187 : StackLang.HolProg 64 :=
.seq NamedBody158_143 NamedBody158_186

def NamedBody158_188 : StackLang.HolProg 64 :=
.seq NamedBody158_142 NamedBody158_187

def NamedBody158_189 : StackLang.HolProg 64 :=
.seq NamedBody158_113 NamedBody158_188

def NamedBody158_190 : StackLang.HolProg 64 :=
.seq NamedBody158_110 NamedBody158_189

def NamedBody158_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 136#64)))

def NamedBody158_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody158_196 : StackLang.HolProg 64 :=
.seq NamedBody158_194 NamedBody158_195

def NamedBody158_197 : StackLang.HolProg 64 :=
.seq NamedBody158_193 NamedBody158_196

def NamedBody158_198 : StackLang.HolProg 64 :=
.seq NamedBody158_192 NamedBody158_197

def NamedBody158_199 : StackLang.HolProg 64 :=
.seq NamedBody158_191 NamedBody158_198

def NamedBody158_200 : StackLang.HolProg 64 :=
.seq NamedBody158_190 NamedBody158_199

def NamedBody158_201 : StackLang.HolProg 64 :=
.seq NamedBody158_109 NamedBody158_200

def NamedBody158_202 : StackLang.HolProg 64 :=
.seq NamedBody158_98 NamedBody158_201

def NamedBody158_203 : StackLang.HolProg 64 :=
.seq NamedBody158_97 NamedBody158_202

def NamedBody158_204 : StackLang.HolProg 64 :=
.seq NamedBody158_94 NamedBody158_203

def NamedBody158_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody158_208 : StackLang.HolProg 64 :=
.seq NamedBody158_206 NamedBody158_207

def NamedBody158_209 : StackLang.HolProg 64 :=
.seq NamedBody158_205 NamedBody158_208

def NamedBody158_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody158_204 NamedBody158_209

def NamedBody158_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody158_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_216 : StackLang.HolProg 64 :=
.seq NamedBody158_214 NamedBody158_215

def NamedBody158_217 : StackLang.HolProg 64 :=
.seq NamedBody158_213 NamedBody158_216

def NamedBody158_218 : StackLang.HolProg 64 :=
.seq NamedBody158_212 NamedBody158_217

def NamedBody158_219 : StackLang.HolProg 64 :=
.seq NamedBody158_211 NamedBody158_218

def NamedBody158_220 : StackLang.HolProg 64 :=
.seq NamedBody158_210 NamedBody158_219

def NamedBody158_221 : StackLang.HolProg 64 :=
.seq NamedBody158_93 NamedBody158_220

def NamedBody158_222 : StackLang.HolProg 64 :=
.seq NamedBody158_92 NamedBody158_221

def NamedBody158_223 : StackLang.HolProg 64 :=
.loop NamedBody158_222

def NamedBody158_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody158_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody158_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody158_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody158_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551536#64))

def NamedBody158_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 136#64)

def NamedBody158_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_234 : StackLang.HolProg 64 :=
.seq NamedBody158_232 NamedBody158_233

def NamedBody158_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 143#64)

def NamedBody158_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_238 : StackLang.HolProg 64 :=
.seq NamedBody158_236 NamedBody158_237

def NamedBody158_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody158_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody158_242 : StackLang.HolProg 64 :=
.seq NamedBody158_240 NamedBody158_241

def NamedBody158_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_244 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody158_242 NamedBody158_243

def NamedBody158_245 : StackLang.HolProg 64 :=
.seq NamedBody158_239 NamedBody158_244

def NamedBody158_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody158_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 7

def NamedBody158_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody158_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody158_255 : StackLang.HolProg 64 :=
.seq NamedBody158_253 NamedBody158_254

def NamedBody158_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody158_257 : StackLang.HolProg 64 :=
.seq NamedBody158_255 NamedBody158_256

def NamedBody158_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_259 : StackLang.HolProg 64 :=
.seq NamedBody158_257 NamedBody158_258

def NamedBody158_260 : StackLang.HolProg 64 :=
.seq NamedBody158_252 NamedBody158_259

def NamedBody158_261 : StackLang.HolProg 64 :=
.seq NamedBody158_251 NamedBody158_260

def NamedBody158_262 : StackLang.HolProg 64 :=
.seq NamedBody158_250 NamedBody158_261

def NamedBody158_263 : StackLang.HolProg 64 :=
.seq NamedBody158_249 NamedBody158_262

def NamedBody158_264 : StackLang.HolProg 64 :=
.seq NamedBody158_248 NamedBody158_263

def NamedBody158_265 : StackLang.HolProg 64 :=
.seq NamedBody158_247 NamedBody158_264

def NamedBody158_266 : StackLang.HolProg 64 :=
.seq NamedBody158_246 NamedBody158_265

def NamedBody158_267 : StackLang.HolProg 64 :=
.seq NamedBody158_245 NamedBody158_266

def NamedBody158_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_278 : StackLang.HolProg 64 :=
.seq NamedBody158_276 NamedBody158_277

def NamedBody158_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_281 : StackLang.HolProg 64 :=
.seq NamedBody158_279 NamedBody158_280

def NamedBody158_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_283 : StackLang.HolProg 64 :=
.seq NamedBody158_281 NamedBody158_282

def NamedBody158_284 : StackLang.HolProg 64 :=
.seq NamedBody158_278 NamedBody158_283

def NamedBody158_285 : StackLang.HolProg 64 :=
.seq NamedBody158_275 NamedBody158_284

def NamedBody158_286 : StackLang.HolProg 64 :=
.seq NamedBody158_274 NamedBody158_285

def NamedBody158_287 : StackLang.HolProg 64 :=
.seq NamedBody158_273 NamedBody158_286

def NamedBody158_288 : StackLang.HolProg 64 :=
.seq NamedBody158_272 NamedBody158_287

def NamedBody158_289 : StackLang.HolProg 64 :=
.seq NamedBody158_271 NamedBody158_288

def NamedBody158_290 : StackLang.HolProg 64 :=
.seq NamedBody158_270 NamedBody158_289

def NamedBody158_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_295 : StackLang.HolProg 64 :=
.seq NamedBody158_293 NamedBody158_294

def NamedBody158_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_298 : StackLang.HolProg 64 :=
.seq NamedBody158_296 NamedBody158_297

def NamedBody158_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_300 : StackLang.HolProg 64 :=
.seq NamedBody158_298 NamedBody158_299

def NamedBody158_301 : StackLang.HolProg 64 :=
.seq NamedBody158_295 NamedBody158_300

def NamedBody158_302 : StackLang.HolProg 64 :=
.seq NamedBody158_292 NamedBody158_301

def NamedBody158_303 : StackLang.HolProg 64 :=
.seq NamedBody158_291 NamedBody158_302

def NamedBody158_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody158_305 : StackLang.HolProg 64 :=
.seq NamedBody158_303 NamedBody158_304

def NamedBody158_306 : StackLang.HolProg 64 :=
.call (some (NamedBody158_290, 1, 158, 6)) (Sum.inl 78) (some (NamedBody158_305, 158, 7))

def NamedBody158_307 : StackLang.HolProg 64 :=
.seq NamedBody158_269 NamedBody158_306

def NamedBody158_308 : StackLang.HolProg 64 :=
.seq NamedBody158_268 NamedBody158_307

def NamedBody158_309 : StackLang.HolProg 64 :=
.seq NamedBody158_267 NamedBody158_308

def NamedBody158_310 : StackLang.HolProg 64 :=
.seq NamedBody158_238 NamedBody158_309

def NamedBody158_311 : StackLang.HolProg 64 :=
.seq NamedBody158_235 NamedBody158_310

def NamedBody158_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody158_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody158_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody158_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551536#64))

def NamedBody158_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody158_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 144#64)

def NamedBody158_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_323 : StackLang.HolProg 64 :=
.seq NamedBody158_321 NamedBody158_322

def NamedBody158_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody158_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody158_327 : StackLang.HolProg 64 :=
.seq NamedBody158_325 NamedBody158_326

def NamedBody158_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_329 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody158_327 NamedBody158_328

def NamedBody158_330 : StackLang.HolProg 64 :=
.seq NamedBody158_324 NamedBody158_329

def NamedBody158_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody158_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 9

def NamedBody158_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody158_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody158_340 : StackLang.HolProg 64 :=
.seq NamedBody158_338 NamedBody158_339

def NamedBody158_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody158_342 : StackLang.HolProg 64 :=
.seq NamedBody158_340 NamedBody158_341

def NamedBody158_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_344 : StackLang.HolProg 64 :=
.seq NamedBody158_342 NamedBody158_343

def NamedBody158_345 : StackLang.HolProg 64 :=
.seq NamedBody158_337 NamedBody158_344

def NamedBody158_346 : StackLang.HolProg 64 :=
.seq NamedBody158_336 NamedBody158_345

def NamedBody158_347 : StackLang.HolProg 64 :=
.seq NamedBody158_335 NamedBody158_346

def NamedBody158_348 : StackLang.HolProg 64 :=
.seq NamedBody158_334 NamedBody158_347

def NamedBody158_349 : StackLang.HolProg 64 :=
.seq NamedBody158_333 NamedBody158_348

def NamedBody158_350 : StackLang.HolProg 64 :=
.seq NamedBody158_332 NamedBody158_349

def NamedBody158_351 : StackLang.HolProg 64 :=
.seq NamedBody158_331 NamedBody158_350

def NamedBody158_352 : StackLang.HolProg 64 :=
.seq NamedBody158_330 NamedBody158_351

def NamedBody158_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_361 : StackLang.HolProg 64 :=
.seq NamedBody158_359 NamedBody158_360

def NamedBody158_362 : StackLang.HolProg 64 :=
.seq NamedBody158_358 NamedBody158_361

def NamedBody158_363 : StackLang.HolProg 64 :=
.seq NamedBody158_357 NamedBody158_362

def NamedBody158_364 : StackLang.HolProg 64 :=
.seq NamedBody158_356 NamedBody158_363

def NamedBody158_365 : StackLang.HolProg 64 :=
.seq NamedBody158_355 NamedBody158_364

def NamedBody158_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody158_368 : StackLang.HolProg 64 :=
.seq NamedBody158_366 NamedBody158_367

def NamedBody158_369 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody158_370 : StackLang.HolProg 64 :=
.seq NamedBody158_368 NamedBody158_369

def NamedBody158_371 : StackLang.HolProg 64 :=
.call (some (NamedBody158_365, 1, 158, 8)) (Sum.inl 77) (some (NamedBody158_370, 158, 9))

def NamedBody158_372 : StackLang.HolProg 64 :=
.seq NamedBody158_354 NamedBody158_371

def NamedBody158_373 : StackLang.HolProg 64 :=
.seq NamedBody158_353 NamedBody158_372

def NamedBody158_374 : StackLang.HolProg 64 :=
.seq NamedBody158_352 NamedBody158_373

def NamedBody158_375 : StackLang.HolProg 64 :=
.seq NamedBody158_323 NamedBody158_374

def NamedBody158_376 : StackLang.HolProg 64 :=
.seq NamedBody158_320 NamedBody158_375

def NamedBody158_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody158_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody158_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody158_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551536#64))

def NamedBody158_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody158_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody158_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody158_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551536#64))

def NamedBody158_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 135#64)))

def NamedBody158_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody158_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody158_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody158_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551536#64))

def NamedBody158_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody158_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_397 : StackLang.HolProg 64 :=
.seq NamedBody158_395 NamedBody158_396

def NamedBody158_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 145#64)

def NamedBody158_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_401 : StackLang.HolProg 64 :=
.seq NamedBody158_399 NamedBody158_400

def NamedBody158_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody158_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody158_405 : StackLang.HolProg 64 :=
.seq NamedBody158_403 NamedBody158_404

def NamedBody158_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_407 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody158_405 NamedBody158_406

def NamedBody158_408 : StackLang.HolProg 64 :=
.seq NamedBody158_402 NamedBody158_407

def NamedBody158_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody158_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 11

def NamedBody158_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody158_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody158_418 : StackLang.HolProg 64 :=
.seq NamedBody158_416 NamedBody158_417

def NamedBody158_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody158_420 : StackLang.HolProg 64 :=
.seq NamedBody158_418 NamedBody158_419

def NamedBody158_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_422 : StackLang.HolProg 64 :=
.seq NamedBody158_420 NamedBody158_421

def NamedBody158_423 : StackLang.HolProg 64 :=
.seq NamedBody158_415 NamedBody158_422

def NamedBody158_424 : StackLang.HolProg 64 :=
.seq NamedBody158_414 NamedBody158_423

def NamedBody158_425 : StackLang.HolProg 64 :=
.seq NamedBody158_413 NamedBody158_424

def NamedBody158_426 : StackLang.HolProg 64 :=
.seq NamedBody158_412 NamedBody158_425

def NamedBody158_427 : StackLang.HolProg 64 :=
.seq NamedBody158_411 NamedBody158_426

def NamedBody158_428 : StackLang.HolProg 64 :=
.seq NamedBody158_410 NamedBody158_427

def NamedBody158_429 : StackLang.HolProg 64 :=
.seq NamedBody158_409 NamedBody158_428

def NamedBody158_430 : StackLang.HolProg 64 :=
.seq NamedBody158_408 NamedBody158_429

def NamedBody158_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_439 : StackLang.HolProg 64 :=
.seq NamedBody158_437 NamedBody158_438

def NamedBody158_440 : StackLang.HolProg 64 :=
.seq NamedBody158_436 NamedBody158_439

def NamedBody158_441 : StackLang.HolProg 64 :=
.seq NamedBody158_435 NamedBody158_440

def NamedBody158_442 : StackLang.HolProg 64 :=
.seq NamedBody158_434 NamedBody158_441

def NamedBody158_443 : StackLang.HolProg 64 :=
.seq NamedBody158_433 NamedBody158_442

def NamedBody158_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody158_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody158_446 : StackLang.HolProg 64 :=
.seq NamedBody158_444 NamedBody158_445

def NamedBody158_447 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody158_448 : StackLang.HolProg 64 :=
.seq NamedBody158_446 NamedBody158_447

def NamedBody158_449 : StackLang.HolProg 64 :=
.call (some (NamedBody158_443, 1, 158, 10)) (Sum.inl 157) (some (NamedBody158_448, 158, 11))

def NamedBody158_450 : StackLang.HolProg 64 :=
.seq NamedBody158_432 NamedBody158_449

def NamedBody158_451 : StackLang.HolProg 64 :=
.seq NamedBody158_431 NamedBody158_450

def NamedBody158_452 : StackLang.HolProg 64 :=
.seq NamedBody158_430 NamedBody158_451

def NamedBody158_453 : StackLang.HolProg 64 :=
.seq NamedBody158_401 NamedBody158_452

def NamedBody158_454 : StackLang.HolProg 64 :=
.seq NamedBody158_398 NamedBody158_453

def NamedBody158_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody158_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody158_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody158_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody158_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody158_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody158_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody158_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody158_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody158_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody158_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody158_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody158_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody158_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody158_483 : StackLang.HolProg 64 :=
.seq NamedBody158_481 NamedBody158_482

def NamedBody158_484 : StackLang.HolProg 64 :=
.seq NamedBody158_480 NamedBody158_483

def NamedBody158_485 : StackLang.HolProg 64 :=
.seq NamedBody158_479 NamedBody158_484

def NamedBody158_486 : StackLang.HolProg 64 :=
.seq NamedBody158_478 NamedBody158_485

def NamedBody158_487 : StackLang.HolProg 64 :=
.seq NamedBody158_477 NamedBody158_486

def NamedBody158_488 : StackLang.HolProg 64 :=
.seq NamedBody158_476 NamedBody158_487

def NamedBody158_489 : StackLang.HolProg 64 :=
.seq NamedBody158_475 NamedBody158_488

def NamedBody158_490 : StackLang.HolProg 64 :=
.seq NamedBody158_474 NamedBody158_489

def NamedBody158_491 : StackLang.HolProg 64 :=
.seq NamedBody158_473 NamedBody158_490

def NamedBody158_492 : StackLang.HolProg 64 :=
.seq NamedBody158_472 NamedBody158_491

def NamedBody158_493 : StackLang.HolProg 64 :=
.seq NamedBody158_471 NamedBody158_492

def NamedBody158_494 : StackLang.HolProg 64 :=
.seq NamedBody158_470 NamedBody158_493

def NamedBody158_495 : StackLang.HolProg 64 :=
.seq NamedBody158_469 NamedBody158_494

def NamedBody158_496 : StackLang.HolProg 64 :=
.seq NamedBody158_468 NamedBody158_495

def NamedBody158_497 : StackLang.HolProg 64 :=
.seq NamedBody158_467 NamedBody158_496

def NamedBody158_498 : StackLang.HolProg 64 :=
.seq NamedBody158_466 NamedBody158_497

def NamedBody158_499 : StackLang.HolProg 64 :=
.seq NamedBody158_465 NamedBody158_498

def NamedBody158_500 : StackLang.HolProg 64 :=
.seq NamedBody158_464 NamedBody158_499

def NamedBody158_501 : StackLang.HolProg 64 :=
.seq NamedBody158_463 NamedBody158_500

def NamedBody158_502 : StackLang.HolProg 64 :=
.seq NamedBody158_462 NamedBody158_501

def NamedBody158_503 : StackLang.HolProg 64 :=
.seq NamedBody158_461 NamedBody158_502

def NamedBody158_504 : StackLang.HolProg 64 :=
.seq NamedBody158_460 NamedBody158_503

def NamedBody158_505 : StackLang.HolProg 64 :=
.seq NamedBody158_459 NamedBody158_504

def NamedBody158_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody158_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 146#64)

def NamedBody158_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_513 : StackLang.HolProg 64 :=
.seq NamedBody158_511 NamedBody158_512

def NamedBody158_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody158_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody158_517 : StackLang.HolProg 64 :=
.seq NamedBody158_515 NamedBody158_516

def NamedBody158_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_519 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody158_517 NamedBody158_518

def NamedBody158_520 : StackLang.HolProg 64 :=
.seq NamedBody158_514 NamedBody158_519

def NamedBody158_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody158_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody158_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 13

def NamedBody158_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody158_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody158_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody158_530 : StackLang.HolProg 64 :=
.seq NamedBody158_528 NamedBody158_529

def NamedBody158_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody158_532 : StackLang.HolProg 64 :=
.seq NamedBody158_530 NamedBody158_531

def NamedBody158_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_534 : StackLang.HolProg 64 :=
.seq NamedBody158_532 NamedBody158_533

def NamedBody158_535 : StackLang.HolProg 64 :=
.seq NamedBody158_527 NamedBody158_534

def NamedBody158_536 : StackLang.HolProg 64 :=
.seq NamedBody158_526 NamedBody158_535

def NamedBody158_537 : StackLang.HolProg 64 :=
.seq NamedBody158_525 NamedBody158_536

def NamedBody158_538 : StackLang.HolProg 64 :=
.seq NamedBody158_524 NamedBody158_537

def NamedBody158_539 : StackLang.HolProg 64 :=
.seq NamedBody158_523 NamedBody158_538

def NamedBody158_540 : StackLang.HolProg 64 :=
.seq NamedBody158_522 NamedBody158_539

def NamedBody158_541 : StackLang.HolProg 64 :=
.seq NamedBody158_521 NamedBody158_540

def NamedBody158_542 : StackLang.HolProg 64 :=
.seq NamedBody158_520 NamedBody158_541

def NamedBody158_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody158_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody158_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody158_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody158_550 : StackLang.HolProg 64 :=
.seq NamedBody158_548 NamedBody158_549

def NamedBody158_551 : StackLang.HolProg 64 :=
.seq NamedBody158_547 NamedBody158_550

def NamedBody158_552 : StackLang.HolProg 64 :=
.seq NamedBody158_546 NamedBody158_551

def NamedBody158_553 : StackLang.HolProg 64 :=
.seq NamedBody158_545 NamedBody158_552

def NamedBody158_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody158_555 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody158_556 : StackLang.HolProg 64 :=
.seq NamedBody158_554 NamedBody158_555

def NamedBody158_557 : StackLang.HolProg 64 :=
.call (some (NamedBody158_553, 1, 158, 12)) (Sum.inl 77) (some (NamedBody158_556, 158, 13))

def NamedBody158_558 : StackLang.HolProg 64 :=
.seq NamedBody158_544 NamedBody158_557

def NamedBody158_559 : StackLang.HolProg 64 :=
.seq NamedBody158_543 NamedBody158_558

def NamedBody158_560 : StackLang.HolProg 64 :=
.seq NamedBody158_542 NamedBody158_559

def NamedBody158_561 : StackLang.HolProg 64 :=
.seq NamedBody158_513 NamedBody158_560

def NamedBody158_562 : StackLang.HolProg 64 :=
.seq NamedBody158_510 NamedBody158_561

def NamedBody158_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_565 : StackLang.HolProg 64 :=
.seq NamedBody158_563 NamedBody158_564

def NamedBody158_566 : StackLang.HolProg 64 :=
.seq NamedBody158_562 NamedBody158_565

def NamedBody158_567 : StackLang.HolProg 64 :=
.seq NamedBody158_509 NamedBody158_566

def NamedBody158_568 : StackLang.HolProg 64 :=
.seq NamedBody158_508 NamedBody158_567

def NamedBody158_569 : StackLang.HolProg 64 :=
.seq NamedBody158_507 NamedBody158_568

def NamedBody158_570 : StackLang.HolProg 64 :=
.seq NamedBody158_506 NamedBody158_569

def NamedBody158_571 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody158_505 NamedBody158_570

def NamedBody158_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody158_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody158_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody158_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody158_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody158_577 : StackLang.HolProg 64 :=
.seq NamedBody158_575 NamedBody158_576

def NamedBody158_578 : StackLang.HolProg 64 :=
.seq NamedBody158_574 NamedBody158_577

def NamedBody158_579 : StackLang.HolProg 64 :=
.seq NamedBody158_573 NamedBody158_578

def NamedBody158_580 : StackLang.HolProg 64 :=
.seq NamedBody158_572 NamedBody158_579

def NamedBody158_581 : StackLang.HolProg 64 :=
.seq NamedBody158_571 NamedBody158_580

def NamedBody158_582 : StackLang.HolProg 64 :=
.seq NamedBody158_458 NamedBody158_581

def NamedBody158_583 : StackLang.HolProg 64 :=
.seq NamedBody158_457 NamedBody158_582

def NamedBody158_584 : StackLang.HolProg 64 :=
.seq NamedBody158_456 NamedBody158_583

def NamedBody158_585 : StackLang.HolProg 64 :=
.seq NamedBody158_455 NamedBody158_584

def NamedBody158_586 : StackLang.HolProg 64 :=
.seq NamedBody158_454 NamedBody158_585

def NamedBody158_587 : StackLang.HolProg 64 :=
.seq NamedBody158_397 NamedBody158_586

def NamedBody158_588 : StackLang.HolProg 64 :=
.seq NamedBody158_394 NamedBody158_587

def NamedBody158_589 : StackLang.HolProg 64 :=
.seq NamedBody158_393 NamedBody158_588

def NamedBody158_590 : StackLang.HolProg 64 :=
.seq NamedBody158_392 NamedBody158_589

def NamedBody158_591 : StackLang.HolProg 64 :=
.seq NamedBody158_391 NamedBody158_590

def NamedBody158_592 : StackLang.HolProg 64 :=
.seq NamedBody158_390 NamedBody158_591

def NamedBody158_593 : StackLang.HolProg 64 :=
.seq NamedBody158_389 NamedBody158_592

def NamedBody158_594 : StackLang.HolProg 64 :=
.seq NamedBody158_388 NamedBody158_593

def NamedBody158_595 : StackLang.HolProg 64 :=
.seq NamedBody158_387 NamedBody158_594

def NamedBody158_596 : StackLang.HolProg 64 :=
.seq NamedBody158_386 NamedBody158_595

def NamedBody158_597 : StackLang.HolProg 64 :=
.seq NamedBody158_385 NamedBody158_596

def NamedBody158_598 : StackLang.HolProg 64 :=
.seq NamedBody158_384 NamedBody158_597

def NamedBody158_599 : StackLang.HolProg 64 :=
.seq NamedBody158_383 NamedBody158_598

def NamedBody158_600 : StackLang.HolProg 64 :=
.seq NamedBody158_382 NamedBody158_599

def NamedBody158_601 : StackLang.HolProg 64 :=
.seq NamedBody158_381 NamedBody158_600

def NamedBody158_602 : StackLang.HolProg 64 :=
.seq NamedBody158_380 NamedBody158_601

def NamedBody158_603 : StackLang.HolProg 64 :=
.seq NamedBody158_379 NamedBody158_602

def NamedBody158_604 : StackLang.HolProg 64 :=
.seq NamedBody158_378 NamedBody158_603

def NamedBody158_605 : StackLang.HolProg 64 :=
.seq NamedBody158_377 NamedBody158_604

def NamedBody158_606 : StackLang.HolProg 64 :=
.seq NamedBody158_376 NamedBody158_605

def NamedBody158_607 : StackLang.HolProg 64 :=
.seq NamedBody158_319 NamedBody158_606

def NamedBody158_608 : StackLang.HolProg 64 :=
.seq NamedBody158_318 NamedBody158_607

def NamedBody158_609 : StackLang.HolProg 64 :=
.seq NamedBody158_317 NamedBody158_608

def NamedBody158_610 : StackLang.HolProg 64 :=
.seq NamedBody158_316 NamedBody158_609

def NamedBody158_611 : StackLang.HolProg 64 :=
.seq NamedBody158_315 NamedBody158_610

def NamedBody158_612 : StackLang.HolProg 64 :=
.seq NamedBody158_314 NamedBody158_611

def NamedBody158_613 : StackLang.HolProg 64 :=
.seq NamedBody158_313 NamedBody158_612

def NamedBody158_614 : StackLang.HolProg 64 :=
.seq NamedBody158_312 NamedBody158_613

def NamedBody158_615 : StackLang.HolProg 64 :=
.seq NamedBody158_311 NamedBody158_614

def NamedBody158_616 : StackLang.HolProg 64 :=
.seq NamedBody158_234 NamedBody158_615

def NamedBody158_617 : StackLang.HolProg 64 :=
.seq NamedBody158_231 NamedBody158_616

def NamedBody158_618 : StackLang.HolProg 64 :=
.seq NamedBody158_230 NamedBody158_617

def NamedBody158_619 : StackLang.HolProg 64 :=
.seq NamedBody158_229 NamedBody158_618

def NamedBody158_620 : StackLang.HolProg 64 :=
.seq NamedBody158_228 NamedBody158_619

def NamedBody158_621 : StackLang.HolProg 64 :=
.seq NamedBody158_227 NamedBody158_620

def NamedBody158_622 : StackLang.HolProg 64 :=
.seq NamedBody158_226 NamedBody158_621

def NamedBody158_623 : StackLang.HolProg 64 :=
.seq NamedBody158_225 NamedBody158_622

def NamedBody158_624 : StackLang.HolProg 64 :=
.seq NamedBody158_224 NamedBody158_623

def NamedBody158_625 : StackLang.HolProg 64 :=
.seq NamedBody158_223 NamedBody158_624

def NamedBody158_626 : StackLang.HolProg 64 :=
.seq NamedBody158_91 NamedBody158_625

def NamedBody158_627 : StackLang.HolProg 64 :=
.seq NamedBody158_88 NamedBody158_626

def NamedBody158_628 : StackLang.HolProg 64 :=
.seq NamedBody158_87 NamedBody158_627

def NamedBody158_629 : StackLang.HolProg 64 :=
.seq NamedBody158_86 NamedBody158_628

def NamedBody158_630 : StackLang.HolProg 64 :=
.seq NamedBody158_85 NamedBody158_629

def NamedBody158_631 : StackLang.HolProg 64 :=
.seq NamedBody158_24 NamedBody158_630

def NamedBody158_632 : StackLang.HolProg 64 :=
.seq NamedBody158_15 NamedBody158_631

def NamedBody158_633 : StackLang.HolProg 64 :=
.seq NamedBody158_14 NamedBody158_632

def NamedBody158_634 : StackLang.HolProg 64 :=
.seq NamedBody158_13 NamedBody158_633

def NamedBody158_635 : StackLang.HolProg 64 :=
.seq NamedBody158_12 NamedBody158_634

def NamedBody158_636 : StackLang.HolProg 64 :=
.seq NamedBody158_11 NamedBody158_635

def NamedBody158_637 : StackLang.HolProg 64 :=
.seq NamedBody158_10 NamedBody158_636

def NamedBody158_638 : StackLang.HolProg 64 :=
.seq NamedBody158_9 NamedBody158_637

def NamedBody158_639 : StackLang.HolProg 64 :=
.seq NamedBody158_6 NamedBody158_638

def Named158 : Nat × StackLang.HolProg 64 := (158, NamedBody158_639)
theorem Named158_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed158 = Named158 := by
  kernel_rfl
#print axioms Named158_eq
end InitECandidate.Proofs.BackendStages
