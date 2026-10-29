import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed685
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody685_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody685_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_3 : StackLang.HolProg 64 :=
.seq NamedBody685_1 NamedBody685_2

def NamedBody685_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_3 NamedBody685_4

def NamedBody685_6 : StackLang.HolProg 64 :=
.seq NamedBody685_0 NamedBody685_5

def NamedBody685_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody685_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_17 : StackLang.HolProg 64 :=
.seq NamedBody685_15 NamedBody685_16

def NamedBody685_18 : StackLang.HolProg 64 :=
.seq NamedBody685_14 NamedBody685_17

def NamedBody685_19 : StackLang.HolProg 64 :=
.seq NamedBody685_13 NamedBody685_18

def NamedBody685_20 : StackLang.HolProg 64 :=
.seq NamedBody685_12 NamedBody685_19

def NamedBody685_21 : StackLang.HolProg 64 :=
.seq NamedBody685_11 NamedBody685_20

def NamedBody685_22 : StackLang.HolProg 64 :=
.seq NamedBody685_10 NamedBody685_21

def NamedBody685_23 : StackLang.HolProg 64 :=
.seq NamedBody685_9 NamedBody685_22

def NamedBody685_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2887#64)

def NamedBody685_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_27 : StackLang.HolProg 64 :=
.seq NamedBody685_25 NamedBody685_26

def NamedBody685_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_31 : StackLang.HolProg 64 :=
.seq NamedBody685_29 NamedBody685_30

def NamedBody685_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_31 NamedBody685_32

def NamedBody685_34 : StackLang.HolProg 64 :=
.seq NamedBody685_28 NamedBody685_33

def NamedBody685_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 3

def NamedBody685_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_44 : StackLang.HolProg 64 :=
.seq NamedBody685_42 NamedBody685_43

def NamedBody685_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_46 : StackLang.HolProg 64 :=
.seq NamedBody685_44 NamedBody685_45

def NamedBody685_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_48 : StackLang.HolProg 64 :=
.seq NamedBody685_46 NamedBody685_47

def NamedBody685_49 : StackLang.HolProg 64 :=
.seq NamedBody685_41 NamedBody685_48

def NamedBody685_50 : StackLang.HolProg 64 :=
.seq NamedBody685_40 NamedBody685_49

def NamedBody685_51 : StackLang.HolProg 64 :=
.seq NamedBody685_39 NamedBody685_50

def NamedBody685_52 : StackLang.HolProg 64 :=
.seq NamedBody685_38 NamedBody685_51

def NamedBody685_53 : StackLang.HolProg 64 :=
.seq NamedBody685_37 NamedBody685_52

def NamedBody685_54 : StackLang.HolProg 64 :=
.seq NamedBody685_36 NamedBody685_53

def NamedBody685_55 : StackLang.HolProg 64 :=
.seq NamedBody685_35 NamedBody685_54

def NamedBody685_56 : StackLang.HolProg 64 :=
.seq NamedBody685_34 NamedBody685_55

def NamedBody685_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody685_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_68 : StackLang.HolProg 64 :=
.seq NamedBody685_66 NamedBody685_67

def NamedBody685_69 : StackLang.HolProg 64 :=
.seq NamedBody685_65 NamedBody685_68

def NamedBody685_70 : StackLang.HolProg 64 :=
.seq NamedBody685_64 NamedBody685_69

def NamedBody685_71 : StackLang.HolProg 64 :=
.seq NamedBody685_63 NamedBody685_70

def NamedBody685_72 : StackLang.HolProg 64 :=
.seq NamedBody685_62 NamedBody685_71

def NamedBody685_73 : StackLang.HolProg 64 :=
.seq NamedBody685_61 NamedBody685_72

def NamedBody685_74 : StackLang.HolProg 64 :=
.seq NamedBody685_60 NamedBody685_73

def NamedBody685_75 : StackLang.HolProg 64 :=
.seq NamedBody685_59 NamedBody685_74

def NamedBody685_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_80 : StackLang.HolProg 64 :=
.seq NamedBody685_78 NamedBody685_79

def NamedBody685_81 : StackLang.HolProg 64 :=
.seq NamedBody685_77 NamedBody685_80

def NamedBody685_82 : StackLang.HolProg 64 :=
.seq NamedBody685_76 NamedBody685_81

def NamedBody685_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_84 : StackLang.HolProg 64 :=
.seq NamedBody685_82 NamedBody685_83

def NamedBody685_85 : StackLang.HolProg 64 :=
.call (some (NamedBody685_75, 1, 685, 2)) (Sum.inl 69) (some (NamedBody685_84, 685, 3))

def NamedBody685_86 : StackLang.HolProg 64 :=
.seq NamedBody685_58 NamedBody685_85

def NamedBody685_87 : StackLang.HolProg 64 :=
.seq NamedBody685_57 NamedBody685_86

def NamedBody685_88 : StackLang.HolProg 64 :=
.seq NamedBody685_56 NamedBody685_87

def NamedBody685_89 : StackLang.HolProg 64 :=
.seq NamedBody685_27 NamedBody685_88

def NamedBody685_90 : StackLang.HolProg 64 :=
.seq NamedBody685_24 NamedBody685_89

def NamedBody685_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody685_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody685_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody685_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody685_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 27 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody685_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody685_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody685_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody685_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_119 : StackLang.HolProg 64 :=
.seq NamedBody685_117 NamedBody685_118

def NamedBody685_120 : StackLang.HolProg 64 :=
.seq NamedBody685_116 NamedBody685_119

def NamedBody685_121 : StackLang.HolProg 64 :=
.seq NamedBody685_115 NamedBody685_120

def NamedBody685_122 : StackLang.HolProg 64 :=
.seq NamedBody685_114 NamedBody685_121

def NamedBody685_123 : StackLang.HolProg 64 :=
.seq NamedBody685_113 NamedBody685_122

def NamedBody685_124 : StackLang.HolProg 64 :=
.seq NamedBody685_112 NamedBody685_123

def NamedBody685_125 : StackLang.HolProg 64 :=
.seq NamedBody685_111 NamedBody685_124

def NamedBody685_126 : StackLang.HolProg 64 :=
.seq NamedBody685_110 NamedBody685_125

def NamedBody685_127 : StackLang.HolProg 64 :=
.seq NamedBody685_109 NamedBody685_126

def NamedBody685_128 : StackLang.HolProg 64 :=
.seq NamedBody685_108 NamedBody685_127

def NamedBody685_129 : StackLang.HolProg 64 :=
.seq NamedBody685_107 NamedBody685_128

def NamedBody685_130 : StackLang.HolProg 64 :=
.seq NamedBody685_106 NamedBody685_129

def NamedBody685_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2888#64)

def NamedBody685_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_134 : StackLang.HolProg 64 :=
.seq NamedBody685_132 NamedBody685_133

def NamedBody685_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_138 : StackLang.HolProg 64 :=
.seq NamedBody685_136 NamedBody685_137

def NamedBody685_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_138 NamedBody685_139

def NamedBody685_141 : StackLang.HolProg 64 :=
.seq NamedBody685_135 NamedBody685_140

def NamedBody685_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 5

def NamedBody685_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_151 : StackLang.HolProg 64 :=
.seq NamedBody685_149 NamedBody685_150

def NamedBody685_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_153 : StackLang.HolProg 64 :=
.seq NamedBody685_151 NamedBody685_152

def NamedBody685_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_155 : StackLang.HolProg 64 :=
.seq NamedBody685_153 NamedBody685_154

def NamedBody685_156 : StackLang.HolProg 64 :=
.seq NamedBody685_148 NamedBody685_155

def NamedBody685_157 : StackLang.HolProg 64 :=
.seq NamedBody685_147 NamedBody685_156

def NamedBody685_158 : StackLang.HolProg 64 :=
.seq NamedBody685_146 NamedBody685_157

def NamedBody685_159 : StackLang.HolProg 64 :=
.seq NamedBody685_145 NamedBody685_158

def NamedBody685_160 : StackLang.HolProg 64 :=
.seq NamedBody685_144 NamedBody685_159

def NamedBody685_161 : StackLang.HolProg 64 :=
.seq NamedBody685_143 NamedBody685_160

def NamedBody685_162 : StackLang.HolProg 64 :=
.seq NamedBody685_142 NamedBody685_161

def NamedBody685_163 : StackLang.HolProg 64 :=
.seq NamedBody685_141 NamedBody685_162

def NamedBody685_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody685_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_172 : StackLang.HolProg 64 :=
.seq NamedBody685_170 NamedBody685_171

def NamedBody685_173 : StackLang.HolProg 64 :=
.seq NamedBody685_169 NamedBody685_172

def NamedBody685_174 : StackLang.HolProg 64 :=
.seq NamedBody685_168 NamedBody685_173

def NamedBody685_175 : StackLang.HolProg 64 :=
.seq NamedBody685_167 NamedBody685_174

def NamedBody685_176 : StackLang.HolProg 64 :=
.seq NamedBody685_166 NamedBody685_175

def NamedBody685_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_179 : StackLang.HolProg 64 :=
.seq NamedBody685_177 NamedBody685_178

def NamedBody685_180 : StackLang.HolProg 64 :=
.call (some (NamedBody685_176, 1, 685, 4)) (Sum.inl 68) (some (NamedBody685_179, 685, 5))

def NamedBody685_181 : StackLang.HolProg 64 :=
.seq NamedBody685_165 NamedBody685_180

def NamedBody685_182 : StackLang.HolProg 64 :=
.seq NamedBody685_164 NamedBody685_181

def NamedBody685_183 : StackLang.HolProg 64 :=
.seq NamedBody685_163 NamedBody685_182

def NamedBody685_184 : StackLang.HolProg 64 :=
.seq NamedBody685_134 NamedBody685_183

def NamedBody685_185 : StackLang.HolProg 64 :=
.seq NamedBody685_131 NamedBody685_184

def NamedBody685_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_190 : StackLang.HolProg 64 :=
.seq NamedBody685_188 NamedBody685_189

def NamedBody685_191 : StackLang.HolProg 64 :=
.seq NamedBody685_187 NamedBody685_190

def NamedBody685_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2889#64)

def NamedBody685_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_195 : StackLang.HolProg 64 :=
.seq NamedBody685_193 NamedBody685_194

def NamedBody685_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_199 : StackLang.HolProg 64 :=
.seq NamedBody685_197 NamedBody685_198

def NamedBody685_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_199 NamedBody685_200

def NamedBody685_202 : StackLang.HolProg 64 :=
.seq NamedBody685_196 NamedBody685_201

def NamedBody685_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 7

def NamedBody685_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_212 : StackLang.HolProg 64 :=
.seq NamedBody685_210 NamedBody685_211

def NamedBody685_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_214 : StackLang.HolProg 64 :=
.seq NamedBody685_212 NamedBody685_213

def NamedBody685_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_216 : StackLang.HolProg 64 :=
.seq NamedBody685_214 NamedBody685_215

def NamedBody685_217 : StackLang.HolProg 64 :=
.seq NamedBody685_209 NamedBody685_216

def NamedBody685_218 : StackLang.HolProg 64 :=
.seq NamedBody685_208 NamedBody685_217

def NamedBody685_219 : StackLang.HolProg 64 :=
.seq NamedBody685_207 NamedBody685_218

def NamedBody685_220 : StackLang.HolProg 64 :=
.seq NamedBody685_206 NamedBody685_219

def NamedBody685_221 : StackLang.HolProg 64 :=
.seq NamedBody685_205 NamedBody685_220

def NamedBody685_222 : StackLang.HolProg 64 :=
.seq NamedBody685_204 NamedBody685_221

def NamedBody685_223 : StackLang.HolProg 64 :=
.seq NamedBody685_203 NamedBody685_222

def NamedBody685_224 : StackLang.HolProg 64 :=
.seq NamedBody685_202 NamedBody685_223

def NamedBody685_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody685_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_233 : StackLang.HolProg 64 :=
.seq NamedBody685_231 NamedBody685_232

def NamedBody685_234 : StackLang.HolProg 64 :=
.seq NamedBody685_230 NamedBody685_233

def NamedBody685_235 : StackLang.HolProg 64 :=
.seq NamedBody685_229 NamedBody685_234

def NamedBody685_236 : StackLang.HolProg 64 :=
.seq NamedBody685_228 NamedBody685_235

def NamedBody685_237 : StackLang.HolProg 64 :=
.seq NamedBody685_227 NamedBody685_236

def NamedBody685_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_240 : StackLang.HolProg 64 :=
.seq NamedBody685_238 NamedBody685_239

def NamedBody685_241 : StackLang.HolProg 64 :=
.call (some (NamedBody685_237, 1, 685, 6)) (Sum.inl 68) (some (NamedBody685_240, 685, 7))

def NamedBody685_242 : StackLang.HolProg 64 :=
.seq NamedBody685_226 NamedBody685_241

def NamedBody685_243 : StackLang.HolProg 64 :=
.seq NamedBody685_225 NamedBody685_242

def NamedBody685_244 : StackLang.HolProg 64 :=
.seq NamedBody685_224 NamedBody685_243

def NamedBody685_245 : StackLang.HolProg 64 :=
.seq NamedBody685_195 NamedBody685_244

def NamedBody685_246 : StackLang.HolProg 64 :=
.seq NamedBody685_192 NamedBody685_245

def NamedBody685_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_251 : StackLang.HolProg 64 :=
.seq NamedBody685_249 NamedBody685_250

def NamedBody685_252 : StackLang.HolProg 64 :=
.seq NamedBody685_248 NamedBody685_251

def NamedBody685_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2890#64)

def NamedBody685_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_256 : StackLang.HolProg 64 :=
.seq NamedBody685_254 NamedBody685_255

def NamedBody685_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_260 : StackLang.HolProg 64 :=
.seq NamedBody685_258 NamedBody685_259

def NamedBody685_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_262 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_260 NamedBody685_261

def NamedBody685_263 : StackLang.HolProg 64 :=
.seq NamedBody685_257 NamedBody685_262

def NamedBody685_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 9

def NamedBody685_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_273 : StackLang.HolProg 64 :=
.seq NamedBody685_271 NamedBody685_272

def NamedBody685_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_275 : StackLang.HolProg 64 :=
.seq NamedBody685_273 NamedBody685_274

def NamedBody685_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_277 : StackLang.HolProg 64 :=
.seq NamedBody685_275 NamedBody685_276

def NamedBody685_278 : StackLang.HolProg 64 :=
.seq NamedBody685_270 NamedBody685_277

def NamedBody685_279 : StackLang.HolProg 64 :=
.seq NamedBody685_269 NamedBody685_278

def NamedBody685_280 : StackLang.HolProg 64 :=
.seq NamedBody685_268 NamedBody685_279

def NamedBody685_281 : StackLang.HolProg 64 :=
.seq NamedBody685_267 NamedBody685_280

def NamedBody685_282 : StackLang.HolProg 64 :=
.seq NamedBody685_266 NamedBody685_281

def NamedBody685_283 : StackLang.HolProg 64 :=
.seq NamedBody685_265 NamedBody685_282

def NamedBody685_284 : StackLang.HolProg 64 :=
.seq NamedBody685_264 NamedBody685_283

def NamedBody685_285 : StackLang.HolProg 64 :=
.seq NamedBody685_263 NamedBody685_284

def NamedBody685_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody685_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_294 : StackLang.HolProg 64 :=
.seq NamedBody685_292 NamedBody685_293

def NamedBody685_295 : StackLang.HolProg 64 :=
.seq NamedBody685_291 NamedBody685_294

def NamedBody685_296 : StackLang.HolProg 64 :=
.seq NamedBody685_290 NamedBody685_295

def NamedBody685_297 : StackLang.HolProg 64 :=
.seq NamedBody685_289 NamedBody685_296

def NamedBody685_298 : StackLang.HolProg 64 :=
.seq NamedBody685_288 NamedBody685_297

def NamedBody685_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_300 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_301 : StackLang.HolProg 64 :=
.seq NamedBody685_299 NamedBody685_300

def NamedBody685_302 : StackLang.HolProg 64 :=
.call (some (NamedBody685_298, 1, 685, 8)) (Sum.inl 68) (some (NamedBody685_301, 685, 9))

def NamedBody685_303 : StackLang.HolProg 64 :=
.seq NamedBody685_287 NamedBody685_302

def NamedBody685_304 : StackLang.HolProg 64 :=
.seq NamedBody685_286 NamedBody685_303

def NamedBody685_305 : StackLang.HolProg 64 :=
.seq NamedBody685_285 NamedBody685_304

def NamedBody685_306 : StackLang.HolProg 64 :=
.seq NamedBody685_256 NamedBody685_305

def NamedBody685_307 : StackLang.HolProg 64 :=
.seq NamedBody685_253 NamedBody685_306

def NamedBody685_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_311 : StackLang.HolProg 64 :=
.seq NamedBody685_309 NamedBody685_310

def NamedBody685_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2891#64)

def NamedBody685_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_315 : StackLang.HolProg 64 :=
.seq NamedBody685_313 NamedBody685_314

def NamedBody685_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_319 : StackLang.HolProg 64 :=
.seq NamedBody685_317 NamedBody685_318

def NamedBody685_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_321 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_319 NamedBody685_320

def NamedBody685_322 : StackLang.HolProg 64 :=
.seq NamedBody685_316 NamedBody685_321

def NamedBody685_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 11

def NamedBody685_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_332 : StackLang.HolProg 64 :=
.seq NamedBody685_330 NamedBody685_331

def NamedBody685_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_334 : StackLang.HolProg 64 :=
.seq NamedBody685_332 NamedBody685_333

def NamedBody685_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_336 : StackLang.HolProg 64 :=
.seq NamedBody685_334 NamedBody685_335

def NamedBody685_337 : StackLang.HolProg 64 :=
.seq NamedBody685_329 NamedBody685_336

def NamedBody685_338 : StackLang.HolProg 64 :=
.seq NamedBody685_328 NamedBody685_337

def NamedBody685_339 : StackLang.HolProg 64 :=
.seq NamedBody685_327 NamedBody685_338

def NamedBody685_340 : StackLang.HolProg 64 :=
.seq NamedBody685_326 NamedBody685_339

def NamedBody685_341 : StackLang.HolProg 64 :=
.seq NamedBody685_325 NamedBody685_340

def NamedBody685_342 : StackLang.HolProg 64 :=
.seq NamedBody685_324 NamedBody685_341

def NamedBody685_343 : StackLang.HolProg 64 :=
.seq NamedBody685_323 NamedBody685_342

def NamedBody685_344 : StackLang.HolProg 64 :=
.seq NamedBody685_322 NamedBody685_343

def NamedBody685_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody685_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_355 : StackLang.HolProg 64 :=
.seq NamedBody685_353 NamedBody685_354

def NamedBody685_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_358 : StackLang.HolProg 64 :=
.seq NamedBody685_356 NamedBody685_357

def NamedBody685_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_361 : StackLang.HolProg 64 :=
.seq NamedBody685_359 NamedBody685_360

def NamedBody685_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_364 : StackLang.HolProg 64 :=
.seq NamedBody685_362 NamedBody685_363

def NamedBody685_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_368 : StackLang.HolProg 64 :=
.seq NamedBody685_366 NamedBody685_367

def NamedBody685_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_372 : StackLang.HolProg 64 :=
.seq NamedBody685_370 NamedBody685_371

def NamedBody685_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_377 : StackLang.HolProg 64 :=
.seq NamedBody685_375 NamedBody685_376

def NamedBody685_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody685_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_380 : StackLang.HolProg 64 :=
.seq NamedBody685_378 NamedBody685_379

def NamedBody685_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody685_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_383 : StackLang.HolProg 64 :=
.seq NamedBody685_381 NamedBody685_382

def NamedBody685_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_386 : StackLang.HolProg 64 :=
.seq NamedBody685_384 NamedBody685_385

def NamedBody685_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_389 : StackLang.HolProg 64 :=
.seq NamedBody685_387 NamedBody685_388

def NamedBody685_390 : StackLang.HolProg 64 :=
.seq NamedBody685_386 NamedBody685_389

def NamedBody685_391 : StackLang.HolProg 64 :=
.seq NamedBody685_383 NamedBody685_390

def NamedBody685_392 : StackLang.HolProg 64 :=
.seq NamedBody685_380 NamedBody685_391

def NamedBody685_393 : StackLang.HolProg 64 :=
.seq NamedBody685_377 NamedBody685_392

def NamedBody685_394 : StackLang.HolProg 64 :=
.seq NamedBody685_374 NamedBody685_393

def NamedBody685_395 : StackLang.HolProg 64 :=
.seq NamedBody685_373 NamedBody685_394

def NamedBody685_396 : StackLang.HolProg 64 :=
.seq NamedBody685_372 NamedBody685_395

def NamedBody685_397 : StackLang.HolProg 64 :=
.seq NamedBody685_369 NamedBody685_396

def NamedBody685_398 : StackLang.HolProg 64 :=
.seq NamedBody685_368 NamedBody685_397

def NamedBody685_399 : StackLang.HolProg 64 :=
.seq NamedBody685_365 NamedBody685_398

def NamedBody685_400 : StackLang.HolProg 64 :=
.seq NamedBody685_364 NamedBody685_399

def NamedBody685_401 : StackLang.HolProg 64 :=
.seq NamedBody685_361 NamedBody685_400

def NamedBody685_402 : StackLang.HolProg 64 :=
.seq NamedBody685_358 NamedBody685_401

def NamedBody685_403 : StackLang.HolProg 64 :=
.seq NamedBody685_355 NamedBody685_402

def NamedBody685_404 : StackLang.HolProg 64 :=
.seq NamedBody685_352 NamedBody685_403

def NamedBody685_405 : StackLang.HolProg 64 :=
.seq NamedBody685_351 NamedBody685_404

def NamedBody685_406 : StackLang.HolProg 64 :=
.seq NamedBody685_350 NamedBody685_405

def NamedBody685_407 : StackLang.HolProg 64 :=
.seq NamedBody685_349 NamedBody685_406

def NamedBody685_408 : StackLang.HolProg 64 :=
.seq NamedBody685_348 NamedBody685_407

def NamedBody685_409 : StackLang.HolProg 64 :=
.seq NamedBody685_347 NamedBody685_408

def NamedBody685_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_413 : StackLang.HolProg 64 :=
.seq NamedBody685_411 NamedBody685_412

def NamedBody685_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_416 : StackLang.HolProg 64 :=
.seq NamedBody685_414 NamedBody685_415

def NamedBody685_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_419 : StackLang.HolProg 64 :=
.seq NamedBody685_417 NamedBody685_418

def NamedBody685_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_422 : StackLang.HolProg 64 :=
.seq NamedBody685_420 NamedBody685_421

def NamedBody685_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_426 : StackLang.HolProg 64 :=
.seq NamedBody685_424 NamedBody685_425

def NamedBody685_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_430 : StackLang.HolProg 64 :=
.seq NamedBody685_428 NamedBody685_429

def NamedBody685_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_435 : StackLang.HolProg 64 :=
.seq NamedBody685_433 NamedBody685_434

def NamedBody685_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody685_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_438 : StackLang.HolProg 64 :=
.seq NamedBody685_436 NamedBody685_437

def NamedBody685_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody685_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_441 : StackLang.HolProg 64 :=
.seq NamedBody685_439 NamedBody685_440

def NamedBody685_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_444 : StackLang.HolProg 64 :=
.seq NamedBody685_442 NamedBody685_443

def NamedBody685_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_447 : StackLang.HolProg 64 :=
.seq NamedBody685_445 NamedBody685_446

def NamedBody685_448 : StackLang.HolProg 64 :=
.seq NamedBody685_444 NamedBody685_447

def NamedBody685_449 : StackLang.HolProg 64 :=
.seq NamedBody685_441 NamedBody685_448

def NamedBody685_450 : StackLang.HolProg 64 :=
.seq NamedBody685_438 NamedBody685_449

def NamedBody685_451 : StackLang.HolProg 64 :=
.seq NamedBody685_435 NamedBody685_450

def NamedBody685_452 : StackLang.HolProg 64 :=
.seq NamedBody685_432 NamedBody685_451

def NamedBody685_453 : StackLang.HolProg 64 :=
.seq NamedBody685_431 NamedBody685_452

def NamedBody685_454 : StackLang.HolProg 64 :=
.seq NamedBody685_430 NamedBody685_453

def NamedBody685_455 : StackLang.HolProg 64 :=
.seq NamedBody685_427 NamedBody685_454

def NamedBody685_456 : StackLang.HolProg 64 :=
.seq NamedBody685_426 NamedBody685_455

def NamedBody685_457 : StackLang.HolProg 64 :=
.seq NamedBody685_423 NamedBody685_456

def NamedBody685_458 : StackLang.HolProg 64 :=
.seq NamedBody685_422 NamedBody685_457

def NamedBody685_459 : StackLang.HolProg 64 :=
.seq NamedBody685_419 NamedBody685_458

def NamedBody685_460 : StackLang.HolProg 64 :=
.seq NamedBody685_416 NamedBody685_459

def NamedBody685_461 : StackLang.HolProg 64 :=
.seq NamedBody685_413 NamedBody685_460

def NamedBody685_462 : StackLang.HolProg 64 :=
.seq NamedBody685_410 NamedBody685_461

def NamedBody685_463 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_464 : StackLang.HolProg 64 :=
.seq NamedBody685_462 NamedBody685_463

def NamedBody685_465 : StackLang.HolProg 64 :=
.call (some (NamedBody685_409, 1, 685, 10)) (Sum.inl 68) (some (NamedBody685_464, 685, 11))

def NamedBody685_466 : StackLang.HolProg 64 :=
.seq NamedBody685_346 NamedBody685_465

def NamedBody685_467 : StackLang.HolProg 64 :=
.seq NamedBody685_345 NamedBody685_466

def NamedBody685_468 : StackLang.HolProg 64 :=
.seq NamedBody685_344 NamedBody685_467

def NamedBody685_469 : StackLang.HolProg 64 :=
.seq NamedBody685_315 NamedBody685_468

def NamedBody685_470 : StackLang.HolProg 64 :=
.seq NamedBody685_312 NamedBody685_469

def NamedBody685_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody685_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_478 : StackLang.HolProg 64 :=
.seq NamedBody685_476 NamedBody685_477

def NamedBody685_479 : StackLang.HolProg 64 :=
.seq NamedBody685_475 NamedBody685_478

def NamedBody685_480 : StackLang.HolProg 64 :=
.seq NamedBody685_474 NamedBody685_479

def NamedBody685_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2892#64)

def NamedBody685_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_484 : StackLang.HolProg 64 :=
.seq NamedBody685_482 NamedBody685_483

def NamedBody685_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_488 : StackLang.HolProg 64 :=
.seq NamedBody685_486 NamedBody685_487

def NamedBody685_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_490 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_488 NamedBody685_489

def NamedBody685_491 : StackLang.HolProg 64 :=
.seq NamedBody685_485 NamedBody685_490

def NamedBody685_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 13

def NamedBody685_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_501 : StackLang.HolProg 64 :=
.seq NamedBody685_499 NamedBody685_500

def NamedBody685_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_503 : StackLang.HolProg 64 :=
.seq NamedBody685_501 NamedBody685_502

def NamedBody685_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_505 : StackLang.HolProg 64 :=
.seq NamedBody685_503 NamedBody685_504

def NamedBody685_506 : StackLang.HolProg 64 :=
.seq NamedBody685_498 NamedBody685_505

def NamedBody685_507 : StackLang.HolProg 64 :=
.seq NamedBody685_497 NamedBody685_506

def NamedBody685_508 : StackLang.HolProg 64 :=
.seq NamedBody685_496 NamedBody685_507

def NamedBody685_509 : StackLang.HolProg 64 :=
.seq NamedBody685_495 NamedBody685_508

def NamedBody685_510 : StackLang.HolProg 64 :=
.seq NamedBody685_494 NamedBody685_509

def NamedBody685_511 : StackLang.HolProg 64 :=
.seq NamedBody685_493 NamedBody685_510

def NamedBody685_512 : StackLang.HolProg 64 :=
.seq NamedBody685_492 NamedBody685_511

def NamedBody685_513 : StackLang.HolProg 64 :=
.seq NamedBody685_491 NamedBody685_512

def NamedBody685_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_522 : StackLang.HolProg 64 :=
.seq NamedBody685_520 NamedBody685_521

def NamedBody685_523 : StackLang.HolProg 64 :=
.seq NamedBody685_519 NamedBody685_522

def NamedBody685_524 : StackLang.HolProg 64 :=
.seq NamedBody685_518 NamedBody685_523

def NamedBody685_525 : StackLang.HolProg 64 :=
.seq NamedBody685_517 NamedBody685_524

def NamedBody685_526 : StackLang.HolProg 64 :=
.seq NamedBody685_516 NamedBody685_525

def NamedBody685_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_529 : StackLang.HolProg 64 :=
.seq NamedBody685_527 NamedBody685_528

def NamedBody685_530 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_531 : StackLang.HolProg 64 :=
.seq NamedBody685_529 NamedBody685_530

def NamedBody685_532 : StackLang.HolProg 64 :=
.call (some (NamedBody685_526, 1, 685, 12)) (Sum.inl 678) (some (NamedBody685_531, 685, 13))

def NamedBody685_533 : StackLang.HolProg 64 :=
.seq NamedBody685_515 NamedBody685_532

def NamedBody685_534 : StackLang.HolProg 64 :=
.seq NamedBody685_514 NamedBody685_533

def NamedBody685_535 : StackLang.HolProg 64 :=
.seq NamedBody685_513 NamedBody685_534

def NamedBody685_536 : StackLang.HolProg 64 :=
.seq NamedBody685_484 NamedBody685_535

def NamedBody685_537 : StackLang.HolProg 64 :=
.seq NamedBody685_481 NamedBody685_536

def NamedBody685_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_542 : StackLang.HolProg 64 :=
.seq NamedBody685_540 NamedBody685_541

def NamedBody685_543 : StackLang.HolProg 64 :=
.seq NamedBody685_539 NamedBody685_542

def NamedBody685_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2893#64)

def NamedBody685_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_547 : StackLang.HolProg 64 :=
.seq NamedBody685_545 NamedBody685_546

def NamedBody685_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_551 : StackLang.HolProg 64 :=
.seq NamedBody685_549 NamedBody685_550

def NamedBody685_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_553 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_551 NamedBody685_552

def NamedBody685_554 : StackLang.HolProg 64 :=
.seq NamedBody685_548 NamedBody685_553

def NamedBody685_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 15

def NamedBody685_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_564 : StackLang.HolProg 64 :=
.seq NamedBody685_562 NamedBody685_563

def NamedBody685_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_566 : StackLang.HolProg 64 :=
.seq NamedBody685_564 NamedBody685_565

def NamedBody685_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_568 : StackLang.HolProg 64 :=
.seq NamedBody685_566 NamedBody685_567

def NamedBody685_569 : StackLang.HolProg 64 :=
.seq NamedBody685_561 NamedBody685_568

def NamedBody685_570 : StackLang.HolProg 64 :=
.seq NamedBody685_560 NamedBody685_569

def NamedBody685_571 : StackLang.HolProg 64 :=
.seq NamedBody685_559 NamedBody685_570

def NamedBody685_572 : StackLang.HolProg 64 :=
.seq NamedBody685_558 NamedBody685_571

def NamedBody685_573 : StackLang.HolProg 64 :=
.seq NamedBody685_557 NamedBody685_572

def NamedBody685_574 : StackLang.HolProg 64 :=
.seq NamedBody685_556 NamedBody685_573

def NamedBody685_575 : StackLang.HolProg 64 :=
.seq NamedBody685_555 NamedBody685_574

def NamedBody685_576 : StackLang.HolProg 64 :=
.seq NamedBody685_554 NamedBody685_575

def NamedBody685_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_585 : StackLang.HolProg 64 :=
.seq NamedBody685_583 NamedBody685_584

def NamedBody685_586 : StackLang.HolProg 64 :=
.seq NamedBody685_582 NamedBody685_585

def NamedBody685_587 : StackLang.HolProg 64 :=
.seq NamedBody685_581 NamedBody685_586

def NamedBody685_588 : StackLang.HolProg 64 :=
.seq NamedBody685_580 NamedBody685_587

def NamedBody685_589 : StackLang.HolProg 64 :=
.seq NamedBody685_579 NamedBody685_588

def NamedBody685_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_592 : StackLang.HolProg 64 :=
.seq NamedBody685_590 NamedBody685_591

def NamedBody685_593 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_594 : StackLang.HolProg 64 :=
.seq NamedBody685_592 NamedBody685_593

def NamedBody685_595 : StackLang.HolProg 64 :=
.call (some (NamedBody685_589, 1, 685, 14)) (Sum.inl 678) (some (NamedBody685_594, 685, 15))

def NamedBody685_596 : StackLang.HolProg 64 :=
.seq NamedBody685_578 NamedBody685_595

def NamedBody685_597 : StackLang.HolProg 64 :=
.seq NamedBody685_577 NamedBody685_596

def NamedBody685_598 : StackLang.HolProg 64 :=
.seq NamedBody685_576 NamedBody685_597

def NamedBody685_599 : StackLang.HolProg 64 :=
.seq NamedBody685_547 NamedBody685_598

def NamedBody685_600 : StackLang.HolProg 64 :=
.seq NamedBody685_544 NamedBody685_599

def NamedBody685_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_603 : StackLang.HolProg 64 :=
.seq NamedBody685_601 NamedBody685_602

def NamedBody685_604 : StackLang.HolProg 64 :=
.seq NamedBody685_600 NamedBody685_603

def NamedBody685_605 : StackLang.HolProg 64 :=
.seq NamedBody685_543 NamedBody685_604

def NamedBody685_606 : StackLang.HolProg 64 :=
.seq NamedBody685_538 NamedBody685_605

def NamedBody685_607 : StackLang.HolProg 64 :=
.seq NamedBody685_537 NamedBody685_606

def NamedBody685_608 : StackLang.HolProg 64 :=
.seq NamedBody685_480 NamedBody685_607

def NamedBody685_609 : StackLang.HolProg 64 :=
.seq NamedBody685_473 NamedBody685_608

def NamedBody685_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody685_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody685_615 : StackLang.HolProg 64 :=
.seq NamedBody685_613 NamedBody685_614

def NamedBody685_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_618 : StackLang.HolProg 64 :=
.seq NamedBody685_616 NamedBody685_617

def NamedBody685_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody685_623 : StackLang.HolProg 64 :=
.seq NamedBody685_621 NamedBody685_622

def NamedBody685_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_626 : StackLang.HolProg 64 :=
.seq NamedBody685_624 NamedBody685_625

def NamedBody685_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_629 : StackLang.HolProg 64 :=
.seq NamedBody685_627 NamedBody685_628

def NamedBody685_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_631 : StackLang.HolProg 64 :=
.seq NamedBody685_629 NamedBody685_630

def NamedBody685_632 : StackLang.HolProg 64 :=
.seq NamedBody685_626 NamedBody685_631

def NamedBody685_633 : StackLang.HolProg 64 :=
.seq NamedBody685_623 NamedBody685_632

def NamedBody685_634 : StackLang.HolProg 64 :=
.seq NamedBody685_620 NamedBody685_633

def NamedBody685_635 : StackLang.HolProg 64 :=
.seq NamedBody685_619 NamedBody685_634

def NamedBody685_636 : StackLang.HolProg 64 :=
.seq NamedBody685_618 NamedBody685_635

def NamedBody685_637 : StackLang.HolProg 64 :=
.seq NamedBody685_615 NamedBody685_636

def NamedBody685_638 : StackLang.HolProg 64 :=
.seq NamedBody685_612 NamedBody685_637

def NamedBody685_639 : StackLang.HolProg 64 :=
.seq NamedBody685_611 NamedBody685_638

def NamedBody685_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2894#64)

def NamedBody685_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_643 : StackLang.HolProg 64 :=
.seq NamedBody685_641 NamedBody685_642

def NamedBody685_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_647 : StackLang.HolProg 64 :=
.seq NamedBody685_645 NamedBody685_646

def NamedBody685_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_649 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_647 NamedBody685_648

def NamedBody685_650 : StackLang.HolProg 64 :=
.seq NamedBody685_644 NamedBody685_649

def NamedBody685_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 17

def NamedBody685_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_660 : StackLang.HolProg 64 :=
.seq NamedBody685_658 NamedBody685_659

def NamedBody685_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_662 : StackLang.HolProg 64 :=
.seq NamedBody685_660 NamedBody685_661

def NamedBody685_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_664 : StackLang.HolProg 64 :=
.seq NamedBody685_662 NamedBody685_663

def NamedBody685_665 : StackLang.HolProg 64 :=
.seq NamedBody685_657 NamedBody685_664

def NamedBody685_666 : StackLang.HolProg 64 :=
.seq NamedBody685_656 NamedBody685_665

def NamedBody685_667 : StackLang.HolProg 64 :=
.seq NamedBody685_655 NamedBody685_666

def NamedBody685_668 : StackLang.HolProg 64 :=
.seq NamedBody685_654 NamedBody685_667

def NamedBody685_669 : StackLang.HolProg 64 :=
.seq NamedBody685_653 NamedBody685_668

def NamedBody685_670 : StackLang.HolProg 64 :=
.seq NamedBody685_652 NamedBody685_669

def NamedBody685_671 : StackLang.HolProg 64 :=
.seq NamedBody685_651 NamedBody685_670

def NamedBody685_672 : StackLang.HolProg 64 :=
.seq NamedBody685_650 NamedBody685_671

def NamedBody685_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_683 : StackLang.HolProg 64 :=
.seq NamedBody685_681 NamedBody685_682

def NamedBody685_684 : StackLang.HolProg 64 :=
.seq NamedBody685_680 NamedBody685_683

def NamedBody685_685 : StackLang.HolProg 64 :=
.seq NamedBody685_679 NamedBody685_684

def NamedBody685_686 : StackLang.HolProg 64 :=
.seq NamedBody685_678 NamedBody685_685

def NamedBody685_687 : StackLang.HolProg 64 :=
.seq NamedBody685_677 NamedBody685_686

def NamedBody685_688 : StackLang.HolProg 64 :=
.seq NamedBody685_676 NamedBody685_687

def NamedBody685_689 : StackLang.HolProg 64 :=
.seq NamedBody685_675 NamedBody685_688

def NamedBody685_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_694 : StackLang.HolProg 64 :=
.seq NamedBody685_692 NamedBody685_693

def NamedBody685_695 : StackLang.HolProg 64 :=
.seq NamedBody685_691 NamedBody685_694

def NamedBody685_696 : StackLang.HolProg 64 :=
.seq NamedBody685_690 NamedBody685_695

def NamedBody685_697 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_698 : StackLang.HolProg 64 :=
.seq NamedBody685_696 NamedBody685_697

def NamedBody685_699 : StackLang.HolProg 64 :=
.call (some (NamedBody685_689, 1, 685, 16)) (Sum.inl 670) (some (NamedBody685_698, 685, 17))

def NamedBody685_700 : StackLang.HolProg 64 :=
.seq NamedBody685_674 NamedBody685_699

def NamedBody685_701 : StackLang.HolProg 64 :=
.seq NamedBody685_673 NamedBody685_700

def NamedBody685_702 : StackLang.HolProg 64 :=
.seq NamedBody685_672 NamedBody685_701

def NamedBody685_703 : StackLang.HolProg 64 :=
.seq NamedBody685_643 NamedBody685_702

def NamedBody685_704 : StackLang.HolProg 64 :=
.seq NamedBody685_640 NamedBody685_703

def NamedBody685_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_711 : StackLang.HolProg 64 :=
.seq NamedBody685_709 NamedBody685_710

def NamedBody685_712 : StackLang.HolProg 64 :=
.seq NamedBody685_708 NamedBody685_711

def NamedBody685_713 : StackLang.HolProg 64 :=
.seq NamedBody685_707 NamedBody685_712

def NamedBody685_714 : StackLang.HolProg 64 :=
.seq NamedBody685_706 NamedBody685_713

def NamedBody685_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2895#64)

def NamedBody685_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_718 : StackLang.HolProg 64 :=
.seq NamedBody685_716 NamedBody685_717

def NamedBody685_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_722 : StackLang.HolProg 64 :=
.seq NamedBody685_720 NamedBody685_721

def NamedBody685_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_724 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_722 NamedBody685_723

def NamedBody685_725 : StackLang.HolProg 64 :=
.seq NamedBody685_719 NamedBody685_724

def NamedBody685_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 19

def NamedBody685_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_735 : StackLang.HolProg 64 :=
.seq NamedBody685_733 NamedBody685_734

def NamedBody685_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_737 : StackLang.HolProg 64 :=
.seq NamedBody685_735 NamedBody685_736

def NamedBody685_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_739 : StackLang.HolProg 64 :=
.seq NamedBody685_737 NamedBody685_738

def NamedBody685_740 : StackLang.HolProg 64 :=
.seq NamedBody685_732 NamedBody685_739

def NamedBody685_741 : StackLang.HolProg 64 :=
.seq NamedBody685_731 NamedBody685_740

def NamedBody685_742 : StackLang.HolProg 64 :=
.seq NamedBody685_730 NamedBody685_741

def NamedBody685_743 : StackLang.HolProg 64 :=
.seq NamedBody685_729 NamedBody685_742

def NamedBody685_744 : StackLang.HolProg 64 :=
.seq NamedBody685_728 NamedBody685_743

def NamedBody685_745 : StackLang.HolProg 64 :=
.seq NamedBody685_727 NamedBody685_744

def NamedBody685_746 : StackLang.HolProg 64 :=
.seq NamedBody685_726 NamedBody685_745

def NamedBody685_747 : StackLang.HolProg 64 :=
.seq NamedBody685_725 NamedBody685_746

def NamedBody685_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_757 : StackLang.HolProg 64 :=
.seq NamedBody685_755 NamedBody685_756

def NamedBody685_758 : StackLang.HolProg 64 :=
.seq NamedBody685_754 NamedBody685_757

def NamedBody685_759 : StackLang.HolProg 64 :=
.seq NamedBody685_753 NamedBody685_758

def NamedBody685_760 : StackLang.HolProg 64 :=
.seq NamedBody685_752 NamedBody685_759

def NamedBody685_761 : StackLang.HolProg 64 :=
.seq NamedBody685_751 NamedBody685_760

def NamedBody685_762 : StackLang.HolProg 64 :=
.seq NamedBody685_750 NamedBody685_761

def NamedBody685_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_766 : StackLang.HolProg 64 :=
.seq NamedBody685_764 NamedBody685_765

def NamedBody685_767 : StackLang.HolProg 64 :=
.seq NamedBody685_763 NamedBody685_766

def NamedBody685_768 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_769 : StackLang.HolProg 64 :=
.seq NamedBody685_767 NamedBody685_768

def NamedBody685_770 : StackLang.HolProg 64 :=
.call (some (NamedBody685_762, 1, 685, 18)) (Sum.inl 670) (some (NamedBody685_769, 685, 19))

def NamedBody685_771 : StackLang.HolProg 64 :=
.seq NamedBody685_749 NamedBody685_770

def NamedBody685_772 : StackLang.HolProg 64 :=
.seq NamedBody685_748 NamedBody685_771

def NamedBody685_773 : StackLang.HolProg 64 :=
.seq NamedBody685_747 NamedBody685_772

def NamedBody685_774 : StackLang.HolProg 64 :=
.seq NamedBody685_718 NamedBody685_773

def NamedBody685_775 : StackLang.HolProg 64 :=
.seq NamedBody685_715 NamedBody685_774

def NamedBody685_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody685_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_782 : StackLang.HolProg 64 :=
.seq NamedBody685_780 NamedBody685_781

def NamedBody685_783 : StackLang.HolProg 64 :=
.seq NamedBody685_779 NamedBody685_782

def NamedBody685_784 : StackLang.HolProg 64 :=
.seq NamedBody685_778 NamedBody685_783

def NamedBody685_785 : StackLang.HolProg 64 :=
.seq NamedBody685_777 NamedBody685_784

def NamedBody685_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2896#64)

def NamedBody685_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_789 : StackLang.HolProg 64 :=
.seq NamedBody685_787 NamedBody685_788

def NamedBody685_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_793 : StackLang.HolProg 64 :=
.seq NamedBody685_791 NamedBody685_792

def NamedBody685_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_795 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_793 NamedBody685_794

def NamedBody685_796 : StackLang.HolProg 64 :=
.seq NamedBody685_790 NamedBody685_795

def NamedBody685_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 21

def NamedBody685_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_806 : StackLang.HolProg 64 :=
.seq NamedBody685_804 NamedBody685_805

def NamedBody685_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_808 : StackLang.HolProg 64 :=
.seq NamedBody685_806 NamedBody685_807

def NamedBody685_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_810 : StackLang.HolProg 64 :=
.seq NamedBody685_808 NamedBody685_809

def NamedBody685_811 : StackLang.HolProg 64 :=
.seq NamedBody685_803 NamedBody685_810

def NamedBody685_812 : StackLang.HolProg 64 :=
.seq NamedBody685_802 NamedBody685_811

def NamedBody685_813 : StackLang.HolProg 64 :=
.seq NamedBody685_801 NamedBody685_812

def NamedBody685_814 : StackLang.HolProg 64 :=
.seq NamedBody685_800 NamedBody685_813

def NamedBody685_815 : StackLang.HolProg 64 :=
.seq NamedBody685_799 NamedBody685_814

def NamedBody685_816 : StackLang.HolProg 64 :=
.seq NamedBody685_798 NamedBody685_815

def NamedBody685_817 : StackLang.HolProg 64 :=
.seq NamedBody685_797 NamedBody685_816

def NamedBody685_818 : StackLang.HolProg 64 :=
.seq NamedBody685_796 NamedBody685_817

def NamedBody685_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody685_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_830 : StackLang.HolProg 64 :=
.seq NamedBody685_828 NamedBody685_829

def NamedBody685_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody685_832 : StackLang.HolProg 64 :=
.seq NamedBody685_830 NamedBody685_831

def NamedBody685_833 : StackLang.HolProg 64 :=
.seq NamedBody685_827 NamedBody685_832

def NamedBody685_834 : StackLang.HolProg 64 :=
.seq NamedBody685_826 NamedBody685_833

def NamedBody685_835 : StackLang.HolProg 64 :=
.seq NamedBody685_825 NamedBody685_834

def NamedBody685_836 : StackLang.HolProg 64 :=
.seq NamedBody685_824 NamedBody685_835

def NamedBody685_837 : StackLang.HolProg 64 :=
.seq NamedBody685_823 NamedBody685_836

def NamedBody685_838 : StackLang.HolProg 64 :=
.seq NamedBody685_822 NamedBody685_837

def NamedBody685_839 : StackLang.HolProg 64 :=
.seq NamedBody685_821 NamedBody685_838

def NamedBody685_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody685_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_845 : StackLang.HolProg 64 :=
.seq NamedBody685_843 NamedBody685_844

def NamedBody685_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody685_847 : StackLang.HolProg 64 :=
.seq NamedBody685_845 NamedBody685_846

def NamedBody685_848 : StackLang.HolProg 64 :=
.seq NamedBody685_842 NamedBody685_847

def NamedBody685_849 : StackLang.HolProg 64 :=
.seq NamedBody685_841 NamedBody685_848

def NamedBody685_850 : StackLang.HolProg 64 :=
.seq NamedBody685_840 NamedBody685_849

def NamedBody685_851 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_852 : StackLang.HolProg 64 :=
.seq NamedBody685_850 NamedBody685_851

def NamedBody685_853 : StackLang.HolProg 64 :=
.call (some (NamedBody685_839, 1, 685, 20)) (Sum.inl 673) (some (NamedBody685_852, 685, 21))

def NamedBody685_854 : StackLang.HolProg 64 :=
.seq NamedBody685_820 NamedBody685_853

def NamedBody685_855 : StackLang.HolProg 64 :=
.seq NamedBody685_819 NamedBody685_854

def NamedBody685_856 : StackLang.HolProg 64 :=
.seq NamedBody685_818 NamedBody685_855

def NamedBody685_857 : StackLang.HolProg 64 :=
.seq NamedBody685_789 NamedBody685_856

def NamedBody685_858 : StackLang.HolProg 64 :=
.seq NamedBody685_786 NamedBody685_857

def NamedBody685_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody685_864 : StackLang.HolProg 64 :=
.seq NamedBody685_862 NamedBody685_863

def NamedBody685_865 : StackLang.HolProg 64 :=
.seq NamedBody685_861 NamedBody685_864

def NamedBody685_866 : StackLang.HolProg 64 :=
.seq NamedBody685_860 NamedBody685_865

def NamedBody685_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2897#64)

def NamedBody685_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_870 : StackLang.HolProg 64 :=
.seq NamedBody685_868 NamedBody685_869

def NamedBody685_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_874 : StackLang.HolProg 64 :=
.seq NamedBody685_872 NamedBody685_873

def NamedBody685_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_876 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_874 NamedBody685_875

def NamedBody685_877 : StackLang.HolProg 64 :=
.seq NamedBody685_871 NamedBody685_876

def NamedBody685_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 23

def NamedBody685_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_887 : StackLang.HolProg 64 :=
.seq NamedBody685_885 NamedBody685_886

def NamedBody685_888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_889 : StackLang.HolProg 64 :=
.seq NamedBody685_887 NamedBody685_888

def NamedBody685_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_891 : StackLang.HolProg 64 :=
.seq NamedBody685_889 NamedBody685_890

def NamedBody685_892 : StackLang.HolProg 64 :=
.seq NamedBody685_884 NamedBody685_891

def NamedBody685_893 : StackLang.HolProg 64 :=
.seq NamedBody685_883 NamedBody685_892

def NamedBody685_894 : StackLang.HolProg 64 :=
.seq NamedBody685_882 NamedBody685_893

def NamedBody685_895 : StackLang.HolProg 64 :=
.seq NamedBody685_881 NamedBody685_894

def NamedBody685_896 : StackLang.HolProg 64 :=
.seq NamedBody685_880 NamedBody685_895

def NamedBody685_897 : StackLang.HolProg 64 :=
.seq NamedBody685_879 NamedBody685_896

def NamedBody685_898 : StackLang.HolProg 64 :=
.seq NamedBody685_878 NamedBody685_897

def NamedBody685_899 : StackLang.HolProg 64 :=
.seq NamedBody685_877 NamedBody685_898

def NamedBody685_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_911 : StackLang.HolProg 64 :=
.seq NamedBody685_909 NamedBody685_910

def NamedBody685_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_914 : StackLang.HolProg 64 :=
.seq NamedBody685_912 NamedBody685_913

def NamedBody685_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_917 : StackLang.HolProg 64 :=
.seq NamedBody685_915 NamedBody685_916

def NamedBody685_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_921 : StackLang.HolProg 64 :=
.seq NamedBody685_919 NamedBody685_920

def NamedBody685_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody685_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_924 : StackLang.HolProg 64 :=
.seq NamedBody685_922 NamedBody685_923

def NamedBody685_925 : StackLang.HolProg 64 :=
.seq NamedBody685_921 NamedBody685_924

def NamedBody685_926 : StackLang.HolProg 64 :=
.seq NamedBody685_918 NamedBody685_925

def NamedBody685_927 : StackLang.HolProg 64 :=
.seq NamedBody685_917 NamedBody685_926

def NamedBody685_928 : StackLang.HolProg 64 :=
.seq NamedBody685_914 NamedBody685_927

def NamedBody685_929 : StackLang.HolProg 64 :=
.seq NamedBody685_911 NamedBody685_928

def NamedBody685_930 : StackLang.HolProg 64 :=
.seq NamedBody685_908 NamedBody685_929

def NamedBody685_931 : StackLang.HolProg 64 :=
.seq NamedBody685_907 NamedBody685_930

def NamedBody685_932 : StackLang.HolProg 64 :=
.seq NamedBody685_906 NamedBody685_931

def NamedBody685_933 : StackLang.HolProg 64 :=
.seq NamedBody685_905 NamedBody685_932

def NamedBody685_934 : StackLang.HolProg 64 :=
.seq NamedBody685_904 NamedBody685_933

def NamedBody685_935 : StackLang.HolProg 64 :=
.seq NamedBody685_903 NamedBody685_934

def NamedBody685_936 : StackLang.HolProg 64 :=
.seq NamedBody685_902 NamedBody685_935

def NamedBody685_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_942 : StackLang.HolProg 64 :=
.seq NamedBody685_940 NamedBody685_941

def NamedBody685_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_945 : StackLang.HolProg 64 :=
.seq NamedBody685_943 NamedBody685_944

def NamedBody685_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_948 : StackLang.HolProg 64 :=
.seq NamedBody685_946 NamedBody685_947

def NamedBody685_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_952 : StackLang.HolProg 64 :=
.seq NamedBody685_950 NamedBody685_951

def NamedBody685_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody685_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_955 : StackLang.HolProg 64 :=
.seq NamedBody685_953 NamedBody685_954

def NamedBody685_956 : StackLang.HolProg 64 :=
.seq NamedBody685_952 NamedBody685_955

def NamedBody685_957 : StackLang.HolProg 64 :=
.seq NamedBody685_949 NamedBody685_956

def NamedBody685_958 : StackLang.HolProg 64 :=
.seq NamedBody685_948 NamedBody685_957

def NamedBody685_959 : StackLang.HolProg 64 :=
.seq NamedBody685_945 NamedBody685_958

def NamedBody685_960 : StackLang.HolProg 64 :=
.seq NamedBody685_942 NamedBody685_959

def NamedBody685_961 : StackLang.HolProg 64 :=
.seq NamedBody685_939 NamedBody685_960

def NamedBody685_962 : StackLang.HolProg 64 :=
.seq NamedBody685_938 NamedBody685_961

def NamedBody685_963 : StackLang.HolProg 64 :=
.seq NamedBody685_937 NamedBody685_962

def NamedBody685_964 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_965 : StackLang.HolProg 64 :=
.seq NamedBody685_963 NamedBody685_964

def NamedBody685_966 : StackLang.HolProg 64 :=
.call (some (NamedBody685_936, 1, 685, 22)) (Sum.inl 670) (some (NamedBody685_965, 685, 23))

def NamedBody685_967 : StackLang.HolProg 64 :=
.seq NamedBody685_901 NamedBody685_966

def NamedBody685_968 : StackLang.HolProg 64 :=
.seq NamedBody685_900 NamedBody685_967

def NamedBody685_969 : StackLang.HolProg 64 :=
.seq NamedBody685_899 NamedBody685_968

def NamedBody685_970 : StackLang.HolProg 64 :=
.seq NamedBody685_870 NamedBody685_969

def NamedBody685_971 : StackLang.HolProg 64 :=
.seq NamedBody685_867 NamedBody685_970

def NamedBody685_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_977 : StackLang.HolProg 64 :=
.seq NamedBody685_975 NamedBody685_976

def NamedBody685_978 : StackLang.HolProg 64 :=
.seq NamedBody685_974 NamedBody685_977

def NamedBody685_979 : StackLang.HolProg 64 :=
.seq NamedBody685_973 NamedBody685_978

def NamedBody685_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2898#64)

def NamedBody685_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_983 : StackLang.HolProg 64 :=
.seq NamedBody685_981 NamedBody685_982

def NamedBody685_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_987 : StackLang.HolProg 64 :=
.seq NamedBody685_985 NamedBody685_986

def NamedBody685_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_989 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_987 NamedBody685_988

def NamedBody685_990 : StackLang.HolProg 64 :=
.seq NamedBody685_984 NamedBody685_989

def NamedBody685_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 25

def NamedBody685_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1000 : StackLang.HolProg 64 :=
.seq NamedBody685_998 NamedBody685_999

def NamedBody685_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1002 : StackLang.HolProg 64 :=
.seq NamedBody685_1000 NamedBody685_1001

def NamedBody685_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1004 : StackLang.HolProg 64 :=
.seq NamedBody685_1002 NamedBody685_1003

def NamedBody685_1005 : StackLang.HolProg 64 :=
.seq NamedBody685_997 NamedBody685_1004

def NamedBody685_1006 : StackLang.HolProg 64 :=
.seq NamedBody685_996 NamedBody685_1005

def NamedBody685_1007 : StackLang.HolProg 64 :=
.seq NamedBody685_995 NamedBody685_1006

def NamedBody685_1008 : StackLang.HolProg 64 :=
.seq NamedBody685_994 NamedBody685_1007

def NamedBody685_1009 : StackLang.HolProg 64 :=
.seq NamedBody685_993 NamedBody685_1008

def NamedBody685_1010 : StackLang.HolProg 64 :=
.seq NamedBody685_992 NamedBody685_1009

def NamedBody685_1011 : StackLang.HolProg 64 :=
.seq NamedBody685_991 NamedBody685_1010

def NamedBody685_1012 : StackLang.HolProg 64 :=
.seq NamedBody685_990 NamedBody685_1011

def NamedBody685_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1022 : StackLang.HolProg 64 :=
.seq NamedBody685_1020 NamedBody685_1021

def NamedBody685_1023 : StackLang.HolProg 64 :=
.seq NamedBody685_1019 NamedBody685_1022

def NamedBody685_1024 : StackLang.HolProg 64 :=
.seq NamedBody685_1018 NamedBody685_1023

def NamedBody685_1025 : StackLang.HolProg 64 :=
.seq NamedBody685_1017 NamedBody685_1024

def NamedBody685_1026 : StackLang.HolProg 64 :=
.seq NamedBody685_1016 NamedBody685_1025

def NamedBody685_1027 : StackLang.HolProg 64 :=
.seq NamedBody685_1015 NamedBody685_1026

def NamedBody685_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1031 : StackLang.HolProg 64 :=
.seq NamedBody685_1029 NamedBody685_1030

def NamedBody685_1032 : StackLang.HolProg 64 :=
.seq NamedBody685_1028 NamedBody685_1031

def NamedBody685_1033 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1034 : StackLang.HolProg 64 :=
.seq NamedBody685_1032 NamedBody685_1033

def NamedBody685_1035 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1027, 1, 685, 24)) (Sum.inl 670) (some (NamedBody685_1034, 685, 25))

def NamedBody685_1036 : StackLang.HolProg 64 :=
.seq NamedBody685_1014 NamedBody685_1035

def NamedBody685_1037 : StackLang.HolProg 64 :=
.seq NamedBody685_1013 NamedBody685_1036

def NamedBody685_1038 : StackLang.HolProg 64 :=
.seq NamedBody685_1012 NamedBody685_1037

def NamedBody685_1039 : StackLang.HolProg 64 :=
.seq NamedBody685_983 NamedBody685_1038

def NamedBody685_1040 : StackLang.HolProg 64 :=
.seq NamedBody685_980 NamedBody685_1039

def NamedBody685_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody685_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1047 : StackLang.HolProg 64 :=
.seq NamedBody685_1045 NamedBody685_1046

def NamedBody685_1048 : StackLang.HolProg 64 :=
.seq NamedBody685_1044 NamedBody685_1047

def NamedBody685_1049 : StackLang.HolProg 64 :=
.seq NamedBody685_1043 NamedBody685_1048

def NamedBody685_1050 : StackLang.HolProg 64 :=
.seq NamedBody685_1042 NamedBody685_1049

def NamedBody685_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2899#64)

def NamedBody685_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1054 : StackLang.HolProg 64 :=
.seq NamedBody685_1052 NamedBody685_1053

def NamedBody685_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1058 : StackLang.HolProg 64 :=
.seq NamedBody685_1056 NamedBody685_1057

def NamedBody685_1059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1060 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1058 NamedBody685_1059

def NamedBody685_1061 : StackLang.HolProg 64 :=
.seq NamedBody685_1055 NamedBody685_1060

def NamedBody685_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 27

def NamedBody685_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1071 : StackLang.HolProg 64 :=
.seq NamedBody685_1069 NamedBody685_1070

def NamedBody685_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1073 : StackLang.HolProg 64 :=
.seq NamedBody685_1071 NamedBody685_1072

def NamedBody685_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1075 : StackLang.HolProg 64 :=
.seq NamedBody685_1073 NamedBody685_1074

def NamedBody685_1076 : StackLang.HolProg 64 :=
.seq NamedBody685_1068 NamedBody685_1075

def NamedBody685_1077 : StackLang.HolProg 64 :=
.seq NamedBody685_1067 NamedBody685_1076

def NamedBody685_1078 : StackLang.HolProg 64 :=
.seq NamedBody685_1066 NamedBody685_1077

def NamedBody685_1079 : StackLang.HolProg 64 :=
.seq NamedBody685_1065 NamedBody685_1078

def NamedBody685_1080 : StackLang.HolProg 64 :=
.seq NamedBody685_1064 NamedBody685_1079

def NamedBody685_1081 : StackLang.HolProg 64 :=
.seq NamedBody685_1063 NamedBody685_1080

def NamedBody685_1082 : StackLang.HolProg 64 :=
.seq NamedBody685_1062 NamedBody685_1081

def NamedBody685_1083 : StackLang.HolProg 64 :=
.seq NamedBody685_1061 NamedBody685_1082

def NamedBody685_1084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1092 : StackLang.HolProg 64 :=
.seq NamedBody685_1090 NamedBody685_1091

def NamedBody685_1093 : StackLang.HolProg 64 :=
.seq NamedBody685_1089 NamedBody685_1092

def NamedBody685_1094 : StackLang.HolProg 64 :=
.seq NamedBody685_1088 NamedBody685_1093

def NamedBody685_1095 : StackLang.HolProg 64 :=
.seq NamedBody685_1087 NamedBody685_1094

def NamedBody685_1096 : StackLang.HolProg 64 :=
.seq NamedBody685_1086 NamedBody685_1095

def NamedBody685_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1099 : StackLang.HolProg 64 :=
.seq NamedBody685_1097 NamedBody685_1098

def NamedBody685_1100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1101 : StackLang.HolProg 64 :=
.seq NamedBody685_1099 NamedBody685_1100

def NamedBody685_1102 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1096, 1, 685, 26)) (Sum.inl 673) (some (NamedBody685_1101, 685, 27))

def NamedBody685_1103 : StackLang.HolProg 64 :=
.seq NamedBody685_1085 NamedBody685_1102

def NamedBody685_1104 : StackLang.HolProg 64 :=
.seq NamedBody685_1084 NamedBody685_1103

def NamedBody685_1105 : StackLang.HolProg 64 :=
.seq NamedBody685_1083 NamedBody685_1104

def NamedBody685_1106 : StackLang.HolProg 64 :=
.seq NamedBody685_1054 NamedBody685_1105

def NamedBody685_1107 : StackLang.HolProg 64 :=
.seq NamedBody685_1051 NamedBody685_1106

def NamedBody685_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1110 : StackLang.HolProg 64 :=
.seq NamedBody685_1108 NamedBody685_1109

def NamedBody685_1111 : StackLang.HolProg 64 :=
.seq NamedBody685_1107 NamedBody685_1110

def NamedBody685_1112 : StackLang.HolProg 64 :=
.seq NamedBody685_1050 NamedBody685_1111

def NamedBody685_1113 : StackLang.HolProg 64 :=
.seq NamedBody685_1041 NamedBody685_1112

def NamedBody685_1114 : StackLang.HolProg 64 :=
.seq NamedBody685_1040 NamedBody685_1113

def NamedBody685_1115 : StackLang.HolProg 64 :=
.seq NamedBody685_979 NamedBody685_1114

def NamedBody685_1116 : StackLang.HolProg 64 :=
.seq NamedBody685_972 NamedBody685_1115

def NamedBody685_1117 : StackLang.HolProg 64 :=
.seq NamedBody685_971 NamedBody685_1116

def NamedBody685_1118 : StackLang.HolProg 64 :=
.seq NamedBody685_866 NamedBody685_1117

def NamedBody685_1119 : StackLang.HolProg 64 :=
.seq NamedBody685_859 NamedBody685_1118

def NamedBody685_1120 : StackLang.HolProg 64 :=
.seq NamedBody685_858 NamedBody685_1119

def NamedBody685_1121 : StackLang.HolProg 64 :=
.seq NamedBody685_785 NamedBody685_1120

def NamedBody685_1122 : StackLang.HolProg 64 :=
.seq NamedBody685_776 NamedBody685_1121

def NamedBody685_1123 : StackLang.HolProg 64 :=
.seq NamedBody685_775 NamedBody685_1122

def NamedBody685_1124 : StackLang.HolProg 64 :=
.seq NamedBody685_714 NamedBody685_1123

def NamedBody685_1125 : StackLang.HolProg 64 :=
.seq NamedBody685_705 NamedBody685_1124

def NamedBody685_1126 : StackLang.HolProg 64 :=
.seq NamedBody685_704 NamedBody685_1125

def NamedBody685_1127 : StackLang.HolProg 64 :=
.seq NamedBody685_639 NamedBody685_1126

def NamedBody685_1128 : StackLang.HolProg 64 :=
.seq NamedBody685_610 NamedBody685_1127

def NamedBody685_1129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody685_609 NamedBody685_1128

def NamedBody685_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1134 : StackLang.HolProg 64 :=
.seq NamedBody685_1132 NamedBody685_1133

def NamedBody685_1135 : StackLang.HolProg 64 :=
.seq NamedBody685_1131 NamedBody685_1134

def NamedBody685_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2900#64)

def NamedBody685_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1139 : StackLang.HolProg 64 :=
.seq NamedBody685_1137 NamedBody685_1138

def NamedBody685_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1143 : StackLang.HolProg 64 :=
.seq NamedBody685_1141 NamedBody685_1142

def NamedBody685_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1143 NamedBody685_1144

def NamedBody685_1146 : StackLang.HolProg 64 :=
.seq NamedBody685_1140 NamedBody685_1145

def NamedBody685_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 29

def NamedBody685_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1156 : StackLang.HolProg 64 :=
.seq NamedBody685_1154 NamedBody685_1155

def NamedBody685_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1158 : StackLang.HolProg 64 :=
.seq NamedBody685_1156 NamedBody685_1157

def NamedBody685_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1160 : StackLang.HolProg 64 :=
.seq NamedBody685_1158 NamedBody685_1159

def NamedBody685_1161 : StackLang.HolProg 64 :=
.seq NamedBody685_1153 NamedBody685_1160

def NamedBody685_1162 : StackLang.HolProg 64 :=
.seq NamedBody685_1152 NamedBody685_1161

def NamedBody685_1163 : StackLang.HolProg 64 :=
.seq NamedBody685_1151 NamedBody685_1162

def NamedBody685_1164 : StackLang.HolProg 64 :=
.seq NamedBody685_1150 NamedBody685_1163

def NamedBody685_1165 : StackLang.HolProg 64 :=
.seq NamedBody685_1149 NamedBody685_1164

def NamedBody685_1166 : StackLang.HolProg 64 :=
.seq NamedBody685_1148 NamedBody685_1165

def NamedBody685_1167 : StackLang.HolProg 64 :=
.seq NamedBody685_1147 NamedBody685_1166

def NamedBody685_1168 : StackLang.HolProg 64 :=
.seq NamedBody685_1146 NamedBody685_1167

def NamedBody685_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody685_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1179 : StackLang.HolProg 64 :=
.seq NamedBody685_1177 NamedBody685_1178

def NamedBody685_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_1181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_1182 : StackLang.HolProg 64 :=
.seq NamedBody685_1180 NamedBody685_1181

def NamedBody685_1183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_1185 : StackLang.HolProg 64 :=
.seq NamedBody685_1183 NamedBody685_1184

def NamedBody685_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_1187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_1188 : StackLang.HolProg 64 :=
.seq NamedBody685_1186 NamedBody685_1187

def NamedBody685_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_1191 : StackLang.HolProg 64 :=
.seq NamedBody685_1189 NamedBody685_1190

def NamedBody685_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_1194 : StackLang.HolProg 64 :=
.seq NamedBody685_1192 NamedBody685_1193

def NamedBody685_1195 : StackLang.HolProg 64 :=
.seq NamedBody685_1191 NamedBody685_1194

def NamedBody685_1196 : StackLang.HolProg 64 :=
.seq NamedBody685_1188 NamedBody685_1195

def NamedBody685_1197 : StackLang.HolProg 64 :=
.seq NamedBody685_1185 NamedBody685_1196

def NamedBody685_1198 : StackLang.HolProg 64 :=
.seq NamedBody685_1182 NamedBody685_1197

def NamedBody685_1199 : StackLang.HolProg 64 :=
.seq NamedBody685_1179 NamedBody685_1198

def NamedBody685_1200 : StackLang.HolProg 64 :=
.seq NamedBody685_1176 NamedBody685_1199

def NamedBody685_1201 : StackLang.HolProg 64 :=
.seq NamedBody685_1175 NamedBody685_1200

def NamedBody685_1202 : StackLang.HolProg 64 :=
.seq NamedBody685_1174 NamedBody685_1201

def NamedBody685_1203 : StackLang.HolProg 64 :=
.seq NamedBody685_1173 NamedBody685_1202

def NamedBody685_1204 : StackLang.HolProg 64 :=
.seq NamedBody685_1172 NamedBody685_1203

def NamedBody685_1205 : StackLang.HolProg 64 :=
.seq NamedBody685_1171 NamedBody685_1204

def NamedBody685_1206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1209 : StackLang.HolProg 64 :=
.seq NamedBody685_1207 NamedBody685_1208

def NamedBody685_1210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_1212 : StackLang.HolProg 64 :=
.seq NamedBody685_1210 NamedBody685_1211

def NamedBody685_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_1215 : StackLang.HolProg 64 :=
.seq NamedBody685_1213 NamedBody685_1214

def NamedBody685_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_1218 : StackLang.HolProg 64 :=
.seq NamedBody685_1216 NamedBody685_1217

def NamedBody685_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_1221 : StackLang.HolProg 64 :=
.seq NamedBody685_1219 NamedBody685_1220

def NamedBody685_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_1224 : StackLang.HolProg 64 :=
.seq NamedBody685_1222 NamedBody685_1223

def NamedBody685_1225 : StackLang.HolProg 64 :=
.seq NamedBody685_1221 NamedBody685_1224

def NamedBody685_1226 : StackLang.HolProg 64 :=
.seq NamedBody685_1218 NamedBody685_1225

def NamedBody685_1227 : StackLang.HolProg 64 :=
.seq NamedBody685_1215 NamedBody685_1226

def NamedBody685_1228 : StackLang.HolProg 64 :=
.seq NamedBody685_1212 NamedBody685_1227

def NamedBody685_1229 : StackLang.HolProg 64 :=
.seq NamedBody685_1209 NamedBody685_1228

def NamedBody685_1230 : StackLang.HolProg 64 :=
.seq NamedBody685_1206 NamedBody685_1229

def NamedBody685_1231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1232 : StackLang.HolProg 64 :=
.seq NamedBody685_1230 NamedBody685_1231

def NamedBody685_1233 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1205, 1, 685, 28)) (Sum.inl 676) (some (NamedBody685_1232, 685, 29))

def NamedBody685_1234 : StackLang.HolProg 64 :=
.seq NamedBody685_1170 NamedBody685_1233

def NamedBody685_1235 : StackLang.HolProg 64 :=
.seq NamedBody685_1169 NamedBody685_1234

def NamedBody685_1236 : StackLang.HolProg 64 :=
.seq NamedBody685_1168 NamedBody685_1235

def NamedBody685_1237 : StackLang.HolProg 64 :=
.seq NamedBody685_1139 NamedBody685_1236

def NamedBody685_1238 : StackLang.HolProg 64 :=
.seq NamedBody685_1136 NamedBody685_1237

def NamedBody685_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody685_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_1245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1247 : StackLang.HolProg 64 :=
.seq NamedBody685_1245 NamedBody685_1246

def NamedBody685_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_1250 : StackLang.HolProg 64 :=
.seq NamedBody685_1248 NamedBody685_1249

def NamedBody685_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_1252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_1253 : StackLang.HolProg 64 :=
.seq NamedBody685_1251 NamedBody685_1252

def NamedBody685_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_1256 : StackLang.HolProg 64 :=
.seq NamedBody685_1254 NamedBody685_1255

def NamedBody685_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_1259 : StackLang.HolProg 64 :=
.seq NamedBody685_1257 NamedBody685_1258

def NamedBody685_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_1262 : StackLang.HolProg 64 :=
.seq NamedBody685_1260 NamedBody685_1261

def NamedBody685_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1265 : StackLang.HolProg 64 :=
.seq NamedBody685_1263 NamedBody685_1264

def NamedBody685_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_1268 : StackLang.HolProg 64 :=
.seq NamedBody685_1266 NamedBody685_1267

def NamedBody685_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1270 : StackLang.HolProg 64 :=
.seq NamedBody685_1268 NamedBody685_1269

def NamedBody685_1271 : StackLang.HolProg 64 :=
.seq NamedBody685_1265 NamedBody685_1270

def NamedBody685_1272 : StackLang.HolProg 64 :=
.seq NamedBody685_1262 NamedBody685_1271

def NamedBody685_1273 : StackLang.HolProg 64 :=
.seq NamedBody685_1259 NamedBody685_1272

def NamedBody685_1274 : StackLang.HolProg 64 :=
.seq NamedBody685_1256 NamedBody685_1273

def NamedBody685_1275 : StackLang.HolProg 64 :=
.seq NamedBody685_1253 NamedBody685_1274

def NamedBody685_1276 : StackLang.HolProg 64 :=
.seq NamedBody685_1250 NamedBody685_1275

def NamedBody685_1277 : StackLang.HolProg 64 :=
.seq NamedBody685_1247 NamedBody685_1276

def NamedBody685_1278 : StackLang.HolProg 64 :=
.seq NamedBody685_1244 NamedBody685_1277

def NamedBody685_1279 : StackLang.HolProg 64 :=
.seq NamedBody685_1243 NamedBody685_1278

def NamedBody685_1280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2901#64)

def NamedBody685_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1283 : StackLang.HolProg 64 :=
.seq NamedBody685_1281 NamedBody685_1282

def NamedBody685_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1287 : StackLang.HolProg 64 :=
.seq NamedBody685_1285 NamedBody685_1286

def NamedBody685_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1289 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1287 NamedBody685_1288

def NamedBody685_1290 : StackLang.HolProg 64 :=
.seq NamedBody685_1284 NamedBody685_1289

def NamedBody685_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 31

def NamedBody685_1294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1300 : StackLang.HolProg 64 :=
.seq NamedBody685_1298 NamedBody685_1299

def NamedBody685_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1302 : StackLang.HolProg 64 :=
.seq NamedBody685_1300 NamedBody685_1301

def NamedBody685_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1304 : StackLang.HolProg 64 :=
.seq NamedBody685_1302 NamedBody685_1303

def NamedBody685_1305 : StackLang.HolProg 64 :=
.seq NamedBody685_1297 NamedBody685_1304

def NamedBody685_1306 : StackLang.HolProg 64 :=
.seq NamedBody685_1296 NamedBody685_1305

def NamedBody685_1307 : StackLang.HolProg 64 :=
.seq NamedBody685_1295 NamedBody685_1306

def NamedBody685_1308 : StackLang.HolProg 64 :=
.seq NamedBody685_1294 NamedBody685_1307

def NamedBody685_1309 : StackLang.HolProg 64 :=
.seq NamedBody685_1293 NamedBody685_1308

def NamedBody685_1310 : StackLang.HolProg 64 :=
.seq NamedBody685_1292 NamedBody685_1309

def NamedBody685_1311 : StackLang.HolProg 64 :=
.seq NamedBody685_1291 NamedBody685_1310

def NamedBody685_1312 : StackLang.HolProg 64 :=
.seq NamedBody685_1290 NamedBody685_1311

def NamedBody685_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody685_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1323 : StackLang.HolProg 64 :=
.seq NamedBody685_1321 NamedBody685_1322

def NamedBody685_1324 : StackLang.HolProg 64 :=
.seq NamedBody685_1320 NamedBody685_1323

def NamedBody685_1325 : StackLang.HolProg 64 :=
.seq NamedBody685_1319 NamedBody685_1324

def NamedBody685_1326 : StackLang.HolProg 64 :=
.seq NamedBody685_1318 NamedBody685_1325

def NamedBody685_1327 : StackLang.HolProg 64 :=
.seq NamedBody685_1317 NamedBody685_1326

def NamedBody685_1328 : StackLang.HolProg 64 :=
.seq NamedBody685_1316 NamedBody685_1327

def NamedBody685_1329 : StackLang.HolProg 64 :=
.seq NamedBody685_1315 NamedBody685_1328

def NamedBody685_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1333 : StackLang.HolProg 64 :=
.seq NamedBody685_1331 NamedBody685_1332

def NamedBody685_1334 : StackLang.HolProg 64 :=
.seq NamedBody685_1330 NamedBody685_1333

def NamedBody685_1335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1336 : StackLang.HolProg 64 :=
.seq NamedBody685_1334 NamedBody685_1335

def NamedBody685_1337 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1329, 1, 685, 30)) (Sum.inl 676) (some (NamedBody685_1336, 685, 31))

def NamedBody685_1338 : StackLang.HolProg 64 :=
.seq NamedBody685_1314 NamedBody685_1337

def NamedBody685_1339 : StackLang.HolProg 64 :=
.seq NamedBody685_1313 NamedBody685_1338

def NamedBody685_1340 : StackLang.HolProg 64 :=
.seq NamedBody685_1312 NamedBody685_1339

def NamedBody685_1341 : StackLang.HolProg 64 :=
.seq NamedBody685_1283 NamedBody685_1340

def NamedBody685_1342 : StackLang.HolProg 64 :=
.seq NamedBody685_1280 NamedBody685_1341

def NamedBody685_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody685_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_1347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_1350 : StackLang.HolProg 64 :=
.seq NamedBody685_1348 NamedBody685_1349

def NamedBody685_1351 : StackLang.HolProg 64 :=
.seq NamedBody685_1347 NamedBody685_1350

def NamedBody685_1352 : StackLang.HolProg 64 :=
.seq NamedBody685_1346 NamedBody685_1351

def NamedBody685_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1361 : StackLang.HolProg 64 :=
.seq NamedBody685_1359 NamedBody685_1360

def NamedBody685_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1365 : StackLang.HolProg 64 :=
.seq NamedBody685_1363 NamedBody685_1364

def NamedBody685_1366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_1368 : StackLang.HolProg 64 :=
.seq NamedBody685_1366 NamedBody685_1367

def NamedBody685_1369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_1371 : StackLang.HolProg 64 :=
.seq NamedBody685_1369 NamedBody685_1370

def NamedBody685_1372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1374 : StackLang.HolProg 64 :=
.seq NamedBody685_1372 NamedBody685_1373

def NamedBody685_1375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_1377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_1378 : StackLang.HolProg 64 :=
.seq NamedBody685_1376 NamedBody685_1377

def NamedBody685_1379 : StackLang.HolProg 64 :=
.seq NamedBody685_1375 NamedBody685_1378

def NamedBody685_1380 : StackLang.HolProg 64 :=
.seq NamedBody685_1374 NamedBody685_1379

def NamedBody685_1381 : StackLang.HolProg 64 :=
.seq NamedBody685_1371 NamedBody685_1380

def NamedBody685_1382 : StackLang.HolProg 64 :=
.seq NamedBody685_1368 NamedBody685_1381

def NamedBody685_1383 : StackLang.HolProg 64 :=
.seq NamedBody685_1365 NamedBody685_1382

def NamedBody685_1384 : StackLang.HolProg 64 :=
.seq NamedBody685_1362 NamedBody685_1383

def NamedBody685_1385 : StackLang.HolProg 64 :=
.seq NamedBody685_1361 NamedBody685_1384

def NamedBody685_1386 : StackLang.HolProg 64 :=
.seq NamedBody685_1358 NamedBody685_1385

def NamedBody685_1387 : StackLang.HolProg 64 :=
.seq NamedBody685_1357 NamedBody685_1386

def NamedBody685_1388 : StackLang.HolProg 64 :=
.seq NamedBody685_1356 NamedBody685_1387

def NamedBody685_1389 : StackLang.HolProg 64 :=
.seq NamedBody685_1355 NamedBody685_1388

def NamedBody685_1390 : StackLang.HolProg 64 :=
.seq NamedBody685_1354 NamedBody685_1389

def NamedBody685_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2902#64)

def NamedBody685_1393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1394 : StackLang.HolProg 64 :=
.seq NamedBody685_1392 NamedBody685_1393

def NamedBody685_1395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1398 : StackLang.HolProg 64 :=
.seq NamedBody685_1396 NamedBody685_1397

def NamedBody685_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1400 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1398 NamedBody685_1399

def NamedBody685_1401 : StackLang.HolProg 64 :=
.seq NamedBody685_1395 NamedBody685_1400

def NamedBody685_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 41

def NamedBody685_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1411 : StackLang.HolProg 64 :=
.seq NamedBody685_1409 NamedBody685_1410

def NamedBody685_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1413 : StackLang.HolProg 64 :=
.seq NamedBody685_1411 NamedBody685_1412

def NamedBody685_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1415 : StackLang.HolProg 64 :=
.seq NamedBody685_1413 NamedBody685_1414

def NamedBody685_1416 : StackLang.HolProg 64 :=
.seq NamedBody685_1408 NamedBody685_1415

def NamedBody685_1417 : StackLang.HolProg 64 :=
.seq NamedBody685_1407 NamedBody685_1416

def NamedBody685_1418 : StackLang.HolProg 64 :=
.seq NamedBody685_1406 NamedBody685_1417

def NamedBody685_1419 : StackLang.HolProg 64 :=
.seq NamedBody685_1405 NamedBody685_1418

def NamedBody685_1420 : StackLang.HolProg 64 :=
.seq NamedBody685_1404 NamedBody685_1419

def NamedBody685_1421 : StackLang.HolProg 64 :=
.seq NamedBody685_1403 NamedBody685_1420

def NamedBody685_1422 : StackLang.HolProg 64 :=
.seq NamedBody685_1402 NamedBody685_1421

def NamedBody685_1423 : StackLang.HolProg 64 :=
.seq NamedBody685_1401 NamedBody685_1422

def NamedBody685_1424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1434 : StackLang.HolProg 64 :=
.seq NamedBody685_1432 NamedBody685_1433

def NamedBody685_1435 : StackLang.HolProg 64 :=
.seq NamedBody685_1431 NamedBody685_1434

def NamedBody685_1436 : StackLang.HolProg 64 :=
.seq NamedBody685_1430 NamedBody685_1435

def NamedBody685_1437 : StackLang.HolProg 64 :=
.seq NamedBody685_1429 NamedBody685_1436

def NamedBody685_1438 : StackLang.HolProg 64 :=
.seq NamedBody685_1428 NamedBody685_1437

def NamedBody685_1439 : StackLang.HolProg 64 :=
.seq NamedBody685_1427 NamedBody685_1438

def NamedBody685_1440 : StackLang.HolProg 64 :=
.seq NamedBody685_1426 NamedBody685_1439

def NamedBody685_1441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_1442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1445 : StackLang.HolProg 64 :=
.seq NamedBody685_1443 NamedBody685_1444

def NamedBody685_1446 : StackLang.HolProg 64 :=
.seq NamedBody685_1442 NamedBody685_1445

def NamedBody685_1447 : StackLang.HolProg 64 :=
.seq NamedBody685_1441 NamedBody685_1446

def NamedBody685_1448 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1449 : StackLang.HolProg 64 :=
.seq NamedBody685_1447 NamedBody685_1448

def NamedBody685_1450 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1440, 1, 685, 40)) (Sum.inl 670) (some (NamedBody685_1449, 685, 41))

def NamedBody685_1451 : StackLang.HolProg 64 :=
.seq NamedBody685_1425 NamedBody685_1450

def NamedBody685_1452 : StackLang.HolProg 64 :=
.seq NamedBody685_1424 NamedBody685_1451

def NamedBody685_1453 : StackLang.HolProg 64 :=
.seq NamedBody685_1423 NamedBody685_1452

def NamedBody685_1454 : StackLang.HolProg 64 :=
.seq NamedBody685_1394 NamedBody685_1453

def NamedBody685_1455 : StackLang.HolProg 64 :=
.seq NamedBody685_1391 NamedBody685_1454

def NamedBody685_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_1461 : StackLang.HolProg 64 :=
.seq NamedBody685_1459 NamedBody685_1460

def NamedBody685_1462 : StackLang.HolProg 64 :=
.seq NamedBody685_1458 NamedBody685_1461

def NamedBody685_1463 : StackLang.HolProg 64 :=
.seq NamedBody685_1457 NamedBody685_1462

def NamedBody685_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2903#64)

def NamedBody685_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1467 : StackLang.HolProg 64 :=
.seq NamedBody685_1465 NamedBody685_1466

def NamedBody685_1468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1471 : StackLang.HolProg 64 :=
.seq NamedBody685_1469 NamedBody685_1470

def NamedBody685_1472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1473 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1471 NamedBody685_1472

def NamedBody685_1474 : StackLang.HolProg 64 :=
.seq NamedBody685_1468 NamedBody685_1473

def NamedBody685_1475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 43

def NamedBody685_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1484 : StackLang.HolProg 64 :=
.seq NamedBody685_1482 NamedBody685_1483

def NamedBody685_1485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1486 : StackLang.HolProg 64 :=
.seq NamedBody685_1484 NamedBody685_1485

def NamedBody685_1487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1488 : StackLang.HolProg 64 :=
.seq NamedBody685_1486 NamedBody685_1487

def NamedBody685_1489 : StackLang.HolProg 64 :=
.seq NamedBody685_1481 NamedBody685_1488

def NamedBody685_1490 : StackLang.HolProg 64 :=
.seq NamedBody685_1480 NamedBody685_1489

def NamedBody685_1491 : StackLang.HolProg 64 :=
.seq NamedBody685_1479 NamedBody685_1490

def NamedBody685_1492 : StackLang.HolProg 64 :=
.seq NamedBody685_1478 NamedBody685_1491

def NamedBody685_1493 : StackLang.HolProg 64 :=
.seq NamedBody685_1477 NamedBody685_1492

def NamedBody685_1494 : StackLang.HolProg 64 :=
.seq NamedBody685_1476 NamedBody685_1493

def NamedBody685_1495 : StackLang.HolProg 64 :=
.seq NamedBody685_1475 NamedBody685_1494

def NamedBody685_1496 : StackLang.HolProg 64 :=
.seq NamedBody685_1474 NamedBody685_1495

def NamedBody685_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1506 : StackLang.HolProg 64 :=
.seq NamedBody685_1504 NamedBody685_1505

def NamedBody685_1507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_1509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_1510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1511 : StackLang.HolProg 64 :=
.seq NamedBody685_1509 NamedBody685_1510

def NamedBody685_1512 : StackLang.HolProg 64 :=
.seq NamedBody685_1508 NamedBody685_1511

def NamedBody685_1513 : StackLang.HolProg 64 :=
.seq NamedBody685_1507 NamedBody685_1512

def NamedBody685_1514 : StackLang.HolProg 64 :=
.seq NamedBody685_1506 NamedBody685_1513

def NamedBody685_1515 : StackLang.HolProg 64 :=
.seq NamedBody685_1503 NamedBody685_1514

def NamedBody685_1516 : StackLang.HolProg 64 :=
.seq NamedBody685_1502 NamedBody685_1515

def NamedBody685_1517 : StackLang.HolProg 64 :=
.seq NamedBody685_1501 NamedBody685_1516

def NamedBody685_1518 : StackLang.HolProg 64 :=
.seq NamedBody685_1500 NamedBody685_1517

def NamedBody685_1519 : StackLang.HolProg 64 :=
.seq NamedBody685_1499 NamedBody685_1518

def NamedBody685_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1523 : StackLang.HolProg 64 :=
.seq NamedBody685_1521 NamedBody685_1522

def NamedBody685_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_1527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1528 : StackLang.HolProg 64 :=
.seq NamedBody685_1526 NamedBody685_1527

def NamedBody685_1529 : StackLang.HolProg 64 :=
.seq NamedBody685_1525 NamedBody685_1528

def NamedBody685_1530 : StackLang.HolProg 64 :=
.seq NamedBody685_1524 NamedBody685_1529

def NamedBody685_1531 : StackLang.HolProg 64 :=
.seq NamedBody685_1523 NamedBody685_1530

def NamedBody685_1532 : StackLang.HolProg 64 :=
.seq NamedBody685_1520 NamedBody685_1531

def NamedBody685_1533 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1534 : StackLang.HolProg 64 :=
.seq NamedBody685_1532 NamedBody685_1533

def NamedBody685_1535 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1519, 1, 685, 42)) (Sum.inl 670) (some (NamedBody685_1534, 685, 43))

def NamedBody685_1536 : StackLang.HolProg 64 :=
.seq NamedBody685_1498 NamedBody685_1535

def NamedBody685_1537 : StackLang.HolProg 64 :=
.seq NamedBody685_1497 NamedBody685_1536

def NamedBody685_1538 : StackLang.HolProg 64 :=
.seq NamedBody685_1496 NamedBody685_1537

def NamedBody685_1539 : StackLang.HolProg 64 :=
.seq NamedBody685_1467 NamedBody685_1538

def NamedBody685_1540 : StackLang.HolProg 64 :=
.seq NamedBody685_1464 NamedBody685_1539

def NamedBody685_1541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody685_1544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1545 : StackLang.HolProg 64 :=
.seq NamedBody685_1543 NamedBody685_1544

def NamedBody685_1546 : StackLang.HolProg 64 :=
.seq NamedBody685_1542 NamedBody685_1545

def NamedBody685_1547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2904#64)

def NamedBody685_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1550 : StackLang.HolProg 64 :=
.seq NamedBody685_1548 NamedBody685_1549

def NamedBody685_1551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1554 : StackLang.HolProg 64 :=
.seq NamedBody685_1552 NamedBody685_1553

def NamedBody685_1555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1556 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1554 NamedBody685_1555

def NamedBody685_1557 : StackLang.HolProg 64 :=
.seq NamedBody685_1551 NamedBody685_1556

def NamedBody685_1558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 45

def NamedBody685_1561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1567 : StackLang.HolProg 64 :=
.seq NamedBody685_1565 NamedBody685_1566

def NamedBody685_1568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1569 : StackLang.HolProg 64 :=
.seq NamedBody685_1567 NamedBody685_1568

def NamedBody685_1570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1571 : StackLang.HolProg 64 :=
.seq NamedBody685_1569 NamedBody685_1570

def NamedBody685_1572 : StackLang.HolProg 64 :=
.seq NamedBody685_1564 NamedBody685_1571

def NamedBody685_1573 : StackLang.HolProg 64 :=
.seq NamedBody685_1563 NamedBody685_1572

def NamedBody685_1574 : StackLang.HolProg 64 :=
.seq NamedBody685_1562 NamedBody685_1573

def NamedBody685_1575 : StackLang.HolProg 64 :=
.seq NamedBody685_1561 NamedBody685_1574

def NamedBody685_1576 : StackLang.HolProg 64 :=
.seq NamedBody685_1560 NamedBody685_1575

def NamedBody685_1577 : StackLang.HolProg 64 :=
.seq NamedBody685_1559 NamedBody685_1576

def NamedBody685_1578 : StackLang.HolProg 64 :=
.seq NamedBody685_1558 NamedBody685_1577

def NamedBody685_1579 : StackLang.HolProg 64 :=
.seq NamedBody685_1557 NamedBody685_1578

def NamedBody685_1580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_1587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1590 : StackLang.HolProg 64 :=
.seq NamedBody685_1588 NamedBody685_1589

def NamedBody685_1591 : StackLang.HolProg 64 :=
.seq NamedBody685_1587 NamedBody685_1590

def NamedBody685_1592 : StackLang.HolProg 64 :=
.seq NamedBody685_1586 NamedBody685_1591

def NamedBody685_1593 : StackLang.HolProg 64 :=
.seq NamedBody685_1585 NamedBody685_1592

def NamedBody685_1594 : StackLang.HolProg 64 :=
.seq NamedBody685_1584 NamedBody685_1593

def NamedBody685_1595 : StackLang.HolProg 64 :=
.seq NamedBody685_1583 NamedBody685_1594

def NamedBody685_1596 : StackLang.HolProg 64 :=
.seq NamedBody685_1582 NamedBody685_1595

def NamedBody685_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_1598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_1600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_1601 : StackLang.HolProg 64 :=
.seq NamedBody685_1599 NamedBody685_1600

def NamedBody685_1602 : StackLang.HolProg 64 :=
.seq NamedBody685_1598 NamedBody685_1601

def NamedBody685_1603 : StackLang.HolProg 64 :=
.seq NamedBody685_1597 NamedBody685_1602

def NamedBody685_1604 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1605 : StackLang.HolProg 64 :=
.seq NamedBody685_1603 NamedBody685_1604

def NamedBody685_1606 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1596, 1, 685, 44)) (Sum.inl 673) (some (NamedBody685_1605, 685, 45))

def NamedBody685_1607 : StackLang.HolProg 64 :=
.seq NamedBody685_1581 NamedBody685_1606

def NamedBody685_1608 : StackLang.HolProg 64 :=
.seq NamedBody685_1580 NamedBody685_1607

def NamedBody685_1609 : StackLang.HolProg 64 :=
.seq NamedBody685_1579 NamedBody685_1608

def NamedBody685_1610 : StackLang.HolProg 64 :=
.seq NamedBody685_1550 NamedBody685_1609

def NamedBody685_1611 : StackLang.HolProg 64 :=
.seq NamedBody685_1547 NamedBody685_1610

def NamedBody685_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2905#64)

def NamedBody685_1616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1617 : StackLang.HolProg 64 :=
.seq NamedBody685_1615 NamedBody685_1616

def NamedBody685_1618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1621 : StackLang.HolProg 64 :=
.seq NamedBody685_1619 NamedBody685_1620

def NamedBody685_1622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1623 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1621 NamedBody685_1622

def NamedBody685_1624 : StackLang.HolProg 64 :=
.seq NamedBody685_1618 NamedBody685_1623

def NamedBody685_1625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 47

def NamedBody685_1628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1634 : StackLang.HolProg 64 :=
.seq NamedBody685_1632 NamedBody685_1633

def NamedBody685_1635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1636 : StackLang.HolProg 64 :=
.seq NamedBody685_1634 NamedBody685_1635

def NamedBody685_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1638 : StackLang.HolProg 64 :=
.seq NamedBody685_1636 NamedBody685_1637

def NamedBody685_1639 : StackLang.HolProg 64 :=
.seq NamedBody685_1631 NamedBody685_1638

def NamedBody685_1640 : StackLang.HolProg 64 :=
.seq NamedBody685_1630 NamedBody685_1639

def NamedBody685_1641 : StackLang.HolProg 64 :=
.seq NamedBody685_1629 NamedBody685_1640

def NamedBody685_1642 : StackLang.HolProg 64 :=
.seq NamedBody685_1628 NamedBody685_1641

def NamedBody685_1643 : StackLang.HolProg 64 :=
.seq NamedBody685_1627 NamedBody685_1642

def NamedBody685_1644 : StackLang.HolProg 64 :=
.seq NamedBody685_1626 NamedBody685_1643

def NamedBody685_1645 : StackLang.HolProg 64 :=
.seq NamedBody685_1625 NamedBody685_1644

def NamedBody685_1646 : StackLang.HolProg 64 :=
.seq NamedBody685_1624 NamedBody685_1645

def NamedBody685_1647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_1654 : StackLang.HolProg 64 :=
.seq NamedBody685_1652 NamedBody685_1653

def NamedBody685_1655 : StackLang.HolProg 64 :=
.seq NamedBody685_1651 NamedBody685_1654

def NamedBody685_1656 : StackLang.HolProg 64 :=
.seq NamedBody685_1650 NamedBody685_1655

def NamedBody685_1657 : StackLang.HolProg 64 :=
.seq NamedBody685_1649 NamedBody685_1656

def NamedBody685_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_1659 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1660 : StackLang.HolProg 64 :=
.seq NamedBody685_1658 NamedBody685_1659

def NamedBody685_1661 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1657, 1, 685, 46)) (Sum.inl 670) (some (NamedBody685_1660, 685, 47))

def NamedBody685_1662 : StackLang.HolProg 64 :=
.seq NamedBody685_1648 NamedBody685_1661

def NamedBody685_1663 : StackLang.HolProg 64 :=
.seq NamedBody685_1647 NamedBody685_1662

def NamedBody685_1664 : StackLang.HolProg 64 :=
.seq NamedBody685_1646 NamedBody685_1663

def NamedBody685_1665 : StackLang.HolProg 64 :=
.seq NamedBody685_1617 NamedBody685_1664

def NamedBody685_1666 : StackLang.HolProg 64 :=
.seq NamedBody685_1614 NamedBody685_1665

def NamedBody685_1667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2906#64)

def NamedBody685_1671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1672 : StackLang.HolProg 64 :=
.seq NamedBody685_1670 NamedBody685_1671

def NamedBody685_1673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1676 : StackLang.HolProg 64 :=
.seq NamedBody685_1674 NamedBody685_1675

def NamedBody685_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1678 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1676 NamedBody685_1677

def NamedBody685_1679 : StackLang.HolProg 64 :=
.seq NamedBody685_1673 NamedBody685_1678

def NamedBody685_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 49

def NamedBody685_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1689 : StackLang.HolProg 64 :=
.seq NamedBody685_1687 NamedBody685_1688

def NamedBody685_1690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1691 : StackLang.HolProg 64 :=
.seq NamedBody685_1689 NamedBody685_1690

def NamedBody685_1692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1693 : StackLang.HolProg 64 :=
.seq NamedBody685_1691 NamedBody685_1692

def NamedBody685_1694 : StackLang.HolProg 64 :=
.seq NamedBody685_1686 NamedBody685_1693

def NamedBody685_1695 : StackLang.HolProg 64 :=
.seq NamedBody685_1685 NamedBody685_1694

def NamedBody685_1696 : StackLang.HolProg 64 :=
.seq NamedBody685_1684 NamedBody685_1695

def NamedBody685_1697 : StackLang.HolProg 64 :=
.seq NamedBody685_1683 NamedBody685_1696

def NamedBody685_1698 : StackLang.HolProg 64 :=
.seq NamedBody685_1682 NamedBody685_1697

def NamedBody685_1699 : StackLang.HolProg 64 :=
.seq NamedBody685_1681 NamedBody685_1698

def NamedBody685_1700 : StackLang.HolProg 64 :=
.seq NamedBody685_1680 NamedBody685_1699

def NamedBody685_1701 : StackLang.HolProg 64 :=
.seq NamedBody685_1679 NamedBody685_1700

def NamedBody685_1702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1709 : StackLang.HolProg 64 :=
.seq NamedBody685_1707 NamedBody685_1708

def NamedBody685_1710 : StackLang.HolProg 64 :=
.seq NamedBody685_1706 NamedBody685_1709

def NamedBody685_1711 : StackLang.HolProg 64 :=
.seq NamedBody685_1705 NamedBody685_1710

def NamedBody685_1712 : StackLang.HolProg 64 :=
.seq NamedBody685_1704 NamedBody685_1711

def NamedBody685_1713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1714 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1715 : StackLang.HolProg 64 :=
.seq NamedBody685_1713 NamedBody685_1714

def NamedBody685_1716 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1712, 1, 685, 48)) (Sum.inl 70) (some (NamedBody685_1715, 685, 49))

def NamedBody685_1717 : StackLang.HolProg 64 :=
.seq NamedBody685_1703 NamedBody685_1716

def NamedBody685_1718 : StackLang.HolProg 64 :=
.seq NamedBody685_1702 NamedBody685_1717

def NamedBody685_1719 : StackLang.HolProg 64 :=
.seq NamedBody685_1701 NamedBody685_1718

def NamedBody685_1720 : StackLang.HolProg 64 :=
.seq NamedBody685_1672 NamedBody685_1719

def NamedBody685_1721 : StackLang.HolProg 64 :=
.seq NamedBody685_1669 NamedBody685_1720

def NamedBody685_1722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody685_1724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody685_1726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody685_1727 : StackLang.HolProg 64 :=
.seq NamedBody685_1725 NamedBody685_1726

def NamedBody685_1728 : StackLang.HolProg 64 :=
.seq NamedBody685_1724 NamedBody685_1727

def NamedBody685_1729 : StackLang.HolProg 64 :=
.seq NamedBody685_1723 NamedBody685_1728

def NamedBody685_1730 : StackLang.HolProg 64 :=
.seq NamedBody685_1722 NamedBody685_1729

def NamedBody685_1731 : StackLang.HolProg 64 :=
.seq NamedBody685_1721 NamedBody685_1730

def NamedBody685_1732 : StackLang.HolProg 64 :=
.seq NamedBody685_1668 NamedBody685_1731

def NamedBody685_1733 : StackLang.HolProg 64 :=
.seq NamedBody685_1667 NamedBody685_1732

def NamedBody685_1734 : StackLang.HolProg 64 :=
.seq NamedBody685_1666 NamedBody685_1733

def NamedBody685_1735 : StackLang.HolProg 64 :=
.seq NamedBody685_1613 NamedBody685_1734

def NamedBody685_1736 : StackLang.HolProg 64 :=
.seq NamedBody685_1612 NamedBody685_1735

def NamedBody685_1737 : StackLang.HolProg 64 :=
.seq NamedBody685_1611 NamedBody685_1736

def NamedBody685_1738 : StackLang.HolProg 64 :=
.seq NamedBody685_1546 NamedBody685_1737

def NamedBody685_1739 : StackLang.HolProg 64 :=
.seq NamedBody685_1541 NamedBody685_1738

def NamedBody685_1740 : StackLang.HolProg 64 :=
.seq NamedBody685_1540 NamedBody685_1739

def NamedBody685_1741 : StackLang.HolProg 64 :=
.seq NamedBody685_1463 NamedBody685_1740

def NamedBody685_1742 : StackLang.HolProg 64 :=
.seq NamedBody685_1456 NamedBody685_1741

def NamedBody685_1743 : StackLang.HolProg 64 :=
.seq NamedBody685_1455 NamedBody685_1742

def NamedBody685_1744 : StackLang.HolProg 64 :=
.seq NamedBody685_1390 NamedBody685_1743

def NamedBody685_1745 : StackLang.HolProg 64 :=
.seq NamedBody685_1353 NamedBody685_1744

def NamedBody685_1746 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody685_1352 NamedBody685_1745

def NamedBody685_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_1752 : StackLang.HolProg 64 :=
.seq NamedBody685_1750 NamedBody685_1751

def NamedBody685_1753 : StackLang.HolProg 64 :=
.seq NamedBody685_1749 NamedBody685_1752

def NamedBody685_1754 : StackLang.HolProg 64 :=
.seq NamedBody685_1748 NamedBody685_1753

def NamedBody685_1755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2907#64)

def NamedBody685_1757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1758 : StackLang.HolProg 64 :=
.seq NamedBody685_1756 NamedBody685_1757

def NamedBody685_1759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1762 : StackLang.HolProg 64 :=
.seq NamedBody685_1760 NamedBody685_1761

def NamedBody685_1763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1764 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1762 NamedBody685_1763

def NamedBody685_1765 : StackLang.HolProg 64 :=
.seq NamedBody685_1759 NamedBody685_1764

def NamedBody685_1766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 33

def NamedBody685_1769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1775 : StackLang.HolProg 64 :=
.seq NamedBody685_1773 NamedBody685_1774

def NamedBody685_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1777 : StackLang.HolProg 64 :=
.seq NamedBody685_1775 NamedBody685_1776

def NamedBody685_1778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1779 : StackLang.HolProg 64 :=
.seq NamedBody685_1777 NamedBody685_1778

def NamedBody685_1780 : StackLang.HolProg 64 :=
.seq NamedBody685_1772 NamedBody685_1779

def NamedBody685_1781 : StackLang.HolProg 64 :=
.seq NamedBody685_1771 NamedBody685_1780

def NamedBody685_1782 : StackLang.HolProg 64 :=
.seq NamedBody685_1770 NamedBody685_1781

def NamedBody685_1783 : StackLang.HolProg 64 :=
.seq NamedBody685_1769 NamedBody685_1782

def NamedBody685_1784 : StackLang.HolProg 64 :=
.seq NamedBody685_1768 NamedBody685_1783

def NamedBody685_1785 : StackLang.HolProg 64 :=
.seq NamedBody685_1767 NamedBody685_1784

def NamedBody685_1786 : StackLang.HolProg 64 :=
.seq NamedBody685_1766 NamedBody685_1785

def NamedBody685_1787 : StackLang.HolProg 64 :=
.seq NamedBody685_1765 NamedBody685_1786

def NamedBody685_1788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_1797 : StackLang.HolProg 64 :=
.seq NamedBody685_1795 NamedBody685_1796

def NamedBody685_1798 : StackLang.HolProg 64 :=
.seq NamedBody685_1794 NamedBody685_1797

def NamedBody685_1799 : StackLang.HolProg 64 :=
.seq NamedBody685_1793 NamedBody685_1798

def NamedBody685_1800 : StackLang.HolProg 64 :=
.seq NamedBody685_1792 NamedBody685_1799

def NamedBody685_1801 : StackLang.HolProg 64 :=
.seq NamedBody685_1791 NamedBody685_1800

def NamedBody685_1802 : StackLang.HolProg 64 :=
.seq NamedBody685_1790 NamedBody685_1801

def NamedBody685_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_1806 : StackLang.HolProg 64 :=
.seq NamedBody685_1804 NamedBody685_1805

def NamedBody685_1807 : StackLang.HolProg 64 :=
.seq NamedBody685_1803 NamedBody685_1806

def NamedBody685_1808 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1809 : StackLang.HolProg 64 :=
.seq NamedBody685_1807 NamedBody685_1808

def NamedBody685_1810 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1802, 1, 685, 32)) (Sum.inl 671) (some (NamedBody685_1809, 685, 33))

def NamedBody685_1811 : StackLang.HolProg 64 :=
.seq NamedBody685_1789 NamedBody685_1810

def NamedBody685_1812 : StackLang.HolProg 64 :=
.seq NamedBody685_1788 NamedBody685_1811

def NamedBody685_1813 : StackLang.HolProg 64 :=
.seq NamedBody685_1787 NamedBody685_1812

def NamedBody685_1814 : StackLang.HolProg 64 :=
.seq NamedBody685_1758 NamedBody685_1813

def NamedBody685_1815 : StackLang.HolProg 64 :=
.seq NamedBody685_1755 NamedBody685_1814

def NamedBody685_1816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 3#64)

def NamedBody685_1819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_1822 : StackLang.HolProg 64 :=
.seq NamedBody685_1820 NamedBody685_1821

def NamedBody685_1823 : StackLang.HolProg 64 :=
.seq NamedBody685_1819 NamedBody685_1822

def NamedBody685_1824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2908#64)

def NamedBody685_1826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1827 : StackLang.HolProg 64 :=
.seq NamedBody685_1825 NamedBody685_1826

def NamedBody685_1828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1831 : StackLang.HolProg 64 :=
.seq NamedBody685_1829 NamedBody685_1830

def NamedBody685_1832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1833 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1831 NamedBody685_1832

def NamedBody685_1834 : StackLang.HolProg 64 :=
.seq NamedBody685_1828 NamedBody685_1833

def NamedBody685_1835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 35

def NamedBody685_1838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1844 : StackLang.HolProg 64 :=
.seq NamedBody685_1842 NamedBody685_1843

def NamedBody685_1845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1846 : StackLang.HolProg 64 :=
.seq NamedBody685_1844 NamedBody685_1845

def NamedBody685_1847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1848 : StackLang.HolProg 64 :=
.seq NamedBody685_1846 NamedBody685_1847

def NamedBody685_1849 : StackLang.HolProg 64 :=
.seq NamedBody685_1841 NamedBody685_1848

def NamedBody685_1850 : StackLang.HolProg 64 :=
.seq NamedBody685_1840 NamedBody685_1849

def NamedBody685_1851 : StackLang.HolProg 64 :=
.seq NamedBody685_1839 NamedBody685_1850

def NamedBody685_1852 : StackLang.HolProg 64 :=
.seq NamedBody685_1838 NamedBody685_1851

def NamedBody685_1853 : StackLang.HolProg 64 :=
.seq NamedBody685_1837 NamedBody685_1852

def NamedBody685_1854 : StackLang.HolProg 64 :=
.seq NamedBody685_1836 NamedBody685_1853

def NamedBody685_1855 : StackLang.HolProg 64 :=
.seq NamedBody685_1835 NamedBody685_1854

def NamedBody685_1856 : StackLang.HolProg 64 :=
.seq NamedBody685_1834 NamedBody685_1855

def NamedBody685_1857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_1865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1867 : StackLang.HolProg 64 :=
.seq NamedBody685_1865 NamedBody685_1866

def NamedBody685_1868 : StackLang.HolProg 64 :=
.seq NamedBody685_1864 NamedBody685_1867

def NamedBody685_1869 : StackLang.HolProg 64 :=
.seq NamedBody685_1863 NamedBody685_1868

def NamedBody685_1870 : StackLang.HolProg 64 :=
.seq NamedBody685_1862 NamedBody685_1869

def NamedBody685_1871 : StackLang.HolProg 64 :=
.seq NamedBody685_1861 NamedBody685_1870

def NamedBody685_1872 : StackLang.HolProg 64 :=
.seq NamedBody685_1860 NamedBody685_1871

def NamedBody685_1873 : StackLang.HolProg 64 :=
.seq NamedBody685_1859 NamedBody685_1872

def NamedBody685_1874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_1876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1878 : StackLang.HolProg 64 :=
.seq NamedBody685_1876 NamedBody685_1877

def NamedBody685_1879 : StackLang.HolProg 64 :=
.seq NamedBody685_1875 NamedBody685_1878

def NamedBody685_1880 : StackLang.HolProg 64 :=
.seq NamedBody685_1874 NamedBody685_1879

def NamedBody685_1881 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1882 : StackLang.HolProg 64 :=
.seq NamedBody685_1880 NamedBody685_1881

def NamedBody685_1883 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1873, 1, 685, 34)) (Sum.inl 675) (some (NamedBody685_1882, 685, 35))

def NamedBody685_1884 : StackLang.HolProg 64 :=
.seq NamedBody685_1858 NamedBody685_1883

def NamedBody685_1885 : StackLang.HolProg 64 :=
.seq NamedBody685_1857 NamedBody685_1884

def NamedBody685_1886 : StackLang.HolProg 64 :=
.seq NamedBody685_1856 NamedBody685_1885

def NamedBody685_1887 : StackLang.HolProg 64 :=
.seq NamedBody685_1827 NamedBody685_1886

def NamedBody685_1888 : StackLang.HolProg 64 :=
.seq NamedBody685_1824 NamedBody685_1887

def NamedBody685_1889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_1892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_1893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1895 : StackLang.HolProg 64 :=
.seq NamedBody685_1893 NamedBody685_1894

def NamedBody685_1896 : StackLang.HolProg 64 :=
.seq NamedBody685_1892 NamedBody685_1895

def NamedBody685_1897 : StackLang.HolProg 64 :=
.seq NamedBody685_1891 NamedBody685_1896

def NamedBody685_1898 : StackLang.HolProg 64 :=
.seq NamedBody685_1890 NamedBody685_1897

def NamedBody685_1899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2909#64)

def NamedBody685_1901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1902 : StackLang.HolProg 64 :=
.seq NamedBody685_1900 NamedBody685_1901

def NamedBody685_1903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1906 : StackLang.HolProg 64 :=
.seq NamedBody685_1904 NamedBody685_1905

def NamedBody685_1907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1908 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1906 NamedBody685_1907

def NamedBody685_1909 : StackLang.HolProg 64 :=
.seq NamedBody685_1903 NamedBody685_1908

def NamedBody685_1910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 37

def NamedBody685_1913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1919 : StackLang.HolProg 64 :=
.seq NamedBody685_1917 NamedBody685_1918

def NamedBody685_1920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1921 : StackLang.HolProg 64 :=
.seq NamedBody685_1919 NamedBody685_1920

def NamedBody685_1922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1923 : StackLang.HolProg 64 :=
.seq NamedBody685_1921 NamedBody685_1922

def NamedBody685_1924 : StackLang.HolProg 64 :=
.seq NamedBody685_1916 NamedBody685_1923

def NamedBody685_1925 : StackLang.HolProg 64 :=
.seq NamedBody685_1915 NamedBody685_1924

def NamedBody685_1926 : StackLang.HolProg 64 :=
.seq NamedBody685_1914 NamedBody685_1925

def NamedBody685_1927 : StackLang.HolProg 64 :=
.seq NamedBody685_1913 NamedBody685_1926

def NamedBody685_1928 : StackLang.HolProg 64 :=
.seq NamedBody685_1912 NamedBody685_1927

def NamedBody685_1929 : StackLang.HolProg 64 :=
.seq NamedBody685_1911 NamedBody685_1928

def NamedBody685_1930 : StackLang.HolProg 64 :=
.seq NamedBody685_1910 NamedBody685_1929

def NamedBody685_1931 : StackLang.HolProg 64 :=
.seq NamedBody685_1909 NamedBody685_1930

def NamedBody685_1932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1940 : StackLang.HolProg 64 :=
.seq NamedBody685_1938 NamedBody685_1939

def NamedBody685_1941 : StackLang.HolProg 64 :=
.seq NamedBody685_1937 NamedBody685_1940

def NamedBody685_1942 : StackLang.HolProg 64 :=
.seq NamedBody685_1936 NamedBody685_1941

def NamedBody685_1943 : StackLang.HolProg 64 :=
.seq NamedBody685_1935 NamedBody685_1942

def NamedBody685_1944 : StackLang.HolProg 64 :=
.seq NamedBody685_1934 NamedBody685_1943

def NamedBody685_1945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1947 : StackLang.HolProg 64 :=
.seq NamedBody685_1945 NamedBody685_1946

def NamedBody685_1948 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_1949 : StackLang.HolProg 64 :=
.seq NamedBody685_1947 NamedBody685_1948

def NamedBody685_1950 : StackLang.HolProg 64 :=
.call (some (NamedBody685_1944, 1, 685, 36)) (Sum.inl 670) (some (NamedBody685_1949, 685, 37))

def NamedBody685_1951 : StackLang.HolProg 64 :=
.seq NamedBody685_1933 NamedBody685_1950

def NamedBody685_1952 : StackLang.HolProg 64 :=
.seq NamedBody685_1932 NamedBody685_1951

def NamedBody685_1953 : StackLang.HolProg 64 :=
.seq NamedBody685_1931 NamedBody685_1952

def NamedBody685_1954 : StackLang.HolProg 64 :=
.seq NamedBody685_1902 NamedBody685_1953

def NamedBody685_1955 : StackLang.HolProg 64 :=
.seq NamedBody685_1899 NamedBody685_1954

def NamedBody685_1956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_1957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_1958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 2#64)

def NamedBody685_1959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody685_1960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_1961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_1962 : StackLang.HolProg 64 :=
.seq NamedBody685_1960 NamedBody685_1961

def NamedBody685_1963 : StackLang.HolProg 64 :=
.seq NamedBody685_1959 NamedBody685_1962

def NamedBody685_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2910#64)

def NamedBody685_1966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1967 : StackLang.HolProg 64 :=
.seq NamedBody685_1965 NamedBody685_1966

def NamedBody685_1968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_1969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_1970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_1971 : StackLang.HolProg 64 :=
.seq NamedBody685_1969 NamedBody685_1970

def NamedBody685_1972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1973 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_1971 NamedBody685_1972

def NamedBody685_1974 : StackLang.HolProg 64 :=
.seq NamedBody685_1968 NamedBody685_1973

def NamedBody685_1975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_1977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 39

def NamedBody685_1978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_1979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_1981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_1983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_1984 : StackLang.HolProg 64 :=
.seq NamedBody685_1982 NamedBody685_1983

def NamedBody685_1985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_1986 : StackLang.HolProg 64 :=
.seq NamedBody685_1984 NamedBody685_1985

def NamedBody685_1987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_1988 : StackLang.HolProg 64 :=
.seq NamedBody685_1986 NamedBody685_1987

def NamedBody685_1989 : StackLang.HolProg 64 :=
.seq NamedBody685_1981 NamedBody685_1988

def NamedBody685_1990 : StackLang.HolProg 64 :=
.seq NamedBody685_1980 NamedBody685_1989

def NamedBody685_1991 : StackLang.HolProg 64 :=
.seq NamedBody685_1979 NamedBody685_1990

def NamedBody685_1992 : StackLang.HolProg 64 :=
.seq NamedBody685_1978 NamedBody685_1991

def NamedBody685_1993 : StackLang.HolProg 64 :=
.seq NamedBody685_1977 NamedBody685_1992

def NamedBody685_1994 : StackLang.HolProg 64 :=
.seq NamedBody685_1976 NamedBody685_1993

def NamedBody685_1995 : StackLang.HolProg 64 :=
.seq NamedBody685_1975 NamedBody685_1994

def NamedBody685_1996 : StackLang.HolProg 64 :=
.seq NamedBody685_1974 NamedBody685_1995

def NamedBody685_1997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_1999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_2004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2007 : StackLang.HolProg 64 :=
.seq NamedBody685_2005 NamedBody685_2006

def NamedBody685_2008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2010 : StackLang.HolProg 64 :=
.seq NamedBody685_2008 NamedBody685_2009

def NamedBody685_2011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2014 : StackLang.HolProg 64 :=
.seq NamedBody685_2012 NamedBody685_2013

def NamedBody685_2015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2018 : StackLang.HolProg 64 :=
.seq NamedBody685_2016 NamedBody685_2017

def NamedBody685_2019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2021 : StackLang.HolProg 64 :=
.seq NamedBody685_2019 NamedBody685_2020

def NamedBody685_2022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2024 : StackLang.HolProg 64 :=
.seq NamedBody685_2022 NamedBody685_2023

def NamedBody685_2025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2027 : StackLang.HolProg 64 :=
.seq NamedBody685_2025 NamedBody685_2026

def NamedBody685_2028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_2029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2030 : StackLang.HolProg 64 :=
.seq NamedBody685_2028 NamedBody685_2029

def NamedBody685_2031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_2032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_2033 : StackLang.HolProg 64 :=
.seq NamedBody685_2031 NamedBody685_2032

def NamedBody685_2034 : StackLang.HolProg 64 :=
.seq NamedBody685_2030 NamedBody685_2033

def NamedBody685_2035 : StackLang.HolProg 64 :=
.seq NamedBody685_2027 NamedBody685_2034

def NamedBody685_2036 : StackLang.HolProg 64 :=
.seq NamedBody685_2024 NamedBody685_2035

def NamedBody685_2037 : StackLang.HolProg 64 :=
.seq NamedBody685_2021 NamedBody685_2036

def NamedBody685_2038 : StackLang.HolProg 64 :=
.seq NamedBody685_2018 NamedBody685_2037

def NamedBody685_2039 : StackLang.HolProg 64 :=
.seq NamedBody685_2015 NamedBody685_2038

def NamedBody685_2040 : StackLang.HolProg 64 :=
.seq NamedBody685_2014 NamedBody685_2039

def NamedBody685_2041 : StackLang.HolProg 64 :=
.seq NamedBody685_2011 NamedBody685_2040

def NamedBody685_2042 : StackLang.HolProg 64 :=
.seq NamedBody685_2010 NamedBody685_2041

def NamedBody685_2043 : StackLang.HolProg 64 :=
.seq NamedBody685_2007 NamedBody685_2042

def NamedBody685_2044 : StackLang.HolProg 64 :=
.seq NamedBody685_2004 NamedBody685_2043

def NamedBody685_2045 : StackLang.HolProg 64 :=
.seq NamedBody685_2003 NamedBody685_2044

def NamedBody685_2046 : StackLang.HolProg 64 :=
.seq NamedBody685_2002 NamedBody685_2045

def NamedBody685_2047 : StackLang.HolProg 64 :=
.seq NamedBody685_2001 NamedBody685_2046

def NamedBody685_2048 : StackLang.HolProg 64 :=
.seq NamedBody685_2000 NamedBody685_2047

def NamedBody685_2049 : StackLang.HolProg 64 :=
.seq NamedBody685_1999 NamedBody685_2048

def NamedBody685_2050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_2051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2054 : StackLang.HolProg 64 :=
.seq NamedBody685_2052 NamedBody685_2053

def NamedBody685_2055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2057 : StackLang.HolProg 64 :=
.seq NamedBody685_2055 NamedBody685_2056

def NamedBody685_2058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2061 : StackLang.HolProg 64 :=
.seq NamedBody685_2059 NamedBody685_2060

def NamedBody685_2062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2065 : StackLang.HolProg 64 :=
.seq NamedBody685_2063 NamedBody685_2064

def NamedBody685_2066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2068 : StackLang.HolProg 64 :=
.seq NamedBody685_2066 NamedBody685_2067

def NamedBody685_2069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2071 : StackLang.HolProg 64 :=
.seq NamedBody685_2069 NamedBody685_2070

def NamedBody685_2072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2074 : StackLang.HolProg 64 :=
.seq NamedBody685_2072 NamedBody685_2073

def NamedBody685_2075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_2076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2077 : StackLang.HolProg 64 :=
.seq NamedBody685_2075 NamedBody685_2076

def NamedBody685_2078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody685_2079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_2080 : StackLang.HolProg 64 :=
.seq NamedBody685_2078 NamedBody685_2079

def NamedBody685_2081 : StackLang.HolProg 64 :=
.seq NamedBody685_2077 NamedBody685_2080

def NamedBody685_2082 : StackLang.HolProg 64 :=
.seq NamedBody685_2074 NamedBody685_2081

def NamedBody685_2083 : StackLang.HolProg 64 :=
.seq NamedBody685_2071 NamedBody685_2082

def NamedBody685_2084 : StackLang.HolProg 64 :=
.seq NamedBody685_2068 NamedBody685_2083

def NamedBody685_2085 : StackLang.HolProg 64 :=
.seq NamedBody685_2065 NamedBody685_2084

def NamedBody685_2086 : StackLang.HolProg 64 :=
.seq NamedBody685_2062 NamedBody685_2085

def NamedBody685_2087 : StackLang.HolProg 64 :=
.seq NamedBody685_2061 NamedBody685_2086

def NamedBody685_2088 : StackLang.HolProg 64 :=
.seq NamedBody685_2058 NamedBody685_2087

def NamedBody685_2089 : StackLang.HolProg 64 :=
.seq NamedBody685_2057 NamedBody685_2088

def NamedBody685_2090 : StackLang.HolProg 64 :=
.seq NamedBody685_2054 NamedBody685_2089

def NamedBody685_2091 : StackLang.HolProg 64 :=
.seq NamedBody685_2051 NamedBody685_2090

def NamedBody685_2092 : StackLang.HolProg 64 :=
.seq NamedBody685_2050 NamedBody685_2091

def NamedBody685_2093 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2094 : StackLang.HolProg 64 :=
.seq NamedBody685_2092 NamedBody685_2093

def NamedBody685_2095 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2049, 1, 685, 38)) (Sum.inl 675) (some (NamedBody685_2094, 685, 39))

def NamedBody685_2096 : StackLang.HolProg 64 :=
.seq NamedBody685_1998 NamedBody685_2095

def NamedBody685_2097 : StackLang.HolProg 64 :=
.seq NamedBody685_1997 NamedBody685_2096

def NamedBody685_2098 : StackLang.HolProg 64 :=
.seq NamedBody685_1996 NamedBody685_2097

def NamedBody685_2099 : StackLang.HolProg 64 :=
.seq NamedBody685_1967 NamedBody685_2098

def NamedBody685_2100 : StackLang.HolProg 64 :=
.seq NamedBody685_1964 NamedBody685_2099

def NamedBody685_2101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2104 : StackLang.HolProg 64 :=
.seq NamedBody685_2102 NamedBody685_2103

def NamedBody685_2105 : StackLang.HolProg 64 :=
.seq NamedBody685_2101 NamedBody685_2104

def NamedBody685_2106 : StackLang.HolProg 64 :=
.seq NamedBody685_2100 NamedBody685_2105

def NamedBody685_2107 : StackLang.HolProg 64 :=
.seq NamedBody685_1963 NamedBody685_2106

def NamedBody685_2108 : StackLang.HolProg 64 :=
.seq NamedBody685_1958 NamedBody685_2107

def NamedBody685_2109 : StackLang.HolProg 64 :=
.seq NamedBody685_1957 NamedBody685_2108

def NamedBody685_2110 : StackLang.HolProg 64 :=
.seq NamedBody685_1956 NamedBody685_2109

def NamedBody685_2111 : StackLang.HolProg 64 :=
.seq NamedBody685_1955 NamedBody685_2110

def NamedBody685_2112 : StackLang.HolProg 64 :=
.seq NamedBody685_1898 NamedBody685_2111

def NamedBody685_2113 : StackLang.HolProg 64 :=
.seq NamedBody685_1889 NamedBody685_2112

def NamedBody685_2114 : StackLang.HolProg 64 :=
.seq NamedBody685_1888 NamedBody685_2113

def NamedBody685_2115 : StackLang.HolProg 64 :=
.seq NamedBody685_1823 NamedBody685_2114

def NamedBody685_2116 : StackLang.HolProg 64 :=
.seq NamedBody685_1818 NamedBody685_2115

def NamedBody685_2117 : StackLang.HolProg 64 :=
.seq NamedBody685_1817 NamedBody685_2116

def NamedBody685_2118 : StackLang.HolProg 64 :=
.seq NamedBody685_1816 NamedBody685_2117

def NamedBody685_2119 : StackLang.HolProg 64 :=
.seq NamedBody685_1815 NamedBody685_2118

def NamedBody685_2120 : StackLang.HolProg 64 :=
.seq NamedBody685_1754 NamedBody685_2119

def NamedBody685_2121 : StackLang.HolProg 64 :=
.seq NamedBody685_1747 NamedBody685_2120

def NamedBody685_2122 : StackLang.HolProg 64 :=
.seq NamedBody685_1746 NamedBody685_2121

def NamedBody685_2123 : StackLang.HolProg 64 :=
.seq NamedBody685_1345 NamedBody685_2122

def NamedBody685_2124 : StackLang.HolProg 64 :=
.seq NamedBody685_1344 NamedBody685_2123

def NamedBody685_2125 : StackLang.HolProg 64 :=
.seq NamedBody685_1343 NamedBody685_2124

def NamedBody685_2126 : StackLang.HolProg 64 :=
.seq NamedBody685_1342 NamedBody685_2125

def NamedBody685_2127 : StackLang.HolProg 64 :=
.seq NamedBody685_1279 NamedBody685_2126

def NamedBody685_2128 : StackLang.HolProg 64 :=
.seq NamedBody685_1242 NamedBody685_2127

def NamedBody685_2129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_2131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2134 : StackLang.HolProg 64 :=
.seq NamedBody685_2132 NamedBody685_2133

def NamedBody685_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2137 : StackLang.HolProg 64 :=
.seq NamedBody685_2135 NamedBody685_2136

def NamedBody685_2138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2141 : StackLang.HolProg 64 :=
.seq NamedBody685_2139 NamedBody685_2140

def NamedBody685_2142 : StackLang.HolProg 64 :=
.seq NamedBody685_2138 NamedBody685_2141

def NamedBody685_2143 : StackLang.HolProg 64 :=
.seq NamedBody685_2137 NamedBody685_2142

def NamedBody685_2144 : StackLang.HolProg 64 :=
.seq NamedBody685_2134 NamedBody685_2143

def NamedBody685_2145 : StackLang.HolProg 64 :=
.seq NamedBody685_2131 NamedBody685_2144

def NamedBody685_2146 : StackLang.HolProg 64 :=
.seq NamedBody685_2130 NamedBody685_2145

def NamedBody685_2147 : StackLang.HolProg 64 :=
.seq NamedBody685_2129 NamedBody685_2146

def NamedBody685_2148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody685_2128 NamedBody685_2147

def NamedBody685_2149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_2152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2154 : StackLang.HolProg 64 :=
.seq NamedBody685_2152 NamedBody685_2153

def NamedBody685_2155 : StackLang.HolProg 64 :=
.seq NamedBody685_2151 NamedBody685_2154

def NamedBody685_2156 : StackLang.HolProg 64 :=
.seq NamedBody685_2150 NamedBody685_2155

def NamedBody685_2157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2911#64)

def NamedBody685_2159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2160 : StackLang.HolProg 64 :=
.seq NamedBody685_2158 NamedBody685_2159

def NamedBody685_2161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2164 : StackLang.HolProg 64 :=
.seq NamedBody685_2162 NamedBody685_2163

def NamedBody685_2165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2164 NamedBody685_2165

def NamedBody685_2167 : StackLang.HolProg 64 :=
.seq NamedBody685_2161 NamedBody685_2166

def NamedBody685_2168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 51

def NamedBody685_2171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2177 : StackLang.HolProg 64 :=
.seq NamedBody685_2175 NamedBody685_2176

def NamedBody685_2178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2179 : StackLang.HolProg 64 :=
.seq NamedBody685_2177 NamedBody685_2178

def NamedBody685_2180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2181 : StackLang.HolProg 64 :=
.seq NamedBody685_2179 NamedBody685_2180

def NamedBody685_2182 : StackLang.HolProg 64 :=
.seq NamedBody685_2174 NamedBody685_2181

def NamedBody685_2183 : StackLang.HolProg 64 :=
.seq NamedBody685_2173 NamedBody685_2182

def NamedBody685_2184 : StackLang.HolProg 64 :=
.seq NamedBody685_2172 NamedBody685_2183

def NamedBody685_2185 : StackLang.HolProg 64 :=
.seq NamedBody685_2171 NamedBody685_2184

def NamedBody685_2186 : StackLang.HolProg 64 :=
.seq NamedBody685_2170 NamedBody685_2185

def NamedBody685_2187 : StackLang.HolProg 64 :=
.seq NamedBody685_2169 NamedBody685_2186

def NamedBody685_2188 : StackLang.HolProg 64 :=
.seq NamedBody685_2168 NamedBody685_2187

def NamedBody685_2189 : StackLang.HolProg 64 :=
.seq NamedBody685_2167 NamedBody685_2188

def NamedBody685_2190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2202 : StackLang.HolProg 64 :=
.seq NamedBody685_2200 NamedBody685_2201

def NamedBody685_2203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_2204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2205 : StackLang.HolProg 64 :=
.seq NamedBody685_2203 NamedBody685_2204

def NamedBody685_2206 : StackLang.HolProg 64 :=
.seq NamedBody685_2202 NamedBody685_2205

def NamedBody685_2207 : StackLang.HolProg 64 :=
.seq NamedBody685_2199 NamedBody685_2206

def NamedBody685_2208 : StackLang.HolProg 64 :=
.seq NamedBody685_2198 NamedBody685_2207

def NamedBody685_2209 : StackLang.HolProg 64 :=
.seq NamedBody685_2197 NamedBody685_2208

def NamedBody685_2210 : StackLang.HolProg 64 :=
.seq NamedBody685_2196 NamedBody685_2209

def NamedBody685_2211 : StackLang.HolProg 64 :=
.seq NamedBody685_2195 NamedBody685_2210

def NamedBody685_2212 : StackLang.HolProg 64 :=
.seq NamedBody685_2194 NamedBody685_2211

def NamedBody685_2213 : StackLang.HolProg 64 :=
.seq NamedBody685_2193 NamedBody685_2212

def NamedBody685_2214 : StackLang.HolProg 64 :=
.seq NamedBody685_2192 NamedBody685_2213

def NamedBody685_2215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2221 : StackLang.HolProg 64 :=
.seq NamedBody685_2219 NamedBody685_2220

def NamedBody685_2222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody685_2223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2224 : StackLang.HolProg 64 :=
.seq NamedBody685_2222 NamedBody685_2223

def NamedBody685_2225 : StackLang.HolProg 64 :=
.seq NamedBody685_2221 NamedBody685_2224

def NamedBody685_2226 : StackLang.HolProg 64 :=
.seq NamedBody685_2218 NamedBody685_2225

def NamedBody685_2227 : StackLang.HolProg 64 :=
.seq NamedBody685_2217 NamedBody685_2226

def NamedBody685_2228 : StackLang.HolProg 64 :=
.seq NamedBody685_2216 NamedBody685_2227

def NamedBody685_2229 : StackLang.HolProg 64 :=
.seq NamedBody685_2215 NamedBody685_2228

def NamedBody685_2230 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2231 : StackLang.HolProg 64 :=
.seq NamedBody685_2229 NamedBody685_2230

def NamedBody685_2232 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2214, 1, 685, 50)) (Sum.inl 670) (some (NamedBody685_2231, 685, 51))

def NamedBody685_2233 : StackLang.HolProg 64 :=
.seq NamedBody685_2191 NamedBody685_2232

def NamedBody685_2234 : StackLang.HolProg 64 :=
.seq NamedBody685_2190 NamedBody685_2233

def NamedBody685_2235 : StackLang.HolProg 64 :=
.seq NamedBody685_2189 NamedBody685_2234

def NamedBody685_2236 : StackLang.HolProg 64 :=
.seq NamedBody685_2160 NamedBody685_2235

def NamedBody685_2237 : StackLang.HolProg 64 :=
.seq NamedBody685_2157 NamedBody685_2236

def NamedBody685_2238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2243 : StackLang.HolProg 64 :=
.seq NamedBody685_2241 NamedBody685_2242

def NamedBody685_2244 : StackLang.HolProg 64 :=
.seq NamedBody685_2240 NamedBody685_2243

def NamedBody685_2245 : StackLang.HolProg 64 :=
.seq NamedBody685_2239 NamedBody685_2244

def NamedBody685_2246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2912#64)

def NamedBody685_2248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2249 : StackLang.HolProg 64 :=
.seq NamedBody685_2247 NamedBody685_2248

def NamedBody685_2250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2253 : StackLang.HolProg 64 :=
.seq NamedBody685_2251 NamedBody685_2252

def NamedBody685_2254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2255 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2253 NamedBody685_2254

def NamedBody685_2256 : StackLang.HolProg 64 :=
.seq NamedBody685_2250 NamedBody685_2255

def NamedBody685_2257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 53

def NamedBody685_2260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2266 : StackLang.HolProg 64 :=
.seq NamedBody685_2264 NamedBody685_2265

def NamedBody685_2267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2268 : StackLang.HolProg 64 :=
.seq NamedBody685_2266 NamedBody685_2267

def NamedBody685_2269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2270 : StackLang.HolProg 64 :=
.seq NamedBody685_2268 NamedBody685_2269

def NamedBody685_2271 : StackLang.HolProg 64 :=
.seq NamedBody685_2263 NamedBody685_2270

def NamedBody685_2272 : StackLang.HolProg 64 :=
.seq NamedBody685_2262 NamedBody685_2271

def NamedBody685_2273 : StackLang.HolProg 64 :=
.seq NamedBody685_2261 NamedBody685_2272

def NamedBody685_2274 : StackLang.HolProg 64 :=
.seq NamedBody685_2260 NamedBody685_2273

def NamedBody685_2275 : StackLang.HolProg 64 :=
.seq NamedBody685_2259 NamedBody685_2274

def NamedBody685_2276 : StackLang.HolProg 64 :=
.seq NamedBody685_2258 NamedBody685_2275

def NamedBody685_2277 : StackLang.HolProg 64 :=
.seq NamedBody685_2257 NamedBody685_2276

def NamedBody685_2278 : StackLang.HolProg 64 :=
.seq NamedBody685_2256 NamedBody685_2277

def NamedBody685_2279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2288 : StackLang.HolProg 64 :=
.seq NamedBody685_2286 NamedBody685_2287

def NamedBody685_2289 : StackLang.HolProg 64 :=
.seq NamedBody685_2285 NamedBody685_2288

def NamedBody685_2290 : StackLang.HolProg 64 :=
.seq NamedBody685_2284 NamedBody685_2289

def NamedBody685_2291 : StackLang.HolProg 64 :=
.seq NamedBody685_2283 NamedBody685_2290

def NamedBody685_2292 : StackLang.HolProg 64 :=
.seq NamedBody685_2282 NamedBody685_2291

def NamedBody685_2293 : StackLang.HolProg 64 :=
.seq NamedBody685_2281 NamedBody685_2292

def NamedBody685_2294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2297 : StackLang.HolProg 64 :=
.seq NamedBody685_2295 NamedBody685_2296

def NamedBody685_2298 : StackLang.HolProg 64 :=
.seq NamedBody685_2294 NamedBody685_2297

def NamedBody685_2299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2300 : StackLang.HolProg 64 :=
.seq NamedBody685_2298 NamedBody685_2299

def NamedBody685_2301 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2293, 1, 685, 52)) (Sum.inl 670) (some (NamedBody685_2300, 685, 53))

def NamedBody685_2302 : StackLang.HolProg 64 :=
.seq NamedBody685_2280 NamedBody685_2301

def NamedBody685_2303 : StackLang.HolProg 64 :=
.seq NamedBody685_2279 NamedBody685_2302

def NamedBody685_2304 : StackLang.HolProg 64 :=
.seq NamedBody685_2278 NamedBody685_2303

def NamedBody685_2305 : StackLang.HolProg 64 :=
.seq NamedBody685_2249 NamedBody685_2304

def NamedBody685_2306 : StackLang.HolProg 64 :=
.seq NamedBody685_2246 NamedBody685_2305

def NamedBody685_2307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody685_2310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2313 : StackLang.HolProg 64 :=
.seq NamedBody685_2311 NamedBody685_2312

def NamedBody685_2314 : StackLang.HolProg 64 :=
.seq NamedBody685_2310 NamedBody685_2313

def NamedBody685_2315 : StackLang.HolProg 64 :=
.seq NamedBody685_2309 NamedBody685_2314

def NamedBody685_2316 : StackLang.HolProg 64 :=
.seq NamedBody685_2308 NamedBody685_2315

def NamedBody685_2317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2913#64)

def NamedBody685_2319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2320 : StackLang.HolProg 64 :=
.seq NamedBody685_2318 NamedBody685_2319

def NamedBody685_2321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2324 : StackLang.HolProg 64 :=
.seq NamedBody685_2322 NamedBody685_2323

def NamedBody685_2325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2326 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2324 NamedBody685_2325

def NamedBody685_2327 : StackLang.HolProg 64 :=
.seq NamedBody685_2321 NamedBody685_2326

def NamedBody685_2328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 55

def NamedBody685_2331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2337 : StackLang.HolProg 64 :=
.seq NamedBody685_2335 NamedBody685_2336

def NamedBody685_2338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2339 : StackLang.HolProg 64 :=
.seq NamedBody685_2337 NamedBody685_2338

def NamedBody685_2340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2341 : StackLang.HolProg 64 :=
.seq NamedBody685_2339 NamedBody685_2340

def NamedBody685_2342 : StackLang.HolProg 64 :=
.seq NamedBody685_2334 NamedBody685_2341

def NamedBody685_2343 : StackLang.HolProg 64 :=
.seq NamedBody685_2333 NamedBody685_2342

def NamedBody685_2344 : StackLang.HolProg 64 :=
.seq NamedBody685_2332 NamedBody685_2343

def NamedBody685_2345 : StackLang.HolProg 64 :=
.seq NamedBody685_2331 NamedBody685_2344

def NamedBody685_2346 : StackLang.HolProg 64 :=
.seq NamedBody685_2330 NamedBody685_2345

def NamedBody685_2347 : StackLang.HolProg 64 :=
.seq NamedBody685_2329 NamedBody685_2346

def NamedBody685_2348 : StackLang.HolProg 64 :=
.seq NamedBody685_2328 NamedBody685_2347

def NamedBody685_2349 : StackLang.HolProg 64 :=
.seq NamedBody685_2327 NamedBody685_2348

def NamedBody685_2350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2361 : StackLang.HolProg 64 :=
.seq NamedBody685_2359 NamedBody685_2360

def NamedBody685_2362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2364 : StackLang.HolProg 64 :=
.seq NamedBody685_2362 NamedBody685_2363

def NamedBody685_2365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2367 : StackLang.HolProg 64 :=
.seq NamedBody685_2365 NamedBody685_2366

def NamedBody685_2368 : StackLang.HolProg 64 :=
.seq NamedBody685_2364 NamedBody685_2367

def NamedBody685_2369 : StackLang.HolProg 64 :=
.seq NamedBody685_2361 NamedBody685_2368

def NamedBody685_2370 : StackLang.HolProg 64 :=
.seq NamedBody685_2358 NamedBody685_2369

def NamedBody685_2371 : StackLang.HolProg 64 :=
.seq NamedBody685_2357 NamedBody685_2370

def NamedBody685_2372 : StackLang.HolProg 64 :=
.seq NamedBody685_2356 NamedBody685_2371

def NamedBody685_2373 : StackLang.HolProg 64 :=
.seq NamedBody685_2355 NamedBody685_2372

def NamedBody685_2374 : StackLang.HolProg 64 :=
.seq NamedBody685_2354 NamedBody685_2373

def NamedBody685_2375 : StackLang.HolProg 64 :=
.seq NamedBody685_2353 NamedBody685_2374

def NamedBody685_2376 : StackLang.HolProg 64 :=
.seq NamedBody685_2352 NamedBody685_2375

def NamedBody685_2377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2382 : StackLang.HolProg 64 :=
.seq NamedBody685_2380 NamedBody685_2381

def NamedBody685_2383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2385 : StackLang.HolProg 64 :=
.seq NamedBody685_2383 NamedBody685_2384

def NamedBody685_2386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody685_2387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2388 : StackLang.HolProg 64 :=
.seq NamedBody685_2386 NamedBody685_2387

def NamedBody685_2389 : StackLang.HolProg 64 :=
.seq NamedBody685_2385 NamedBody685_2388

def NamedBody685_2390 : StackLang.HolProg 64 :=
.seq NamedBody685_2382 NamedBody685_2389

def NamedBody685_2391 : StackLang.HolProg 64 :=
.seq NamedBody685_2379 NamedBody685_2390

def NamedBody685_2392 : StackLang.HolProg 64 :=
.seq NamedBody685_2378 NamedBody685_2391

def NamedBody685_2393 : StackLang.HolProg 64 :=
.seq NamedBody685_2377 NamedBody685_2392

def NamedBody685_2394 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2395 : StackLang.HolProg 64 :=
.seq NamedBody685_2393 NamedBody685_2394

def NamedBody685_2396 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2376, 1, 685, 54)) (Sum.inl 673) (some (NamedBody685_2395, 685, 55))

def NamedBody685_2397 : StackLang.HolProg 64 :=
.seq NamedBody685_2351 NamedBody685_2396

def NamedBody685_2398 : StackLang.HolProg 64 :=
.seq NamedBody685_2350 NamedBody685_2397

def NamedBody685_2399 : StackLang.HolProg 64 :=
.seq NamedBody685_2349 NamedBody685_2398

def NamedBody685_2400 : StackLang.HolProg 64 :=
.seq NamedBody685_2320 NamedBody685_2399

def NamedBody685_2401 : StackLang.HolProg 64 :=
.seq NamedBody685_2317 NamedBody685_2400

def NamedBody685_2402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody685_2405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2407 : StackLang.HolProg 64 :=
.seq NamedBody685_2405 NamedBody685_2406

def NamedBody685_2408 : StackLang.HolProg 64 :=
.seq NamedBody685_2404 NamedBody685_2407

def NamedBody685_2409 : StackLang.HolProg 64 :=
.seq NamedBody685_2403 NamedBody685_2408

def NamedBody685_2410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2914#64)

def NamedBody685_2412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2413 : StackLang.HolProg 64 :=
.seq NamedBody685_2411 NamedBody685_2412

def NamedBody685_2414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2417 : StackLang.HolProg 64 :=
.seq NamedBody685_2415 NamedBody685_2416

def NamedBody685_2418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2419 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2417 NamedBody685_2418

def NamedBody685_2420 : StackLang.HolProg 64 :=
.seq NamedBody685_2414 NamedBody685_2419

def NamedBody685_2421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 57

def NamedBody685_2424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2430 : StackLang.HolProg 64 :=
.seq NamedBody685_2428 NamedBody685_2429

def NamedBody685_2431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2432 : StackLang.HolProg 64 :=
.seq NamedBody685_2430 NamedBody685_2431

def NamedBody685_2433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2434 : StackLang.HolProg 64 :=
.seq NamedBody685_2432 NamedBody685_2433

def NamedBody685_2435 : StackLang.HolProg 64 :=
.seq NamedBody685_2427 NamedBody685_2434

def NamedBody685_2436 : StackLang.HolProg 64 :=
.seq NamedBody685_2426 NamedBody685_2435

def NamedBody685_2437 : StackLang.HolProg 64 :=
.seq NamedBody685_2425 NamedBody685_2436

def NamedBody685_2438 : StackLang.HolProg 64 :=
.seq NamedBody685_2424 NamedBody685_2437

def NamedBody685_2439 : StackLang.HolProg 64 :=
.seq NamedBody685_2423 NamedBody685_2438

def NamedBody685_2440 : StackLang.HolProg 64 :=
.seq NamedBody685_2422 NamedBody685_2439

def NamedBody685_2441 : StackLang.HolProg 64 :=
.seq NamedBody685_2421 NamedBody685_2440

def NamedBody685_2442 : StackLang.HolProg 64 :=
.seq NamedBody685_2420 NamedBody685_2441

def NamedBody685_2443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_2450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2455 : StackLang.HolProg 64 :=
.seq NamedBody685_2453 NamedBody685_2454

def NamedBody685_2456 : StackLang.HolProg 64 :=
.seq NamedBody685_2452 NamedBody685_2455

def NamedBody685_2457 : StackLang.HolProg 64 :=
.seq NamedBody685_2451 NamedBody685_2456

def NamedBody685_2458 : StackLang.HolProg 64 :=
.seq NamedBody685_2450 NamedBody685_2457

def NamedBody685_2459 : StackLang.HolProg 64 :=
.seq NamedBody685_2449 NamedBody685_2458

def NamedBody685_2460 : StackLang.HolProg 64 :=
.seq NamedBody685_2448 NamedBody685_2459

def NamedBody685_2461 : StackLang.HolProg 64 :=
.seq NamedBody685_2447 NamedBody685_2460

def NamedBody685_2462 : StackLang.HolProg 64 :=
.seq NamedBody685_2446 NamedBody685_2461

def NamedBody685_2463 : StackLang.HolProg 64 :=
.seq NamedBody685_2445 NamedBody685_2462

def NamedBody685_2464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_2465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody685_2469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2470 : StackLang.HolProg 64 :=
.seq NamedBody685_2468 NamedBody685_2469

def NamedBody685_2471 : StackLang.HolProg 64 :=
.seq NamedBody685_2467 NamedBody685_2470

def NamedBody685_2472 : StackLang.HolProg 64 :=
.seq NamedBody685_2466 NamedBody685_2471

def NamedBody685_2473 : StackLang.HolProg 64 :=
.seq NamedBody685_2465 NamedBody685_2472

def NamedBody685_2474 : StackLang.HolProg 64 :=
.seq NamedBody685_2464 NamedBody685_2473

def NamedBody685_2475 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2476 : StackLang.HolProg 64 :=
.seq NamedBody685_2474 NamedBody685_2475

def NamedBody685_2477 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2463, 1, 685, 56)) (Sum.inl 670) (some (NamedBody685_2476, 685, 57))

def NamedBody685_2478 : StackLang.HolProg 64 :=
.seq NamedBody685_2444 NamedBody685_2477

def NamedBody685_2479 : StackLang.HolProg 64 :=
.seq NamedBody685_2443 NamedBody685_2478

def NamedBody685_2480 : StackLang.HolProg 64 :=
.seq NamedBody685_2442 NamedBody685_2479

def NamedBody685_2481 : StackLang.HolProg 64 :=
.seq NamedBody685_2413 NamedBody685_2480

def NamedBody685_2482 : StackLang.HolProg 64 :=
.seq NamedBody685_2410 NamedBody685_2481

def NamedBody685_2483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_2486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2488 : StackLang.HolProg 64 :=
.seq NamedBody685_2486 NamedBody685_2487

def NamedBody685_2489 : StackLang.HolProg 64 :=
.seq NamedBody685_2485 NamedBody685_2488

def NamedBody685_2490 : StackLang.HolProg 64 :=
.seq NamedBody685_2484 NamedBody685_2489

def NamedBody685_2491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2915#64)

def NamedBody685_2493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2494 : StackLang.HolProg 64 :=
.seq NamedBody685_2492 NamedBody685_2493

def NamedBody685_2495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2498 : StackLang.HolProg 64 :=
.seq NamedBody685_2496 NamedBody685_2497

def NamedBody685_2499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2500 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2498 NamedBody685_2499

def NamedBody685_2501 : StackLang.HolProg 64 :=
.seq NamedBody685_2495 NamedBody685_2500

def NamedBody685_2502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 59

def NamedBody685_2505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2511 : StackLang.HolProg 64 :=
.seq NamedBody685_2509 NamedBody685_2510

def NamedBody685_2512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2513 : StackLang.HolProg 64 :=
.seq NamedBody685_2511 NamedBody685_2512

def NamedBody685_2514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2515 : StackLang.HolProg 64 :=
.seq NamedBody685_2513 NamedBody685_2514

def NamedBody685_2516 : StackLang.HolProg 64 :=
.seq NamedBody685_2508 NamedBody685_2515

def NamedBody685_2517 : StackLang.HolProg 64 :=
.seq NamedBody685_2507 NamedBody685_2516

def NamedBody685_2518 : StackLang.HolProg 64 :=
.seq NamedBody685_2506 NamedBody685_2517

def NamedBody685_2519 : StackLang.HolProg 64 :=
.seq NamedBody685_2505 NamedBody685_2518

def NamedBody685_2520 : StackLang.HolProg 64 :=
.seq NamedBody685_2504 NamedBody685_2519

def NamedBody685_2521 : StackLang.HolProg 64 :=
.seq NamedBody685_2503 NamedBody685_2520

def NamedBody685_2522 : StackLang.HolProg 64 :=
.seq NamedBody685_2502 NamedBody685_2521

def NamedBody685_2523 : StackLang.HolProg 64 :=
.seq NamedBody685_2501 NamedBody685_2522

def NamedBody685_2524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2536 : StackLang.HolProg 64 :=
.seq NamedBody685_2534 NamedBody685_2535

def NamedBody685_2537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2539 : StackLang.HolProg 64 :=
.seq NamedBody685_2537 NamedBody685_2538

def NamedBody685_2540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2542 : StackLang.HolProg 64 :=
.seq NamedBody685_2540 NamedBody685_2541

def NamedBody685_2543 : StackLang.HolProg 64 :=
.seq NamedBody685_2539 NamedBody685_2542

def NamedBody685_2544 : StackLang.HolProg 64 :=
.seq NamedBody685_2536 NamedBody685_2543

def NamedBody685_2545 : StackLang.HolProg 64 :=
.seq NamedBody685_2533 NamedBody685_2544

def NamedBody685_2546 : StackLang.HolProg 64 :=
.seq NamedBody685_2532 NamedBody685_2545

def NamedBody685_2547 : StackLang.HolProg 64 :=
.seq NamedBody685_2531 NamedBody685_2546

def NamedBody685_2548 : StackLang.HolProg 64 :=
.seq NamedBody685_2530 NamedBody685_2547

def NamedBody685_2549 : StackLang.HolProg 64 :=
.seq NamedBody685_2529 NamedBody685_2548

def NamedBody685_2550 : StackLang.HolProg 64 :=
.seq NamedBody685_2528 NamedBody685_2549

def NamedBody685_2551 : StackLang.HolProg 64 :=
.seq NamedBody685_2527 NamedBody685_2550

def NamedBody685_2552 : StackLang.HolProg 64 :=
.seq NamedBody685_2526 NamedBody685_2551

def NamedBody685_2553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2559 : StackLang.HolProg 64 :=
.seq NamedBody685_2557 NamedBody685_2558

def NamedBody685_2560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2562 : StackLang.HolProg 64 :=
.seq NamedBody685_2560 NamedBody685_2561

def NamedBody685_2563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody685_2564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2565 : StackLang.HolProg 64 :=
.seq NamedBody685_2563 NamedBody685_2564

def NamedBody685_2566 : StackLang.HolProg 64 :=
.seq NamedBody685_2562 NamedBody685_2565

def NamedBody685_2567 : StackLang.HolProg 64 :=
.seq NamedBody685_2559 NamedBody685_2566

def NamedBody685_2568 : StackLang.HolProg 64 :=
.seq NamedBody685_2556 NamedBody685_2567

def NamedBody685_2569 : StackLang.HolProg 64 :=
.seq NamedBody685_2555 NamedBody685_2568

def NamedBody685_2570 : StackLang.HolProg 64 :=
.seq NamedBody685_2554 NamedBody685_2569

def NamedBody685_2571 : StackLang.HolProg 64 :=
.seq NamedBody685_2553 NamedBody685_2570

def NamedBody685_2572 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2573 : StackLang.HolProg 64 :=
.seq NamedBody685_2571 NamedBody685_2572

def NamedBody685_2574 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2552, 1, 685, 58)) (Sum.inl 670) (some (NamedBody685_2573, 685, 59))

def NamedBody685_2575 : StackLang.HolProg 64 :=
.seq NamedBody685_2525 NamedBody685_2574

def NamedBody685_2576 : StackLang.HolProg 64 :=
.seq NamedBody685_2524 NamedBody685_2575

def NamedBody685_2577 : StackLang.HolProg 64 :=
.seq NamedBody685_2523 NamedBody685_2576

def NamedBody685_2578 : StackLang.HolProg 64 :=
.seq NamedBody685_2494 NamedBody685_2577

def NamedBody685_2579 : StackLang.HolProg 64 :=
.seq NamedBody685_2491 NamedBody685_2578

def NamedBody685_2580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2585 : StackLang.HolProg 64 :=
.seq NamedBody685_2583 NamedBody685_2584

def NamedBody685_2586 : StackLang.HolProg 64 :=
.seq NamedBody685_2582 NamedBody685_2585

def NamedBody685_2587 : StackLang.HolProg 64 :=
.seq NamedBody685_2581 NamedBody685_2586

def NamedBody685_2588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2916#64)

def NamedBody685_2590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2591 : StackLang.HolProg 64 :=
.seq NamedBody685_2589 NamedBody685_2590

def NamedBody685_2592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2595 : StackLang.HolProg 64 :=
.seq NamedBody685_2593 NamedBody685_2594

def NamedBody685_2596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2597 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2595 NamedBody685_2596

def NamedBody685_2598 : StackLang.HolProg 64 :=
.seq NamedBody685_2592 NamedBody685_2597

def NamedBody685_2599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 61

def NamedBody685_2602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2608 : StackLang.HolProg 64 :=
.seq NamedBody685_2606 NamedBody685_2607

def NamedBody685_2609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2610 : StackLang.HolProg 64 :=
.seq NamedBody685_2608 NamedBody685_2609

def NamedBody685_2611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2612 : StackLang.HolProg 64 :=
.seq NamedBody685_2610 NamedBody685_2611

def NamedBody685_2613 : StackLang.HolProg 64 :=
.seq NamedBody685_2605 NamedBody685_2612

def NamedBody685_2614 : StackLang.HolProg 64 :=
.seq NamedBody685_2604 NamedBody685_2613

def NamedBody685_2615 : StackLang.HolProg 64 :=
.seq NamedBody685_2603 NamedBody685_2614

def NamedBody685_2616 : StackLang.HolProg 64 :=
.seq NamedBody685_2602 NamedBody685_2615

def NamedBody685_2617 : StackLang.HolProg 64 :=
.seq NamedBody685_2601 NamedBody685_2616

def NamedBody685_2618 : StackLang.HolProg 64 :=
.seq NamedBody685_2600 NamedBody685_2617

def NamedBody685_2619 : StackLang.HolProg 64 :=
.seq NamedBody685_2599 NamedBody685_2618

def NamedBody685_2620 : StackLang.HolProg 64 :=
.seq NamedBody685_2598 NamedBody685_2619

def NamedBody685_2621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2630 : StackLang.HolProg 64 :=
.seq NamedBody685_2628 NamedBody685_2629

def NamedBody685_2631 : StackLang.HolProg 64 :=
.seq NamedBody685_2627 NamedBody685_2630

def NamedBody685_2632 : StackLang.HolProg 64 :=
.seq NamedBody685_2626 NamedBody685_2631

def NamedBody685_2633 : StackLang.HolProg 64 :=
.seq NamedBody685_2625 NamedBody685_2632

def NamedBody685_2634 : StackLang.HolProg 64 :=
.seq NamedBody685_2624 NamedBody685_2633

def NamedBody685_2635 : StackLang.HolProg 64 :=
.seq NamedBody685_2623 NamedBody685_2634

def NamedBody685_2636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2639 : StackLang.HolProg 64 :=
.seq NamedBody685_2637 NamedBody685_2638

def NamedBody685_2640 : StackLang.HolProg 64 :=
.seq NamedBody685_2636 NamedBody685_2639

def NamedBody685_2641 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2642 : StackLang.HolProg 64 :=
.seq NamedBody685_2640 NamedBody685_2641

def NamedBody685_2643 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2635, 1, 685, 60)) (Sum.inl 670) (some (NamedBody685_2642, 685, 61))

def NamedBody685_2644 : StackLang.HolProg 64 :=
.seq NamedBody685_2622 NamedBody685_2643

def NamedBody685_2645 : StackLang.HolProg 64 :=
.seq NamedBody685_2621 NamedBody685_2644

def NamedBody685_2646 : StackLang.HolProg 64 :=
.seq NamedBody685_2620 NamedBody685_2645

def NamedBody685_2647 : StackLang.HolProg 64 :=
.seq NamedBody685_2591 NamedBody685_2646

def NamedBody685_2648 : StackLang.HolProg 64 :=
.seq NamedBody685_2588 NamedBody685_2647

def NamedBody685_2649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody685_2652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2655 : StackLang.HolProg 64 :=
.seq NamedBody685_2653 NamedBody685_2654

def NamedBody685_2656 : StackLang.HolProg 64 :=
.seq NamedBody685_2652 NamedBody685_2655

def NamedBody685_2657 : StackLang.HolProg 64 :=
.seq NamedBody685_2651 NamedBody685_2656

def NamedBody685_2658 : StackLang.HolProg 64 :=
.seq NamedBody685_2650 NamedBody685_2657

def NamedBody685_2659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2917#64)

def NamedBody685_2661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2662 : StackLang.HolProg 64 :=
.seq NamedBody685_2660 NamedBody685_2661

def NamedBody685_2663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2666 : StackLang.HolProg 64 :=
.seq NamedBody685_2664 NamedBody685_2665

def NamedBody685_2667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2668 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2666 NamedBody685_2667

def NamedBody685_2669 : StackLang.HolProg 64 :=
.seq NamedBody685_2663 NamedBody685_2668

def NamedBody685_2670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 63

def NamedBody685_2673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2679 : StackLang.HolProg 64 :=
.seq NamedBody685_2677 NamedBody685_2678

def NamedBody685_2680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2681 : StackLang.HolProg 64 :=
.seq NamedBody685_2679 NamedBody685_2680

def NamedBody685_2682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2683 : StackLang.HolProg 64 :=
.seq NamedBody685_2681 NamedBody685_2682

def NamedBody685_2684 : StackLang.HolProg 64 :=
.seq NamedBody685_2676 NamedBody685_2683

def NamedBody685_2685 : StackLang.HolProg 64 :=
.seq NamedBody685_2675 NamedBody685_2684

def NamedBody685_2686 : StackLang.HolProg 64 :=
.seq NamedBody685_2674 NamedBody685_2685

def NamedBody685_2687 : StackLang.HolProg 64 :=
.seq NamedBody685_2673 NamedBody685_2686

def NamedBody685_2688 : StackLang.HolProg 64 :=
.seq NamedBody685_2672 NamedBody685_2687

def NamedBody685_2689 : StackLang.HolProg 64 :=
.seq NamedBody685_2671 NamedBody685_2688

def NamedBody685_2690 : StackLang.HolProg 64 :=
.seq NamedBody685_2670 NamedBody685_2689

def NamedBody685_2691 : StackLang.HolProg 64 :=
.seq NamedBody685_2669 NamedBody685_2690

def NamedBody685_2692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2701 : StackLang.HolProg 64 :=
.seq NamedBody685_2699 NamedBody685_2700

def NamedBody685_2702 : StackLang.HolProg 64 :=
.seq NamedBody685_2698 NamedBody685_2701

def NamedBody685_2703 : StackLang.HolProg 64 :=
.seq NamedBody685_2697 NamedBody685_2702

def NamedBody685_2704 : StackLang.HolProg 64 :=
.seq NamedBody685_2696 NamedBody685_2703

def NamedBody685_2705 : StackLang.HolProg 64 :=
.seq NamedBody685_2695 NamedBody685_2704

def NamedBody685_2706 : StackLang.HolProg 64 :=
.seq NamedBody685_2694 NamedBody685_2705

def NamedBody685_2707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2710 : StackLang.HolProg 64 :=
.seq NamedBody685_2708 NamedBody685_2709

def NamedBody685_2711 : StackLang.HolProg 64 :=
.seq NamedBody685_2707 NamedBody685_2710

def NamedBody685_2712 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2713 : StackLang.HolProg 64 :=
.seq NamedBody685_2711 NamedBody685_2712

def NamedBody685_2714 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2706, 1, 685, 62)) (Sum.inl 673) (some (NamedBody685_2713, 685, 63))

def NamedBody685_2715 : StackLang.HolProg 64 :=
.seq NamedBody685_2693 NamedBody685_2714

def NamedBody685_2716 : StackLang.HolProg 64 :=
.seq NamedBody685_2692 NamedBody685_2715

def NamedBody685_2717 : StackLang.HolProg 64 :=
.seq NamedBody685_2691 NamedBody685_2716

def NamedBody685_2718 : StackLang.HolProg 64 :=
.seq NamedBody685_2662 NamedBody685_2717

def NamedBody685_2719 : StackLang.HolProg 64 :=
.seq NamedBody685_2659 NamedBody685_2718

def NamedBody685_2720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody685_2723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2726 : StackLang.HolProg 64 :=
.seq NamedBody685_2724 NamedBody685_2725

def NamedBody685_2727 : StackLang.HolProg 64 :=
.seq NamedBody685_2723 NamedBody685_2726

def NamedBody685_2728 : StackLang.HolProg 64 :=
.seq NamedBody685_2722 NamedBody685_2727

def NamedBody685_2729 : StackLang.HolProg 64 :=
.seq NamedBody685_2721 NamedBody685_2728

def NamedBody685_2730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2918#64)

def NamedBody685_2732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2733 : StackLang.HolProg 64 :=
.seq NamedBody685_2731 NamedBody685_2732

def NamedBody685_2734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2737 : StackLang.HolProg 64 :=
.seq NamedBody685_2735 NamedBody685_2736

def NamedBody685_2738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2739 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2737 NamedBody685_2738

def NamedBody685_2740 : StackLang.HolProg 64 :=
.seq NamedBody685_2734 NamedBody685_2739

def NamedBody685_2741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 65

def NamedBody685_2744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2750 : StackLang.HolProg 64 :=
.seq NamedBody685_2748 NamedBody685_2749

def NamedBody685_2751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2752 : StackLang.HolProg 64 :=
.seq NamedBody685_2750 NamedBody685_2751

def NamedBody685_2753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2754 : StackLang.HolProg 64 :=
.seq NamedBody685_2752 NamedBody685_2753

def NamedBody685_2755 : StackLang.HolProg 64 :=
.seq NamedBody685_2747 NamedBody685_2754

def NamedBody685_2756 : StackLang.HolProg 64 :=
.seq NamedBody685_2746 NamedBody685_2755

def NamedBody685_2757 : StackLang.HolProg 64 :=
.seq NamedBody685_2745 NamedBody685_2756

def NamedBody685_2758 : StackLang.HolProg 64 :=
.seq NamedBody685_2744 NamedBody685_2757

def NamedBody685_2759 : StackLang.HolProg 64 :=
.seq NamedBody685_2743 NamedBody685_2758

def NamedBody685_2760 : StackLang.HolProg 64 :=
.seq NamedBody685_2742 NamedBody685_2759

def NamedBody685_2761 : StackLang.HolProg 64 :=
.seq NamedBody685_2741 NamedBody685_2760

def NamedBody685_2762 : StackLang.HolProg 64 :=
.seq NamedBody685_2740 NamedBody685_2761

def NamedBody685_2763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2772 : StackLang.HolProg 64 :=
.seq NamedBody685_2770 NamedBody685_2771

def NamedBody685_2773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2778 : StackLang.HolProg 64 :=
.seq NamedBody685_2776 NamedBody685_2777

def NamedBody685_2779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2781 : StackLang.HolProg 64 :=
.seq NamedBody685_2779 NamedBody685_2780

def NamedBody685_2782 : StackLang.HolProg 64 :=
.seq NamedBody685_2778 NamedBody685_2781

def NamedBody685_2783 : StackLang.HolProg 64 :=
.seq NamedBody685_2775 NamedBody685_2782

def NamedBody685_2784 : StackLang.HolProg 64 :=
.seq NamedBody685_2774 NamedBody685_2783

def NamedBody685_2785 : StackLang.HolProg 64 :=
.seq NamedBody685_2773 NamedBody685_2784

def NamedBody685_2786 : StackLang.HolProg 64 :=
.seq NamedBody685_2772 NamedBody685_2785

def NamedBody685_2787 : StackLang.HolProg 64 :=
.seq NamedBody685_2769 NamedBody685_2786

def NamedBody685_2788 : StackLang.HolProg 64 :=
.seq NamedBody685_2768 NamedBody685_2787

def NamedBody685_2789 : StackLang.HolProg 64 :=
.seq NamedBody685_2767 NamedBody685_2788

def NamedBody685_2790 : StackLang.HolProg 64 :=
.seq NamedBody685_2766 NamedBody685_2789

def NamedBody685_2791 : StackLang.HolProg 64 :=
.seq NamedBody685_2765 NamedBody685_2790

def NamedBody685_2792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2795 : StackLang.HolProg 64 :=
.seq NamedBody685_2793 NamedBody685_2794

def NamedBody685_2796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody685_2799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody685_2800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2801 : StackLang.HolProg 64 :=
.seq NamedBody685_2799 NamedBody685_2800

def NamedBody685_2802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody685_2803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2804 : StackLang.HolProg 64 :=
.seq NamedBody685_2802 NamedBody685_2803

def NamedBody685_2805 : StackLang.HolProg 64 :=
.seq NamedBody685_2801 NamedBody685_2804

def NamedBody685_2806 : StackLang.HolProg 64 :=
.seq NamedBody685_2798 NamedBody685_2805

def NamedBody685_2807 : StackLang.HolProg 64 :=
.seq NamedBody685_2797 NamedBody685_2806

def NamedBody685_2808 : StackLang.HolProg 64 :=
.seq NamedBody685_2796 NamedBody685_2807

def NamedBody685_2809 : StackLang.HolProg 64 :=
.seq NamedBody685_2795 NamedBody685_2808

def NamedBody685_2810 : StackLang.HolProg 64 :=
.seq NamedBody685_2792 NamedBody685_2809

def NamedBody685_2811 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2812 : StackLang.HolProg 64 :=
.seq NamedBody685_2810 NamedBody685_2811

def NamedBody685_2813 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2791, 1, 685, 64)) (Sum.inl 670) (some (NamedBody685_2812, 685, 65))

def NamedBody685_2814 : StackLang.HolProg 64 :=
.seq NamedBody685_2764 NamedBody685_2813

def NamedBody685_2815 : StackLang.HolProg 64 :=
.seq NamedBody685_2763 NamedBody685_2814

def NamedBody685_2816 : StackLang.HolProg 64 :=
.seq NamedBody685_2762 NamedBody685_2815

def NamedBody685_2817 : StackLang.HolProg 64 :=
.seq NamedBody685_2733 NamedBody685_2816

def NamedBody685_2818 : StackLang.HolProg 64 :=
.seq NamedBody685_2730 NamedBody685_2817

def NamedBody685_2819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2822 : StackLang.HolProg 64 :=
.seq NamedBody685_2820 NamedBody685_2821

def NamedBody685_2823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2919#64)

def NamedBody685_2825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2826 : StackLang.HolProg 64 :=
.seq NamedBody685_2824 NamedBody685_2825

def NamedBody685_2827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2830 : StackLang.HolProg 64 :=
.seq NamedBody685_2828 NamedBody685_2829

def NamedBody685_2831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2832 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2830 NamedBody685_2831

def NamedBody685_2833 : StackLang.HolProg 64 :=
.seq NamedBody685_2827 NamedBody685_2832

def NamedBody685_2834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 67

def NamedBody685_2837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2843 : StackLang.HolProg 64 :=
.seq NamedBody685_2841 NamedBody685_2842

def NamedBody685_2844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2845 : StackLang.HolProg 64 :=
.seq NamedBody685_2843 NamedBody685_2844

def NamedBody685_2846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2847 : StackLang.HolProg 64 :=
.seq NamedBody685_2845 NamedBody685_2846

def NamedBody685_2848 : StackLang.HolProg 64 :=
.seq NamedBody685_2840 NamedBody685_2847

def NamedBody685_2849 : StackLang.HolProg 64 :=
.seq NamedBody685_2839 NamedBody685_2848

def NamedBody685_2850 : StackLang.HolProg 64 :=
.seq NamedBody685_2838 NamedBody685_2849

def NamedBody685_2851 : StackLang.HolProg 64 :=
.seq NamedBody685_2837 NamedBody685_2850

def NamedBody685_2852 : StackLang.HolProg 64 :=
.seq NamedBody685_2836 NamedBody685_2851

def NamedBody685_2853 : StackLang.HolProg 64 :=
.seq NamedBody685_2835 NamedBody685_2852

def NamedBody685_2854 : StackLang.HolProg 64 :=
.seq NamedBody685_2834 NamedBody685_2853

def NamedBody685_2855 : StackLang.HolProg 64 :=
.seq NamedBody685_2833 NamedBody685_2854

def NamedBody685_2856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2866 : StackLang.HolProg 64 :=
.seq NamedBody685_2864 NamedBody685_2865

def NamedBody685_2867 : StackLang.HolProg 64 :=
.seq NamedBody685_2863 NamedBody685_2866

def NamedBody685_2868 : StackLang.HolProg 64 :=
.seq NamedBody685_2862 NamedBody685_2867

def NamedBody685_2869 : StackLang.HolProg 64 :=
.seq NamedBody685_2861 NamedBody685_2868

def NamedBody685_2870 : StackLang.HolProg 64 :=
.seq NamedBody685_2860 NamedBody685_2869

def NamedBody685_2871 : StackLang.HolProg 64 :=
.seq NamedBody685_2859 NamedBody685_2870

def NamedBody685_2872 : StackLang.HolProg 64 :=
.seq NamedBody685_2858 NamedBody685_2871

def NamedBody685_2873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody685_2876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody685_2877 : StackLang.HolProg 64 :=
.seq NamedBody685_2875 NamedBody685_2876

def NamedBody685_2878 : StackLang.HolProg 64 :=
.seq NamedBody685_2874 NamedBody685_2877

def NamedBody685_2879 : StackLang.HolProg 64 :=
.seq NamedBody685_2873 NamedBody685_2878

def NamedBody685_2880 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2881 : StackLang.HolProg 64 :=
.seq NamedBody685_2879 NamedBody685_2880

def NamedBody685_2882 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2872, 1, 685, 66)) (Sum.inl 673) (some (NamedBody685_2881, 685, 67))

def NamedBody685_2883 : StackLang.HolProg 64 :=
.seq NamedBody685_2857 NamedBody685_2882

def NamedBody685_2884 : StackLang.HolProg 64 :=
.seq NamedBody685_2856 NamedBody685_2883

def NamedBody685_2885 : StackLang.HolProg 64 :=
.seq NamedBody685_2855 NamedBody685_2884

def NamedBody685_2886 : StackLang.HolProg 64 :=
.seq NamedBody685_2826 NamedBody685_2885

def NamedBody685_2887 : StackLang.HolProg 64 :=
.seq NamedBody685_2823 NamedBody685_2886

def NamedBody685_2888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2892 : StackLang.HolProg 64 :=
.seq NamedBody685_2890 NamedBody685_2891

def NamedBody685_2893 : StackLang.HolProg 64 :=
.seq NamedBody685_2889 NamedBody685_2892

def NamedBody685_2894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2920#64)

def NamedBody685_2896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2897 : StackLang.HolProg 64 :=
.seq NamedBody685_2895 NamedBody685_2896

def NamedBody685_2898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2901 : StackLang.HolProg 64 :=
.seq NamedBody685_2899 NamedBody685_2900

def NamedBody685_2902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2903 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2901 NamedBody685_2902

def NamedBody685_2904 : StackLang.HolProg 64 :=
.seq NamedBody685_2898 NamedBody685_2903

def NamedBody685_2905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 69

def NamedBody685_2908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2914 : StackLang.HolProg 64 :=
.seq NamedBody685_2912 NamedBody685_2913

def NamedBody685_2915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2916 : StackLang.HolProg 64 :=
.seq NamedBody685_2914 NamedBody685_2915

def NamedBody685_2917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2918 : StackLang.HolProg 64 :=
.seq NamedBody685_2916 NamedBody685_2917

def NamedBody685_2919 : StackLang.HolProg 64 :=
.seq NamedBody685_2911 NamedBody685_2918

def NamedBody685_2920 : StackLang.HolProg 64 :=
.seq NamedBody685_2910 NamedBody685_2919

def NamedBody685_2921 : StackLang.HolProg 64 :=
.seq NamedBody685_2909 NamedBody685_2920

def NamedBody685_2922 : StackLang.HolProg 64 :=
.seq NamedBody685_2908 NamedBody685_2921

def NamedBody685_2923 : StackLang.HolProg 64 :=
.seq NamedBody685_2907 NamedBody685_2922

def NamedBody685_2924 : StackLang.HolProg 64 :=
.seq NamedBody685_2906 NamedBody685_2923

def NamedBody685_2925 : StackLang.HolProg 64 :=
.seq NamedBody685_2905 NamedBody685_2924

def NamedBody685_2926 : StackLang.HolProg 64 :=
.seq NamedBody685_2904 NamedBody685_2925

def NamedBody685_2927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_2934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2936 : StackLang.HolProg 64 :=
.seq NamedBody685_2934 NamedBody685_2935

def NamedBody685_2937 : StackLang.HolProg 64 :=
.seq NamedBody685_2933 NamedBody685_2936

def NamedBody685_2938 : StackLang.HolProg 64 :=
.seq NamedBody685_2932 NamedBody685_2937

def NamedBody685_2939 : StackLang.HolProg 64 :=
.seq NamedBody685_2931 NamedBody685_2938

def NamedBody685_2940 : StackLang.HolProg 64 :=
.seq NamedBody685_2930 NamedBody685_2939

def NamedBody685_2941 : StackLang.HolProg 64 :=
.seq NamedBody685_2929 NamedBody685_2940

def NamedBody685_2942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody685_2943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody685_2944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody685_2945 : StackLang.HolProg 64 :=
.seq NamedBody685_2943 NamedBody685_2944

def NamedBody685_2946 : StackLang.HolProg 64 :=
.seq NamedBody685_2942 NamedBody685_2945

def NamedBody685_2947 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_2948 : StackLang.HolProg 64 :=
.seq NamedBody685_2946 NamedBody685_2947

def NamedBody685_2949 : StackLang.HolProg 64 :=
.call (some (NamedBody685_2941, 1, 685, 68)) (Sum.inl 670) (some (NamedBody685_2948, 685, 69))

def NamedBody685_2950 : StackLang.HolProg 64 :=
.seq NamedBody685_2928 NamedBody685_2949

def NamedBody685_2951 : StackLang.HolProg 64 :=
.seq NamedBody685_2927 NamedBody685_2950

def NamedBody685_2952 : StackLang.HolProg 64 :=
.seq NamedBody685_2926 NamedBody685_2951

def NamedBody685_2953 : StackLang.HolProg 64 :=
.seq NamedBody685_2897 NamedBody685_2952

def NamedBody685_2954 : StackLang.HolProg 64 :=
.seq NamedBody685_2894 NamedBody685_2953

def NamedBody685_2955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_2956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_2957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody685_2958 : StackLang.HolProg 64 :=
.seq NamedBody685_2956 NamedBody685_2957

def NamedBody685_2959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2921#64)

def NamedBody685_2961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2962 : StackLang.HolProg 64 :=
.seq NamedBody685_2960 NamedBody685_2961

def NamedBody685_2963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_2965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_2966 : StackLang.HolProg 64 :=
.seq NamedBody685_2964 NamedBody685_2965

def NamedBody685_2967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2968 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_2966 NamedBody685_2967

def NamedBody685_2969 : StackLang.HolProg 64 :=
.seq NamedBody685_2963 NamedBody685_2968

def NamedBody685_2970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_2971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_2972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 71

def NamedBody685_2973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_2974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_2978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_2979 : StackLang.HolProg 64 :=
.seq NamedBody685_2977 NamedBody685_2978

def NamedBody685_2980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_2981 : StackLang.HolProg 64 :=
.seq NamedBody685_2979 NamedBody685_2980

def NamedBody685_2982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2983 : StackLang.HolProg 64 :=
.seq NamedBody685_2981 NamedBody685_2982

def NamedBody685_2984 : StackLang.HolProg 64 :=
.seq NamedBody685_2976 NamedBody685_2983

def NamedBody685_2985 : StackLang.HolProg 64 :=
.seq NamedBody685_2975 NamedBody685_2984

def NamedBody685_2986 : StackLang.HolProg 64 :=
.seq NamedBody685_2974 NamedBody685_2985

def NamedBody685_2987 : StackLang.HolProg 64 :=
.seq NamedBody685_2973 NamedBody685_2986

def NamedBody685_2988 : StackLang.HolProg 64 :=
.seq NamedBody685_2972 NamedBody685_2987

def NamedBody685_2989 : StackLang.HolProg 64 :=
.seq NamedBody685_2971 NamedBody685_2988

def NamedBody685_2990 : StackLang.HolProg 64 :=
.seq NamedBody685_2970 NamedBody685_2989

def NamedBody685_2991 : StackLang.HolProg 64 :=
.seq NamedBody685_2969 NamedBody685_2990

def NamedBody685_2992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_2995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_2996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_2997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_2998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_2999 : StackLang.HolProg 64 :=
.seq NamedBody685_2997 NamedBody685_2998

def NamedBody685_3000 : StackLang.HolProg 64 :=
.seq NamedBody685_2996 NamedBody685_2999

def NamedBody685_3001 : StackLang.HolProg 64 :=
.seq NamedBody685_2995 NamedBody685_3000

def NamedBody685_3002 : StackLang.HolProg 64 :=
.seq NamedBody685_2994 NamedBody685_3001

def NamedBody685_3003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody685_3004 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_3005 : StackLang.HolProg 64 :=
.seq NamedBody685_3003 NamedBody685_3004

def NamedBody685_3006 : StackLang.HolProg 64 :=
.call (some (NamedBody685_3002, 1, 685, 70)) (Sum.inl 670) (some (NamedBody685_3005, 685, 71))

def NamedBody685_3007 : StackLang.HolProg 64 :=
.seq NamedBody685_2993 NamedBody685_3006

def NamedBody685_3008 : StackLang.HolProg 64 :=
.seq NamedBody685_2992 NamedBody685_3007

def NamedBody685_3009 : StackLang.HolProg 64 :=
.seq NamedBody685_2991 NamedBody685_3008

def NamedBody685_3010 : StackLang.HolProg 64 :=
.seq NamedBody685_2962 NamedBody685_3009

def NamedBody685_3011 : StackLang.HolProg 64 :=
.seq NamedBody685_2959 NamedBody685_3010

def NamedBody685_3012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_3013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody685_3014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_3015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2922#64)

def NamedBody685_3016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_3017 : StackLang.HolProg 64 :=
.seq NamedBody685_3015 NamedBody685_3016

def NamedBody685_3018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_3019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody685_3020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody685_3021 : StackLang.HolProg 64 :=
.seq NamedBody685_3019 NamedBody685_3020

def NamedBody685_3022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_3023 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody685_3021 NamedBody685_3022

def NamedBody685_3024 : StackLang.HolProg 64 :=
.seq NamedBody685_3018 NamedBody685_3023

def NamedBody685_3025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody685_3026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody685_3027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 73

def NamedBody685_3028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody685_3029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_3030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_3031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_3032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody685_3033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody685_3034 : StackLang.HolProg 64 :=
.seq NamedBody685_3032 NamedBody685_3033

def NamedBody685_3035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody685_3036 : StackLang.HolProg 64 :=
.seq NamedBody685_3034 NamedBody685_3035

def NamedBody685_3037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_3038 : StackLang.HolProg 64 :=
.seq NamedBody685_3036 NamedBody685_3037

def NamedBody685_3039 : StackLang.HolProg 64 :=
.seq NamedBody685_3031 NamedBody685_3038

def NamedBody685_3040 : StackLang.HolProg 64 :=
.seq NamedBody685_3030 NamedBody685_3039

def NamedBody685_3041 : StackLang.HolProg 64 :=
.seq NamedBody685_3029 NamedBody685_3040

def NamedBody685_3042 : StackLang.HolProg 64 :=
.seq NamedBody685_3028 NamedBody685_3041

def NamedBody685_3043 : StackLang.HolProg 64 :=
.seq NamedBody685_3027 NamedBody685_3042

def NamedBody685_3044 : StackLang.HolProg 64 :=
.seq NamedBody685_3026 NamedBody685_3043

def NamedBody685_3045 : StackLang.HolProg 64 :=
.seq NamedBody685_3025 NamedBody685_3044

def NamedBody685_3046 : StackLang.HolProg 64 :=
.seq NamedBody685_3024 NamedBody685_3045

def NamedBody685_3047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_3048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_3049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_3050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody685_3051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody685_3052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody685_3053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_3054 : StackLang.HolProg 64 :=
.seq NamedBody685_3052 NamedBody685_3053

def NamedBody685_3055 : StackLang.HolProg 64 :=
.seq NamedBody685_3051 NamedBody685_3054

def NamedBody685_3056 : StackLang.HolProg 64 :=
.seq NamedBody685_3050 NamedBody685_3055

def NamedBody685_3057 : StackLang.HolProg 64 :=
.seq NamedBody685_3049 NamedBody685_3056

def NamedBody685_3058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody685_3059 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody685_3060 : StackLang.HolProg 64 :=
.seq NamedBody685_3058 NamedBody685_3059

def NamedBody685_3061 : StackLang.HolProg 64 :=
.call (some (NamedBody685_3057, 1, 685, 72)) (Sum.inl 70) (some (NamedBody685_3060, 685, 73))

def NamedBody685_3062 : StackLang.HolProg 64 :=
.seq NamedBody685_3048 NamedBody685_3061

def NamedBody685_3063 : StackLang.HolProg 64 :=
.seq NamedBody685_3047 NamedBody685_3062

def NamedBody685_3064 : StackLang.HolProg 64 :=
.seq NamedBody685_3046 NamedBody685_3063

def NamedBody685_3065 : StackLang.HolProg 64 :=
.seq NamedBody685_3017 NamedBody685_3064

def NamedBody685_3066 : StackLang.HolProg 64 :=
.seq NamedBody685_3014 NamedBody685_3065

def NamedBody685_3067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody685_3068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody685_3069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody685_3070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody685_3071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody685_3072 : StackLang.HolProg 64 :=
.seq NamedBody685_3070 NamedBody685_3071

def NamedBody685_3073 : StackLang.HolProg 64 :=
.seq NamedBody685_3069 NamedBody685_3072

def NamedBody685_3074 : StackLang.HolProg 64 :=
.seq NamedBody685_3068 NamedBody685_3073

def NamedBody685_3075 : StackLang.HolProg 64 :=
.seq NamedBody685_3067 NamedBody685_3074

def NamedBody685_3076 : StackLang.HolProg 64 :=
.seq NamedBody685_3066 NamedBody685_3075

def NamedBody685_3077 : StackLang.HolProg 64 :=
.seq NamedBody685_3013 NamedBody685_3076

def NamedBody685_3078 : StackLang.HolProg 64 :=
.seq NamedBody685_3012 NamedBody685_3077

def NamedBody685_3079 : StackLang.HolProg 64 :=
.seq NamedBody685_3011 NamedBody685_3078

def NamedBody685_3080 : StackLang.HolProg 64 :=
.seq NamedBody685_2958 NamedBody685_3079

def NamedBody685_3081 : StackLang.HolProg 64 :=
.seq NamedBody685_2955 NamedBody685_3080

def NamedBody685_3082 : StackLang.HolProg 64 :=
.seq NamedBody685_2954 NamedBody685_3081

def NamedBody685_3083 : StackLang.HolProg 64 :=
.seq NamedBody685_2893 NamedBody685_3082

def NamedBody685_3084 : StackLang.HolProg 64 :=
.seq NamedBody685_2888 NamedBody685_3083

def NamedBody685_3085 : StackLang.HolProg 64 :=
.seq NamedBody685_2887 NamedBody685_3084

def NamedBody685_3086 : StackLang.HolProg 64 :=
.seq NamedBody685_2822 NamedBody685_3085

def NamedBody685_3087 : StackLang.HolProg 64 :=
.seq NamedBody685_2819 NamedBody685_3086

def NamedBody685_3088 : StackLang.HolProg 64 :=
.seq NamedBody685_2818 NamedBody685_3087

def NamedBody685_3089 : StackLang.HolProg 64 :=
.seq NamedBody685_2729 NamedBody685_3088

def NamedBody685_3090 : StackLang.HolProg 64 :=
.seq NamedBody685_2720 NamedBody685_3089

def NamedBody685_3091 : StackLang.HolProg 64 :=
.seq NamedBody685_2719 NamedBody685_3090

def NamedBody685_3092 : StackLang.HolProg 64 :=
.seq NamedBody685_2658 NamedBody685_3091

def NamedBody685_3093 : StackLang.HolProg 64 :=
.seq NamedBody685_2649 NamedBody685_3092

def NamedBody685_3094 : StackLang.HolProg 64 :=
.seq NamedBody685_2648 NamedBody685_3093

def NamedBody685_3095 : StackLang.HolProg 64 :=
.seq NamedBody685_2587 NamedBody685_3094

def NamedBody685_3096 : StackLang.HolProg 64 :=
.seq NamedBody685_2580 NamedBody685_3095

def NamedBody685_3097 : StackLang.HolProg 64 :=
.seq NamedBody685_2579 NamedBody685_3096

def NamedBody685_3098 : StackLang.HolProg 64 :=
.seq NamedBody685_2490 NamedBody685_3097

def NamedBody685_3099 : StackLang.HolProg 64 :=
.seq NamedBody685_2483 NamedBody685_3098

def NamedBody685_3100 : StackLang.HolProg 64 :=
.seq NamedBody685_2482 NamedBody685_3099

def NamedBody685_3101 : StackLang.HolProg 64 :=
.seq NamedBody685_2409 NamedBody685_3100

def NamedBody685_3102 : StackLang.HolProg 64 :=
.seq NamedBody685_2402 NamedBody685_3101

def NamedBody685_3103 : StackLang.HolProg 64 :=
.seq NamedBody685_2401 NamedBody685_3102

def NamedBody685_3104 : StackLang.HolProg 64 :=
.seq NamedBody685_2316 NamedBody685_3103

def NamedBody685_3105 : StackLang.HolProg 64 :=
.seq NamedBody685_2307 NamedBody685_3104

def NamedBody685_3106 : StackLang.HolProg 64 :=
.seq NamedBody685_2306 NamedBody685_3105

def NamedBody685_3107 : StackLang.HolProg 64 :=
.seq NamedBody685_2245 NamedBody685_3106

def NamedBody685_3108 : StackLang.HolProg 64 :=
.seq NamedBody685_2238 NamedBody685_3107

def NamedBody685_3109 : StackLang.HolProg 64 :=
.seq NamedBody685_2237 NamedBody685_3108

def NamedBody685_3110 : StackLang.HolProg 64 :=
.seq NamedBody685_2156 NamedBody685_3109

def NamedBody685_3111 : StackLang.HolProg 64 :=
.seq NamedBody685_2149 NamedBody685_3110

def NamedBody685_3112 : StackLang.HolProg 64 :=
.seq NamedBody685_2148 NamedBody685_3111

def NamedBody685_3113 : StackLang.HolProg 64 :=
.seq NamedBody685_1241 NamedBody685_3112

def NamedBody685_3114 : StackLang.HolProg 64 :=
.seq NamedBody685_1240 NamedBody685_3113

def NamedBody685_3115 : StackLang.HolProg 64 :=
.seq NamedBody685_1239 NamedBody685_3114

def NamedBody685_3116 : StackLang.HolProg 64 :=
.seq NamedBody685_1238 NamedBody685_3115

def NamedBody685_3117 : StackLang.HolProg 64 :=
.seq NamedBody685_1135 NamedBody685_3116

def NamedBody685_3118 : StackLang.HolProg 64 :=
.seq NamedBody685_1130 NamedBody685_3117

def NamedBody685_3119 : StackLang.HolProg 64 :=
.seq NamedBody685_1129 NamedBody685_3118

def NamedBody685_3120 : StackLang.HolProg 64 :=
.seq NamedBody685_472 NamedBody685_3119

def NamedBody685_3121 : StackLang.HolProg 64 :=
.seq NamedBody685_471 NamedBody685_3120

def NamedBody685_3122 : StackLang.HolProg 64 :=
.seq NamedBody685_470 NamedBody685_3121

def NamedBody685_3123 : StackLang.HolProg 64 :=
.seq NamedBody685_311 NamedBody685_3122

def NamedBody685_3124 : StackLang.HolProg 64 :=
.seq NamedBody685_308 NamedBody685_3123

def NamedBody685_3125 : StackLang.HolProg 64 :=
.seq NamedBody685_307 NamedBody685_3124

def NamedBody685_3126 : StackLang.HolProg 64 :=
.seq NamedBody685_252 NamedBody685_3125

def NamedBody685_3127 : StackLang.HolProg 64 :=
.seq NamedBody685_247 NamedBody685_3126

def NamedBody685_3128 : StackLang.HolProg 64 :=
.seq NamedBody685_246 NamedBody685_3127

def NamedBody685_3129 : StackLang.HolProg 64 :=
.seq NamedBody685_191 NamedBody685_3128

def NamedBody685_3130 : StackLang.HolProg 64 :=
.seq NamedBody685_186 NamedBody685_3129

def NamedBody685_3131 : StackLang.HolProg 64 :=
.seq NamedBody685_185 NamedBody685_3130

def NamedBody685_3132 : StackLang.HolProg 64 :=
.seq NamedBody685_130 NamedBody685_3131

def NamedBody685_3133 : StackLang.HolProg 64 :=
.seq NamedBody685_105 NamedBody685_3132

def NamedBody685_3134 : StackLang.HolProg 64 :=
.seq NamedBody685_104 NamedBody685_3133

def NamedBody685_3135 : StackLang.HolProg 64 :=
.seq NamedBody685_103 NamedBody685_3134

def NamedBody685_3136 : StackLang.HolProg 64 :=
.seq NamedBody685_102 NamedBody685_3135

def NamedBody685_3137 : StackLang.HolProg 64 :=
.seq NamedBody685_101 NamedBody685_3136

def NamedBody685_3138 : StackLang.HolProg 64 :=
.seq NamedBody685_100 NamedBody685_3137

def NamedBody685_3139 : StackLang.HolProg 64 :=
.seq NamedBody685_99 NamedBody685_3138

def NamedBody685_3140 : StackLang.HolProg 64 :=
.seq NamedBody685_98 NamedBody685_3139

def NamedBody685_3141 : StackLang.HolProg 64 :=
.seq NamedBody685_97 NamedBody685_3140

def NamedBody685_3142 : StackLang.HolProg 64 :=
.seq NamedBody685_96 NamedBody685_3141

def NamedBody685_3143 : StackLang.HolProg 64 :=
.seq NamedBody685_95 NamedBody685_3142

def NamedBody685_3144 : StackLang.HolProg 64 :=
.seq NamedBody685_94 NamedBody685_3143

def NamedBody685_3145 : StackLang.HolProg 64 :=
.seq NamedBody685_93 NamedBody685_3144

def NamedBody685_3146 : StackLang.HolProg 64 :=
.seq NamedBody685_92 NamedBody685_3145

def NamedBody685_3147 : StackLang.HolProg 64 :=
.seq NamedBody685_91 NamedBody685_3146

def NamedBody685_3148 : StackLang.HolProg 64 :=
.seq NamedBody685_90 NamedBody685_3147

def NamedBody685_3149 : StackLang.HolProg 64 :=
.seq NamedBody685_23 NamedBody685_3148

def NamedBody685_3150 : StackLang.HolProg 64 :=
.seq NamedBody685_8 NamedBody685_3149

def NamedBody685_3151 : StackLang.HolProg 64 :=
.seq NamedBody685_7 NamedBody685_3150

def NamedBody685_3152 : StackLang.HolProg 64 :=
.seq NamedBody685_6 NamedBody685_3151

def Named685 : Nat × StackLang.HolProg 64 := (685, NamedBody685_3152)
theorem Named685_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed685 = Named685 := by
  kernel_rfl
#print axioms Named685_eq
end InitECandidate.Proofs.BackendStages
