import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed310
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody310_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody310_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody310_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody310_3 : StackLang.HolProg 64 :=
.seq NamedBody310_1 NamedBody310_2

def NamedBody310_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody310_3 NamedBody310_4

def NamedBody310_6 : StackLang.HolProg 64 :=
.seq NamedBody310_0 NamedBody310_5

def NamedBody310_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody310_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody310_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody310_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody310_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody310_13 : StackLang.HolProg 64 :=
.seq NamedBody310_11 NamedBody310_12

def NamedBody310_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody310_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody310_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody310_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 18446744073709551464#64))

def NamedBody310_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 851#64)

def NamedBody310_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_22 : StackLang.HolProg 64 :=
.seq NamedBody310_20 NamedBody310_21

def NamedBody310_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody310_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody310_26 : StackLang.HolProg 64 :=
.seq NamedBody310_24 NamedBody310_25

def NamedBody310_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody310_26 NamedBody310_27

def NamedBody310_29 : StackLang.HolProg 64 :=
.seq NamedBody310_23 NamedBody310_28

def NamedBody310_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody310_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 3

def NamedBody310_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody310_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody310_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody310_39 : StackLang.HolProg 64 :=
.seq NamedBody310_37 NamedBody310_38

def NamedBody310_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody310_41 : StackLang.HolProg 64 :=
.seq NamedBody310_39 NamedBody310_40

def NamedBody310_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_43 : StackLang.HolProg 64 :=
.seq NamedBody310_41 NamedBody310_42

def NamedBody310_44 : StackLang.HolProg 64 :=
.seq NamedBody310_36 NamedBody310_43

def NamedBody310_45 : StackLang.HolProg 64 :=
.seq NamedBody310_35 NamedBody310_44

def NamedBody310_46 : StackLang.HolProg 64 :=
.seq NamedBody310_34 NamedBody310_45

def NamedBody310_47 : StackLang.HolProg 64 :=
.seq NamedBody310_33 NamedBody310_46

def NamedBody310_48 : StackLang.HolProg 64 :=
.seq NamedBody310_32 NamedBody310_47

def NamedBody310_49 : StackLang.HolProg 64 :=
.seq NamedBody310_31 NamedBody310_48

def NamedBody310_50 : StackLang.HolProg 64 :=
.seq NamedBody310_30 NamedBody310_49

def NamedBody310_51 : StackLang.HolProg 64 :=
.seq NamedBody310_29 NamedBody310_50

def NamedBody310_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_59 : StackLang.HolProg 64 :=
.seq NamedBody310_57 NamedBody310_58

def NamedBody310_60 : StackLang.HolProg 64 :=
.seq NamedBody310_56 NamedBody310_59

def NamedBody310_61 : StackLang.HolProg 64 :=
.seq NamedBody310_55 NamedBody310_60

def NamedBody310_62 : StackLang.HolProg 64 :=
.seq NamedBody310_54 NamedBody310_61

def NamedBody310_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody310_65 : StackLang.HolProg 64 :=
.seq NamedBody310_63 NamedBody310_64

def NamedBody310_66 : StackLang.HolProg 64 :=
.call (some (NamedBody310_62, 1, 310, 2)) (Sum.inl 158) (some (NamedBody310_65, 310, 3))

def NamedBody310_67 : StackLang.HolProg 64 :=
.seq NamedBody310_53 NamedBody310_66

def NamedBody310_68 : StackLang.HolProg 64 :=
.seq NamedBody310_52 NamedBody310_67

def NamedBody310_69 : StackLang.HolProg 64 :=
.seq NamedBody310_51 NamedBody310_68

def NamedBody310_70 : StackLang.HolProg 64 :=
.seq NamedBody310_22 NamedBody310_69

def NamedBody310_71 : StackLang.HolProg 64 :=
.seq NamedBody310_19 NamedBody310_70

def NamedBody310_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody310_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody310_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 852#64)

def NamedBody310_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_78 : StackLang.HolProg 64 :=
.seq NamedBody310_76 NamedBody310_77

def NamedBody310_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody310_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody310_82 : StackLang.HolProg 64 :=
.seq NamedBody310_80 NamedBody310_81

def NamedBody310_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody310_82 NamedBody310_83

def NamedBody310_85 : StackLang.HolProg 64 :=
.seq NamedBody310_79 NamedBody310_84

def NamedBody310_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody310_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 5

def NamedBody310_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody310_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody310_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody310_95 : StackLang.HolProg 64 :=
.seq NamedBody310_93 NamedBody310_94

def NamedBody310_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody310_97 : StackLang.HolProg 64 :=
.seq NamedBody310_95 NamedBody310_96

def NamedBody310_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_99 : StackLang.HolProg 64 :=
.seq NamedBody310_97 NamedBody310_98

def NamedBody310_100 : StackLang.HolProg 64 :=
.seq NamedBody310_92 NamedBody310_99

def NamedBody310_101 : StackLang.HolProg 64 :=
.seq NamedBody310_91 NamedBody310_100

def NamedBody310_102 : StackLang.HolProg 64 :=
.seq NamedBody310_90 NamedBody310_101

def NamedBody310_103 : StackLang.HolProg 64 :=
.seq NamedBody310_89 NamedBody310_102

def NamedBody310_104 : StackLang.HolProg 64 :=
.seq NamedBody310_88 NamedBody310_103

def NamedBody310_105 : StackLang.HolProg 64 :=
.seq NamedBody310_87 NamedBody310_104

def NamedBody310_106 : StackLang.HolProg 64 :=
.seq NamedBody310_86 NamedBody310_105

def NamedBody310_107 : StackLang.HolProg 64 :=
.seq NamedBody310_85 NamedBody310_106

def NamedBody310_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody310_115 : StackLang.HolProg 64 :=
.seq NamedBody310_113 NamedBody310_114

def NamedBody310_116 : StackLang.HolProg 64 :=
.seq NamedBody310_112 NamedBody310_115

def NamedBody310_117 : StackLang.HolProg 64 :=
.seq NamedBody310_111 NamedBody310_116

def NamedBody310_118 : StackLang.HolProg 64 :=
.seq NamedBody310_110 NamedBody310_117

def NamedBody310_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody310_121 : StackLang.HolProg 64 :=
.seq NamedBody310_119 NamedBody310_120

def NamedBody310_122 : StackLang.HolProg 64 :=
.call (some (NamedBody310_118, 1, 310, 4)) (Sum.inl 68) (some (NamedBody310_121, 310, 5))

def NamedBody310_123 : StackLang.HolProg 64 :=
.seq NamedBody310_109 NamedBody310_122

def NamedBody310_124 : StackLang.HolProg 64 :=
.seq NamedBody310_108 NamedBody310_123

def NamedBody310_125 : StackLang.HolProg 64 :=
.seq NamedBody310_107 NamedBody310_124

def NamedBody310_126 : StackLang.HolProg 64 :=
.seq NamedBody310_78 NamedBody310_125

def NamedBody310_127 : StackLang.HolProg 64 :=
.seq NamedBody310_75 NamedBody310_126

def NamedBody310_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody310_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody310_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody310_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody310_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551464#64))

def NamedBody310_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody310_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody310_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 853#64)

def NamedBody310_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_139 : StackLang.HolProg 64 :=
.seq NamedBody310_137 NamedBody310_138

def NamedBody310_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody310_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody310_143 : StackLang.HolProg 64 :=
.seq NamedBody310_141 NamedBody310_142

def NamedBody310_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody310_143 NamedBody310_144

def NamedBody310_146 : StackLang.HolProg 64 :=
.seq NamedBody310_140 NamedBody310_145

def NamedBody310_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody310_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 7

def NamedBody310_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody310_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody310_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody310_156 : StackLang.HolProg 64 :=
.seq NamedBody310_154 NamedBody310_155

def NamedBody310_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody310_158 : StackLang.HolProg 64 :=
.seq NamedBody310_156 NamedBody310_157

def NamedBody310_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_160 : StackLang.HolProg 64 :=
.seq NamedBody310_158 NamedBody310_159

def NamedBody310_161 : StackLang.HolProg 64 :=
.seq NamedBody310_153 NamedBody310_160

def NamedBody310_162 : StackLang.HolProg 64 :=
.seq NamedBody310_152 NamedBody310_161

def NamedBody310_163 : StackLang.HolProg 64 :=
.seq NamedBody310_151 NamedBody310_162

def NamedBody310_164 : StackLang.HolProg 64 :=
.seq NamedBody310_150 NamedBody310_163

def NamedBody310_165 : StackLang.HolProg 64 :=
.seq NamedBody310_149 NamedBody310_164

def NamedBody310_166 : StackLang.HolProg 64 :=
.seq NamedBody310_148 NamedBody310_165

def NamedBody310_167 : StackLang.HolProg 64 :=
.seq NamedBody310_147 NamedBody310_166

def NamedBody310_168 : StackLang.HolProg 64 :=
.seq NamedBody310_146 NamedBody310_167

def NamedBody310_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody310_177 : StackLang.HolProg 64 :=
.seq NamedBody310_175 NamedBody310_176

def NamedBody310_178 : StackLang.HolProg 64 :=
.seq NamedBody310_174 NamedBody310_177

def NamedBody310_179 : StackLang.HolProg 64 :=
.seq NamedBody310_173 NamedBody310_178

def NamedBody310_180 : StackLang.HolProg 64 :=
.seq NamedBody310_172 NamedBody310_179

def NamedBody310_181 : StackLang.HolProg 64 :=
.seq NamedBody310_171 NamedBody310_180

def NamedBody310_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody310_184 : StackLang.HolProg 64 :=
.seq NamedBody310_182 NamedBody310_183

def NamedBody310_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody310_186 : StackLang.HolProg 64 :=
.seq NamedBody310_184 NamedBody310_185

def NamedBody310_187 : StackLang.HolProg 64 :=
.call (some (NamedBody310_181, 1, 310, 6)) (Sum.inl 288) (some (NamedBody310_186, 310, 7))

def NamedBody310_188 : StackLang.HolProg 64 :=
.seq NamedBody310_170 NamedBody310_187

def NamedBody310_189 : StackLang.HolProg 64 :=
.seq NamedBody310_169 NamedBody310_188

def NamedBody310_190 : StackLang.HolProg 64 :=
.seq NamedBody310_168 NamedBody310_189

def NamedBody310_191 : StackLang.HolProg 64 :=
.seq NamedBody310_139 NamedBody310_190

def NamedBody310_192 : StackLang.HolProg 64 :=
.seq NamedBody310_136 NamedBody310_191

def NamedBody310_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody310_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 64#64)

def NamedBody310_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody310_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody310_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody310_199 : StackLang.HolProg 64 :=
.seq NamedBody310_197 NamedBody310_198

def NamedBody310_200 : StackLang.HolProg 64 :=
.seq NamedBody310_196 NamedBody310_199

def NamedBody310_201 : StackLang.HolProg 64 :=
.seq NamedBody310_195 NamedBody310_200

def NamedBody310_202 : StackLang.HolProg 64 :=
.seq NamedBody310_194 NamedBody310_201

def NamedBody310_203 : StackLang.HolProg 64 :=
.seq NamedBody310_193 NamedBody310_202

def NamedBody310_204 : StackLang.HolProg 64 :=
.seq NamedBody310_192 NamedBody310_203

def NamedBody310_205 : StackLang.HolProg 64 :=
.seq NamedBody310_135 NamedBody310_204

def NamedBody310_206 : StackLang.HolProg 64 :=
.seq NamedBody310_134 NamedBody310_205

def NamedBody310_207 : StackLang.HolProg 64 :=
.seq NamedBody310_133 NamedBody310_206

def NamedBody310_208 : StackLang.HolProg 64 :=
.seq NamedBody310_132 NamedBody310_207

def NamedBody310_209 : StackLang.HolProg 64 :=
.seq NamedBody310_131 NamedBody310_208

def NamedBody310_210 : StackLang.HolProg 64 :=
.seq NamedBody310_130 NamedBody310_209

def NamedBody310_211 : StackLang.HolProg 64 :=
.seq NamedBody310_129 NamedBody310_210

def NamedBody310_212 : StackLang.HolProg 64 :=
.seq NamedBody310_128 NamedBody310_211

def NamedBody310_213 : StackLang.HolProg 64 :=
.seq NamedBody310_127 NamedBody310_212

def NamedBody310_214 : StackLang.HolProg 64 :=
.seq NamedBody310_74 NamedBody310_213

def NamedBody310_215 : StackLang.HolProg 64 :=
.seq NamedBody310_73 NamedBody310_214

def NamedBody310_216 : StackLang.HolProg 64 :=
.seq NamedBody310_72 NamedBody310_215

def NamedBody310_217 : StackLang.HolProg 64 :=
.seq NamedBody310_71 NamedBody310_216

def NamedBody310_218 : StackLang.HolProg 64 :=
.seq NamedBody310_18 NamedBody310_217

def NamedBody310_219 : StackLang.HolProg 64 :=
.seq NamedBody310_17 NamedBody310_218

def NamedBody310_220 : StackLang.HolProg 64 :=
.seq NamedBody310_16 NamedBody310_219

def NamedBody310_221 : StackLang.HolProg 64 :=
.seq NamedBody310_15 NamedBody310_220

def NamedBody310_222 : StackLang.HolProg 64 :=
.seq NamedBody310_14 NamedBody310_221

def NamedBody310_223 : StackLang.HolProg 64 :=
.seq NamedBody310_13 NamedBody310_222

def NamedBody310_224 : StackLang.HolProg 64 :=
.seq NamedBody310_10 NamedBody310_223

def NamedBody310_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody310_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody310_227 : StackLang.HolProg 64 :=
.seq NamedBody310_225 NamedBody310_226

def NamedBody310_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody310_224 NamedBody310_227

def NamedBody310_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody310_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody310_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody310_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 854#64)

def NamedBody310_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_237 : StackLang.HolProg 64 :=
.seq NamedBody310_235 NamedBody310_236

def NamedBody310_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody310_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody310_241 : StackLang.HolProg 64 :=
.seq NamedBody310_239 NamedBody310_240

def NamedBody310_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_243 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody310_241 NamedBody310_242

def NamedBody310_244 : StackLang.HolProg 64 :=
.seq NamedBody310_238 NamedBody310_243

def NamedBody310_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody310_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 9

def NamedBody310_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody310_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody310_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody310_254 : StackLang.HolProg 64 :=
.seq NamedBody310_252 NamedBody310_253

def NamedBody310_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody310_256 : StackLang.HolProg 64 :=
.seq NamedBody310_254 NamedBody310_255

def NamedBody310_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_258 : StackLang.HolProg 64 :=
.seq NamedBody310_256 NamedBody310_257

def NamedBody310_259 : StackLang.HolProg 64 :=
.seq NamedBody310_251 NamedBody310_258

def NamedBody310_260 : StackLang.HolProg 64 :=
.seq NamedBody310_250 NamedBody310_259

def NamedBody310_261 : StackLang.HolProg 64 :=
.seq NamedBody310_249 NamedBody310_260

def NamedBody310_262 : StackLang.HolProg 64 :=
.seq NamedBody310_248 NamedBody310_261

def NamedBody310_263 : StackLang.HolProg 64 :=
.seq NamedBody310_247 NamedBody310_262

def NamedBody310_264 : StackLang.HolProg 64 :=
.seq NamedBody310_246 NamedBody310_263

def NamedBody310_265 : StackLang.HolProg 64 :=
.seq NamedBody310_245 NamedBody310_264

def NamedBody310_266 : StackLang.HolProg 64 :=
.seq NamedBody310_244 NamedBody310_265

def NamedBody310_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody310_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody310_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_276 : StackLang.HolProg 64 :=
.seq NamedBody310_274 NamedBody310_275

def NamedBody310_277 : StackLang.HolProg 64 :=
.seq NamedBody310_273 NamedBody310_276

def NamedBody310_278 : StackLang.HolProg 64 :=
.seq NamedBody310_272 NamedBody310_277

def NamedBody310_279 : StackLang.HolProg 64 :=
.seq NamedBody310_271 NamedBody310_278

def NamedBody310_280 : StackLang.HolProg 64 :=
.seq NamedBody310_270 NamedBody310_279

def NamedBody310_281 : StackLang.HolProg 64 :=
.seq NamedBody310_269 NamedBody310_280

def NamedBody310_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody310_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_284 : StackLang.HolProg 64 :=
.seq NamedBody310_282 NamedBody310_283

def NamedBody310_285 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody310_286 : StackLang.HolProg 64 :=
.seq NamedBody310_284 NamedBody310_285

def NamedBody310_287 : StackLang.HolProg 64 :=
.call (some (NamedBody310_281, 1, 310, 8)) (Sum.inl 68) (some (NamedBody310_286, 310, 9))

def NamedBody310_288 : StackLang.HolProg 64 :=
.seq NamedBody310_268 NamedBody310_287

def NamedBody310_289 : StackLang.HolProg 64 :=
.seq NamedBody310_267 NamedBody310_288

def NamedBody310_290 : StackLang.HolProg 64 :=
.seq NamedBody310_266 NamedBody310_289

def NamedBody310_291 : StackLang.HolProg 64 :=
.seq NamedBody310_237 NamedBody310_290

def NamedBody310_292 : StackLang.HolProg 64 :=
.seq NamedBody310_234 NamedBody310_291

def NamedBody310_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody310_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody310_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody310_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_297 : StackLang.HolProg 64 :=
.seq NamedBody310_295 NamedBody310_296

def NamedBody310_298 : StackLang.HolProg 64 :=
.seq NamedBody310_294 NamedBody310_297

def NamedBody310_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 855#64)

def NamedBody310_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_302 : StackLang.HolProg 64 :=
.seq NamedBody310_300 NamedBody310_301

def NamedBody310_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody310_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody310_306 : StackLang.HolProg 64 :=
.seq NamedBody310_304 NamedBody310_305

def NamedBody310_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_308 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody310_306 NamedBody310_307

def NamedBody310_309 : StackLang.HolProg 64 :=
.seq NamedBody310_303 NamedBody310_308

def NamedBody310_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody310_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody310_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 11

def NamedBody310_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody310_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody310_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody310_319 : StackLang.HolProg 64 :=
.seq NamedBody310_317 NamedBody310_318

def NamedBody310_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody310_321 : StackLang.HolProg 64 :=
.seq NamedBody310_319 NamedBody310_320

def NamedBody310_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_323 : StackLang.HolProg 64 :=
.seq NamedBody310_321 NamedBody310_322

def NamedBody310_324 : StackLang.HolProg 64 :=
.seq NamedBody310_316 NamedBody310_323

def NamedBody310_325 : StackLang.HolProg 64 :=
.seq NamedBody310_315 NamedBody310_324

def NamedBody310_326 : StackLang.HolProg 64 :=
.seq NamedBody310_314 NamedBody310_325

def NamedBody310_327 : StackLang.HolProg 64 :=
.seq NamedBody310_313 NamedBody310_326

def NamedBody310_328 : StackLang.HolProg 64 :=
.seq NamedBody310_312 NamedBody310_327

def NamedBody310_329 : StackLang.HolProg 64 :=
.seq NamedBody310_311 NamedBody310_328

def NamedBody310_330 : StackLang.HolProg 64 :=
.seq NamedBody310_310 NamedBody310_329

def NamedBody310_331 : StackLang.HolProg 64 :=
.seq NamedBody310_309 NamedBody310_330

def NamedBody310_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody310_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody310_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody310_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody310_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_341 : StackLang.HolProg 64 :=
.seq NamedBody310_339 NamedBody310_340

def NamedBody310_342 : StackLang.HolProg 64 :=
.seq NamedBody310_338 NamedBody310_341

def NamedBody310_343 : StackLang.HolProg 64 :=
.seq NamedBody310_337 NamedBody310_342

def NamedBody310_344 : StackLang.HolProg 64 :=
.seq NamedBody310_336 NamedBody310_343

def NamedBody310_345 : StackLang.HolProg 64 :=
.seq NamedBody310_335 NamedBody310_344

def NamedBody310_346 : StackLang.HolProg 64 :=
.seq NamedBody310_334 NamedBody310_345

def NamedBody310_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody310_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody310_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody310_350 : StackLang.HolProg 64 :=
.seq NamedBody310_348 NamedBody310_349

def NamedBody310_351 : StackLang.HolProg 64 :=
.seq NamedBody310_347 NamedBody310_350

def NamedBody310_352 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody310_353 : StackLang.HolProg 64 :=
.seq NamedBody310_351 NamedBody310_352

def NamedBody310_354 : StackLang.HolProg 64 :=
.call (some (NamedBody310_346, 1, 310, 10)) (Sum.inl 288) (some (NamedBody310_353, 310, 11))

def NamedBody310_355 : StackLang.HolProg 64 :=
.seq NamedBody310_333 NamedBody310_354

def NamedBody310_356 : StackLang.HolProg 64 :=
.seq NamedBody310_332 NamedBody310_355

def NamedBody310_357 : StackLang.HolProg 64 :=
.seq NamedBody310_331 NamedBody310_356

def NamedBody310_358 : StackLang.HolProg 64 :=
.seq NamedBody310_302 NamedBody310_357

def NamedBody310_359 : StackLang.HolProg 64 :=
.seq NamedBody310_299 NamedBody310_358

def NamedBody310_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody310_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody310_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody310_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody310_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody310_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody310_366 : StackLang.HolProg 64 :=
.seq NamedBody310_364 NamedBody310_365

def NamedBody310_367 : StackLang.HolProg 64 :=
.seq NamedBody310_363 NamedBody310_366

def NamedBody310_368 : StackLang.HolProg 64 :=
.seq NamedBody310_362 NamedBody310_367

def NamedBody310_369 : StackLang.HolProg 64 :=
.seq NamedBody310_361 NamedBody310_368

def NamedBody310_370 : StackLang.HolProg 64 :=
.seq NamedBody310_360 NamedBody310_369

def NamedBody310_371 : StackLang.HolProg 64 :=
.seq NamedBody310_359 NamedBody310_370

def NamedBody310_372 : StackLang.HolProg 64 :=
.seq NamedBody310_298 NamedBody310_371

def NamedBody310_373 : StackLang.HolProg 64 :=
.seq NamedBody310_293 NamedBody310_372

def NamedBody310_374 : StackLang.HolProg 64 :=
.seq NamedBody310_292 NamedBody310_373

def NamedBody310_375 : StackLang.HolProg 64 :=
.seq NamedBody310_233 NamedBody310_374

def NamedBody310_376 : StackLang.HolProg 64 :=
.seq NamedBody310_232 NamedBody310_375

def NamedBody310_377 : StackLang.HolProg 64 :=
.seq NamedBody310_231 NamedBody310_376

def NamedBody310_378 : StackLang.HolProg 64 :=
.seq NamedBody310_230 NamedBody310_377

def NamedBody310_379 : StackLang.HolProg 64 :=
.seq NamedBody310_229 NamedBody310_378

def NamedBody310_380 : StackLang.HolProg 64 :=
.seq NamedBody310_228 NamedBody310_379

def NamedBody310_381 : StackLang.HolProg 64 :=
.seq NamedBody310_9 NamedBody310_380

def NamedBody310_382 : StackLang.HolProg 64 :=
.seq NamedBody310_8 NamedBody310_381

def NamedBody310_383 : StackLang.HolProg 64 :=
.seq NamedBody310_7 NamedBody310_382

def NamedBody310_384 : StackLang.HolProg 64 :=
.seq NamedBody310_6 NamedBody310_383

def Named310 : Nat × StackLang.HolProg 64 := (310, NamedBody310_384)
theorem Named310_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed310 = Named310 := by
  kernel_rfl
#print axioms Named310_eq
end InitECandidate.Proofs.BackendStages
