import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed792
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody792_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody792_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody792_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody792_3 : StackLang.HolProg 64 :=
.seq NamedBody792_1 NamedBody792_2

def NamedBody792_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody792_3 NamedBody792_4

def NamedBody792_6 : StackLang.HolProg 64 :=
.seq NamedBody792_0 NamedBody792_5

def NamedBody792_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody792_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody792_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody792_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody792_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody792_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody792_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody792_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody792_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody792_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody792_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_22 : StackLang.HolProg 64 :=
.seq NamedBody792_20 NamedBody792_21

def NamedBody792_23 : StackLang.HolProg 64 :=
.seq NamedBody792_19 NamedBody792_22

def NamedBody792_24 : StackLang.HolProg 64 :=
.seq NamedBody792_18 NamedBody792_23

def NamedBody792_25 : StackLang.HolProg 64 :=
.seq NamedBody792_17 NamedBody792_24

def NamedBody792_26 : StackLang.HolProg 64 :=
.seq NamedBody792_16 NamedBody792_25

def NamedBody792_27 : StackLang.HolProg 64 :=
.seq NamedBody792_15 NamedBody792_26

def NamedBody792_28 : StackLang.HolProg 64 :=
.seq NamedBody792_14 NamedBody792_27

def NamedBody792_29 : StackLang.HolProg 64 :=
.seq NamedBody792_13 NamedBody792_28

def NamedBody792_30 : StackLang.HolProg 64 :=
.seq NamedBody792_12 NamedBody792_29

def NamedBody792_31 : StackLang.HolProg 64 :=
.seq NamedBody792_11 NamedBody792_30

def NamedBody792_32 : StackLang.HolProg 64 :=
.seq NamedBody792_10 NamedBody792_31

def NamedBody792_33 : StackLang.HolProg 64 :=
.seq NamedBody792_9 NamedBody792_32

def NamedBody792_34 : StackLang.HolProg 64 :=
.seq NamedBody792_8 NamedBody792_33

def NamedBody792_35 : StackLang.HolProg 64 :=
.seq NamedBody792_7 NamedBody792_34

def NamedBody792_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3748#64)

def NamedBody792_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_39 : StackLang.HolProg 64 :=
.seq NamedBody792_37 NamedBody792_38

def NamedBody792_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody792_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody792_43 : StackLang.HolProg 64 :=
.seq NamedBody792_41 NamedBody792_42

def NamedBody792_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody792_43 NamedBody792_44

def NamedBody792_46 : StackLang.HolProg 64 :=
.seq NamedBody792_40 NamedBody792_45

def NamedBody792_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody792_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 3

def NamedBody792_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody792_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody792_56 : StackLang.HolProg 64 :=
.seq NamedBody792_54 NamedBody792_55

def NamedBody792_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody792_58 : StackLang.HolProg 64 :=
.seq NamedBody792_56 NamedBody792_57

def NamedBody792_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_60 : StackLang.HolProg 64 :=
.seq NamedBody792_58 NamedBody792_59

def NamedBody792_61 : StackLang.HolProg 64 :=
.seq NamedBody792_53 NamedBody792_60

def NamedBody792_62 : StackLang.HolProg 64 :=
.seq NamedBody792_52 NamedBody792_61

def NamedBody792_63 : StackLang.HolProg 64 :=
.seq NamedBody792_51 NamedBody792_62

def NamedBody792_64 : StackLang.HolProg 64 :=
.seq NamedBody792_50 NamedBody792_63

def NamedBody792_65 : StackLang.HolProg 64 :=
.seq NamedBody792_49 NamedBody792_64

def NamedBody792_66 : StackLang.HolProg 64 :=
.seq NamedBody792_48 NamedBody792_65

def NamedBody792_67 : StackLang.HolProg 64 :=
.seq NamedBody792_47 NamedBody792_66

def NamedBody792_68 : StackLang.HolProg 64 :=
.seq NamedBody792_46 NamedBody792_67

def NamedBody792_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody792_76 : StackLang.HolProg 64 :=
.seq NamedBody792_74 NamedBody792_75

def NamedBody792_77 : StackLang.HolProg 64 :=
.seq NamedBody792_73 NamedBody792_76

def NamedBody792_78 : StackLang.HolProg 64 :=
.seq NamedBody792_72 NamedBody792_77

def NamedBody792_79 : StackLang.HolProg 64 :=
.seq NamedBody792_71 NamedBody792_78

def NamedBody792_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_81 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody792_82 : StackLang.HolProg 64 :=
.seq NamedBody792_80 NamedBody792_81

def NamedBody792_83 : StackLang.HolProg 64 :=
.call (some (NamedBody792_79, 1, 792, 2)) (Sum.inl 69) (some (NamedBody792_82, 792, 3))

def NamedBody792_84 : StackLang.HolProg 64 :=
.seq NamedBody792_70 NamedBody792_83

def NamedBody792_85 : StackLang.HolProg 64 :=
.seq NamedBody792_69 NamedBody792_84

def NamedBody792_86 : StackLang.HolProg 64 :=
.seq NamedBody792_68 NamedBody792_85

def NamedBody792_87 : StackLang.HolProg 64 :=
.seq NamedBody792_39 NamedBody792_86

def NamedBody792_88 : StackLang.HolProg 64 :=
.seq NamedBody792_36 NamedBody792_87

def NamedBody792_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody792_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 576#64)

def NamedBody792_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody792_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3749#64)

def NamedBody792_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_95 : StackLang.HolProg 64 :=
.seq NamedBody792_93 NamedBody792_94

def NamedBody792_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody792_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody792_99 : StackLang.HolProg 64 :=
.seq NamedBody792_97 NamedBody792_98

def NamedBody792_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody792_99 NamedBody792_100

def NamedBody792_102 : StackLang.HolProg 64 :=
.seq NamedBody792_96 NamedBody792_101

def NamedBody792_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody792_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 5

def NamedBody792_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody792_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody792_112 : StackLang.HolProg 64 :=
.seq NamedBody792_110 NamedBody792_111

def NamedBody792_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody792_114 : StackLang.HolProg 64 :=
.seq NamedBody792_112 NamedBody792_113

def NamedBody792_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_116 : StackLang.HolProg 64 :=
.seq NamedBody792_114 NamedBody792_115

def NamedBody792_117 : StackLang.HolProg 64 :=
.seq NamedBody792_109 NamedBody792_116

def NamedBody792_118 : StackLang.HolProg 64 :=
.seq NamedBody792_108 NamedBody792_117

def NamedBody792_119 : StackLang.HolProg 64 :=
.seq NamedBody792_107 NamedBody792_118

def NamedBody792_120 : StackLang.HolProg 64 :=
.seq NamedBody792_106 NamedBody792_119

def NamedBody792_121 : StackLang.HolProg 64 :=
.seq NamedBody792_105 NamedBody792_120

def NamedBody792_122 : StackLang.HolProg 64 :=
.seq NamedBody792_104 NamedBody792_121

def NamedBody792_123 : StackLang.HolProg 64 :=
.seq NamedBody792_103 NamedBody792_122

def NamedBody792_124 : StackLang.HolProg 64 :=
.seq NamedBody792_102 NamedBody792_123

def NamedBody792_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody792_132 : StackLang.HolProg 64 :=
.seq NamedBody792_130 NamedBody792_131

def NamedBody792_133 : StackLang.HolProg 64 :=
.seq NamedBody792_129 NamedBody792_132

def NamedBody792_134 : StackLang.HolProg 64 :=
.seq NamedBody792_128 NamedBody792_133

def NamedBody792_135 : StackLang.HolProg 64 :=
.seq NamedBody792_127 NamedBody792_134

def NamedBody792_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody792_138 : StackLang.HolProg 64 :=
.seq NamedBody792_136 NamedBody792_137

def NamedBody792_139 : StackLang.HolProg 64 :=
.call (some (NamedBody792_135, 1, 792, 4)) (Sum.inl 68) (some (NamedBody792_138, 792, 5))

def NamedBody792_140 : StackLang.HolProg 64 :=
.seq NamedBody792_126 NamedBody792_139

def NamedBody792_141 : StackLang.HolProg 64 :=
.seq NamedBody792_125 NamedBody792_140

def NamedBody792_142 : StackLang.HolProg 64 :=
.seq NamedBody792_124 NamedBody792_141

def NamedBody792_143 : StackLang.HolProg 64 :=
.seq NamedBody792_95 NamedBody792_142

def NamedBody792_144 : StackLang.HolProg 64 :=
.seq NamedBody792_92 NamedBody792_143

def NamedBody792_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody792_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody792_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 576#64)

def NamedBody792_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3750#64)

def NamedBody792_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_152 : StackLang.HolProg 64 :=
.seq NamedBody792_150 NamedBody792_151

def NamedBody792_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody792_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody792_156 : StackLang.HolProg 64 :=
.seq NamedBody792_154 NamedBody792_155

def NamedBody792_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_158 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody792_156 NamedBody792_157

def NamedBody792_159 : StackLang.HolProg 64 :=
.seq NamedBody792_153 NamedBody792_158

def NamedBody792_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody792_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 7

def NamedBody792_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody792_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody792_169 : StackLang.HolProg 64 :=
.seq NamedBody792_167 NamedBody792_168

def NamedBody792_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody792_171 : StackLang.HolProg 64 :=
.seq NamedBody792_169 NamedBody792_170

def NamedBody792_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_173 : StackLang.HolProg 64 :=
.seq NamedBody792_171 NamedBody792_172

def NamedBody792_174 : StackLang.HolProg 64 :=
.seq NamedBody792_166 NamedBody792_173

def NamedBody792_175 : StackLang.HolProg 64 :=
.seq NamedBody792_165 NamedBody792_174

def NamedBody792_176 : StackLang.HolProg 64 :=
.seq NamedBody792_164 NamedBody792_175

def NamedBody792_177 : StackLang.HolProg 64 :=
.seq NamedBody792_163 NamedBody792_176

def NamedBody792_178 : StackLang.HolProg 64 :=
.seq NamedBody792_162 NamedBody792_177

def NamedBody792_179 : StackLang.HolProg 64 :=
.seq NamedBody792_161 NamedBody792_178

def NamedBody792_180 : StackLang.HolProg 64 :=
.seq NamedBody792_160 NamedBody792_179

def NamedBody792_181 : StackLang.HolProg 64 :=
.seq NamedBody792_159 NamedBody792_180

def NamedBody792_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_190 : StackLang.HolProg 64 :=
.seq NamedBody792_188 NamedBody792_189

def NamedBody792_191 : StackLang.HolProg 64 :=
.seq NamedBody792_187 NamedBody792_190

def NamedBody792_192 : StackLang.HolProg 64 :=
.seq NamedBody792_186 NamedBody792_191

def NamedBody792_193 : StackLang.HolProg 64 :=
.seq NamedBody792_185 NamedBody792_192

def NamedBody792_194 : StackLang.HolProg 64 :=
.seq NamedBody792_184 NamedBody792_193

def NamedBody792_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_197 : StackLang.HolProg 64 :=
.seq NamedBody792_195 NamedBody792_196

def NamedBody792_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody792_199 : StackLang.HolProg 64 :=
.seq NamedBody792_197 NamedBody792_198

def NamedBody792_200 : StackLang.HolProg 64 :=
.call (some (NamedBody792_194, 1, 792, 6)) (Sum.inl 78) (some (NamedBody792_199, 792, 7))

def NamedBody792_201 : StackLang.HolProg 64 :=
.seq NamedBody792_183 NamedBody792_200

def NamedBody792_202 : StackLang.HolProg 64 :=
.seq NamedBody792_182 NamedBody792_201

def NamedBody792_203 : StackLang.HolProg 64 :=
.seq NamedBody792_181 NamedBody792_202

def NamedBody792_204 : StackLang.HolProg 64 :=
.seq NamedBody792_152 NamedBody792_203

def NamedBody792_205 : StackLang.HolProg 64 :=
.seq NamedBody792_149 NamedBody792_204

def NamedBody792_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody792_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody792_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody792_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_211 : StackLang.HolProg 64 :=
.seq NamedBody792_209 NamedBody792_210

def NamedBody792_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3751#64)

def NamedBody792_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_215 : StackLang.HolProg 64 :=
.seq NamedBody792_213 NamedBody792_214

def NamedBody792_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody792_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody792_219 : StackLang.HolProg 64 :=
.seq NamedBody792_217 NamedBody792_218

def NamedBody792_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_221 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody792_219 NamedBody792_220

def NamedBody792_222 : StackLang.HolProg 64 :=
.seq NamedBody792_216 NamedBody792_221

def NamedBody792_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody792_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 9

def NamedBody792_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody792_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody792_232 : StackLang.HolProg 64 :=
.seq NamedBody792_230 NamedBody792_231

def NamedBody792_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody792_234 : StackLang.HolProg 64 :=
.seq NamedBody792_232 NamedBody792_233

def NamedBody792_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_236 : StackLang.HolProg 64 :=
.seq NamedBody792_234 NamedBody792_235

def NamedBody792_237 : StackLang.HolProg 64 :=
.seq NamedBody792_229 NamedBody792_236

def NamedBody792_238 : StackLang.HolProg 64 :=
.seq NamedBody792_228 NamedBody792_237

def NamedBody792_239 : StackLang.HolProg 64 :=
.seq NamedBody792_227 NamedBody792_238

def NamedBody792_240 : StackLang.HolProg 64 :=
.seq NamedBody792_226 NamedBody792_239

def NamedBody792_241 : StackLang.HolProg 64 :=
.seq NamedBody792_225 NamedBody792_240

def NamedBody792_242 : StackLang.HolProg 64 :=
.seq NamedBody792_224 NamedBody792_241

def NamedBody792_243 : StackLang.HolProg 64 :=
.seq NamedBody792_223 NamedBody792_242

def NamedBody792_244 : StackLang.HolProg 64 :=
.seq NamedBody792_222 NamedBody792_243

def NamedBody792_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_255 : StackLang.HolProg 64 :=
.seq NamedBody792_253 NamedBody792_254

def NamedBody792_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody792_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_259 : StackLang.HolProg 64 :=
.seq NamedBody792_257 NamedBody792_258

def NamedBody792_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody792_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody792_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_263 : StackLang.HolProg 64 :=
.seq NamedBody792_261 NamedBody792_262

def NamedBody792_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody792_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody792_266 : StackLang.HolProg 64 :=
.seq NamedBody792_264 NamedBody792_265

def NamedBody792_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody792_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody792_269 : StackLang.HolProg 64 :=
.seq NamedBody792_267 NamedBody792_268

def NamedBody792_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody792_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody792_272 : StackLang.HolProg 64 :=
.seq NamedBody792_270 NamedBody792_271

def NamedBody792_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody792_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody792_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody792_276 : StackLang.HolProg 64 :=
.seq NamedBody792_274 NamedBody792_275

def NamedBody792_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody792_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody792_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody792_280 : StackLang.HolProg 64 :=
.seq NamedBody792_278 NamedBody792_279

def NamedBody792_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_283 : StackLang.HolProg 64 :=
.seq NamedBody792_281 NamedBody792_282

def NamedBody792_284 : StackLang.HolProg 64 :=
.seq NamedBody792_280 NamedBody792_283

def NamedBody792_285 : StackLang.HolProg 64 :=
.seq NamedBody792_277 NamedBody792_284

def NamedBody792_286 : StackLang.HolProg 64 :=
.seq NamedBody792_276 NamedBody792_285

def NamedBody792_287 : StackLang.HolProg 64 :=
.seq NamedBody792_273 NamedBody792_286

def NamedBody792_288 : StackLang.HolProg 64 :=
.seq NamedBody792_272 NamedBody792_287

def NamedBody792_289 : StackLang.HolProg 64 :=
.seq NamedBody792_269 NamedBody792_288

def NamedBody792_290 : StackLang.HolProg 64 :=
.seq NamedBody792_266 NamedBody792_289

def NamedBody792_291 : StackLang.HolProg 64 :=
.seq NamedBody792_263 NamedBody792_290

def NamedBody792_292 : StackLang.HolProg 64 :=
.seq NamedBody792_260 NamedBody792_291

def NamedBody792_293 : StackLang.HolProg 64 :=
.seq NamedBody792_259 NamedBody792_292

def NamedBody792_294 : StackLang.HolProg 64 :=
.seq NamedBody792_256 NamedBody792_293

def NamedBody792_295 : StackLang.HolProg 64 :=
.seq NamedBody792_255 NamedBody792_294

def NamedBody792_296 : StackLang.HolProg 64 :=
.seq NamedBody792_252 NamedBody792_295

def NamedBody792_297 : StackLang.HolProg 64 :=
.seq NamedBody792_251 NamedBody792_296

def NamedBody792_298 : StackLang.HolProg 64 :=
.seq NamedBody792_250 NamedBody792_297

def NamedBody792_299 : StackLang.HolProg 64 :=
.seq NamedBody792_249 NamedBody792_298

def NamedBody792_300 : StackLang.HolProg 64 :=
.seq NamedBody792_248 NamedBody792_299

def NamedBody792_301 : StackLang.HolProg 64 :=
.seq NamedBody792_247 NamedBody792_300

def NamedBody792_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_306 : StackLang.HolProg 64 :=
.seq NamedBody792_304 NamedBody792_305

def NamedBody792_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody792_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_310 : StackLang.HolProg 64 :=
.seq NamedBody792_308 NamedBody792_309

def NamedBody792_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody792_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody792_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_314 : StackLang.HolProg 64 :=
.seq NamedBody792_312 NamedBody792_313

def NamedBody792_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody792_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody792_317 : StackLang.HolProg 64 :=
.seq NamedBody792_315 NamedBody792_316

def NamedBody792_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody792_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody792_320 : StackLang.HolProg 64 :=
.seq NamedBody792_318 NamedBody792_319

def NamedBody792_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody792_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody792_323 : StackLang.HolProg 64 :=
.seq NamedBody792_321 NamedBody792_322

def NamedBody792_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody792_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody792_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody792_327 : StackLang.HolProg 64 :=
.seq NamedBody792_325 NamedBody792_326

def NamedBody792_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody792_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody792_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody792_331 : StackLang.HolProg 64 :=
.seq NamedBody792_329 NamedBody792_330

def NamedBody792_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_334 : StackLang.HolProg 64 :=
.seq NamedBody792_332 NamedBody792_333

def NamedBody792_335 : StackLang.HolProg 64 :=
.seq NamedBody792_331 NamedBody792_334

def NamedBody792_336 : StackLang.HolProg 64 :=
.seq NamedBody792_328 NamedBody792_335

def NamedBody792_337 : StackLang.HolProg 64 :=
.seq NamedBody792_327 NamedBody792_336

def NamedBody792_338 : StackLang.HolProg 64 :=
.seq NamedBody792_324 NamedBody792_337

def NamedBody792_339 : StackLang.HolProg 64 :=
.seq NamedBody792_323 NamedBody792_338

def NamedBody792_340 : StackLang.HolProg 64 :=
.seq NamedBody792_320 NamedBody792_339

def NamedBody792_341 : StackLang.HolProg 64 :=
.seq NamedBody792_317 NamedBody792_340

def NamedBody792_342 : StackLang.HolProg 64 :=
.seq NamedBody792_314 NamedBody792_341

def NamedBody792_343 : StackLang.HolProg 64 :=
.seq NamedBody792_311 NamedBody792_342

def NamedBody792_344 : StackLang.HolProg 64 :=
.seq NamedBody792_310 NamedBody792_343

def NamedBody792_345 : StackLang.HolProg 64 :=
.seq NamedBody792_307 NamedBody792_344

def NamedBody792_346 : StackLang.HolProg 64 :=
.seq NamedBody792_306 NamedBody792_345

def NamedBody792_347 : StackLang.HolProg 64 :=
.seq NamedBody792_303 NamedBody792_346

def NamedBody792_348 : StackLang.HolProg 64 :=
.seq NamedBody792_302 NamedBody792_347

def NamedBody792_349 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody792_350 : StackLang.HolProg 64 :=
.seq NamedBody792_348 NamedBody792_349

def NamedBody792_351 : StackLang.HolProg 64 :=
.call (some (NamedBody792_301, 1, 792, 8)) (Sum.inl 729) (some (NamedBody792_350, 792, 9))

def NamedBody792_352 : StackLang.HolProg 64 :=
.seq NamedBody792_246 NamedBody792_351

def NamedBody792_353 : StackLang.HolProg 64 :=
.seq NamedBody792_245 NamedBody792_352

def NamedBody792_354 : StackLang.HolProg 64 :=
.seq NamedBody792_244 NamedBody792_353

def NamedBody792_355 : StackLang.HolProg 64 :=
.seq NamedBody792_215 NamedBody792_354

def NamedBody792_356 : StackLang.HolProg 64 :=
.seq NamedBody792_212 NamedBody792_355

def NamedBody792_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody792_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody792_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody792_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody792_364 : StackLang.HolProg 64 :=
.seq NamedBody792_362 NamedBody792_363

def NamedBody792_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3752#64)

def NamedBody792_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_368 : StackLang.HolProg 64 :=
.seq NamedBody792_366 NamedBody792_367

def NamedBody792_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody792_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody792_372 : StackLang.HolProg 64 :=
.seq NamedBody792_370 NamedBody792_371

def NamedBody792_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_374 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody792_372 NamedBody792_373

def NamedBody792_375 : StackLang.HolProg 64 :=
.seq NamedBody792_369 NamedBody792_374

def NamedBody792_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody792_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 11

def NamedBody792_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody792_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody792_385 : StackLang.HolProg 64 :=
.seq NamedBody792_383 NamedBody792_384

def NamedBody792_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody792_387 : StackLang.HolProg 64 :=
.seq NamedBody792_385 NamedBody792_386

def NamedBody792_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_389 : StackLang.HolProg 64 :=
.seq NamedBody792_387 NamedBody792_388

def NamedBody792_390 : StackLang.HolProg 64 :=
.seq NamedBody792_382 NamedBody792_389

def NamedBody792_391 : StackLang.HolProg 64 :=
.seq NamedBody792_381 NamedBody792_390

def NamedBody792_392 : StackLang.HolProg 64 :=
.seq NamedBody792_380 NamedBody792_391

def NamedBody792_393 : StackLang.HolProg 64 :=
.seq NamedBody792_379 NamedBody792_392

def NamedBody792_394 : StackLang.HolProg 64 :=
.seq NamedBody792_378 NamedBody792_393

def NamedBody792_395 : StackLang.HolProg 64 :=
.seq NamedBody792_377 NamedBody792_394

def NamedBody792_396 : StackLang.HolProg 64 :=
.seq NamedBody792_376 NamedBody792_395

def NamedBody792_397 : StackLang.HolProg 64 :=
.seq NamedBody792_375 NamedBody792_396

def NamedBody792_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody792_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_410 : StackLang.HolProg 64 :=
.seq NamedBody792_408 NamedBody792_409

def NamedBody792_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody792_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody792_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_414 : StackLang.HolProg 64 :=
.seq NamedBody792_412 NamedBody792_413

def NamedBody792_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody792_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody792_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody792_418 : StackLang.HolProg 64 :=
.seq NamedBody792_416 NamedBody792_417

def NamedBody792_419 : StackLang.HolProg 64 :=
.seq NamedBody792_415 NamedBody792_418

def NamedBody792_420 : StackLang.HolProg 64 :=
.seq NamedBody792_414 NamedBody792_419

def NamedBody792_421 : StackLang.HolProg 64 :=
.seq NamedBody792_411 NamedBody792_420

def NamedBody792_422 : StackLang.HolProg 64 :=
.seq NamedBody792_410 NamedBody792_421

def NamedBody792_423 : StackLang.HolProg 64 :=
.seq NamedBody792_407 NamedBody792_422

def NamedBody792_424 : StackLang.HolProg 64 :=
.seq NamedBody792_406 NamedBody792_423

def NamedBody792_425 : StackLang.HolProg 64 :=
.seq NamedBody792_405 NamedBody792_424

def NamedBody792_426 : StackLang.HolProg 64 :=
.seq NamedBody792_404 NamedBody792_425

def NamedBody792_427 : StackLang.HolProg 64 :=
.seq NamedBody792_403 NamedBody792_426

def NamedBody792_428 : StackLang.HolProg 64 :=
.seq NamedBody792_402 NamedBody792_427

def NamedBody792_429 : StackLang.HolProg 64 :=
.seq NamedBody792_401 NamedBody792_428

def NamedBody792_430 : StackLang.HolProg 64 :=
.seq NamedBody792_400 NamedBody792_429

def NamedBody792_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody792_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody792_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_437 : StackLang.HolProg 64 :=
.seq NamedBody792_435 NamedBody792_436

def NamedBody792_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody792_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody792_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_441 : StackLang.HolProg 64 :=
.seq NamedBody792_439 NamedBody792_440

def NamedBody792_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody792_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody792_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody792_445 : StackLang.HolProg 64 :=
.seq NamedBody792_443 NamedBody792_444

def NamedBody792_446 : StackLang.HolProg 64 :=
.seq NamedBody792_442 NamedBody792_445

def NamedBody792_447 : StackLang.HolProg 64 :=
.seq NamedBody792_441 NamedBody792_446

def NamedBody792_448 : StackLang.HolProg 64 :=
.seq NamedBody792_438 NamedBody792_447

def NamedBody792_449 : StackLang.HolProg 64 :=
.seq NamedBody792_437 NamedBody792_448

def NamedBody792_450 : StackLang.HolProg 64 :=
.seq NamedBody792_434 NamedBody792_449

def NamedBody792_451 : StackLang.HolProg 64 :=
.seq NamedBody792_433 NamedBody792_450

def NamedBody792_452 : StackLang.HolProg 64 :=
.seq NamedBody792_432 NamedBody792_451

def NamedBody792_453 : StackLang.HolProg 64 :=
.seq NamedBody792_431 NamedBody792_452

def NamedBody792_454 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody792_455 : StackLang.HolProg 64 :=
.seq NamedBody792_453 NamedBody792_454

def NamedBody792_456 : StackLang.HolProg 64 :=
.call (some (NamedBody792_430, 1, 792, 10)) (Sum.inl 742) (some (NamedBody792_455, 792, 11))

def NamedBody792_457 : StackLang.HolProg 64 :=
.seq NamedBody792_399 NamedBody792_456

def NamedBody792_458 : StackLang.HolProg 64 :=
.seq NamedBody792_398 NamedBody792_457

def NamedBody792_459 : StackLang.HolProg 64 :=
.seq NamedBody792_397 NamedBody792_458

def NamedBody792_460 : StackLang.HolProg 64 :=
.seq NamedBody792_368 NamedBody792_459

def NamedBody792_461 : StackLang.HolProg 64 :=
.seq NamedBody792_365 NamedBody792_460

def NamedBody792_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody792_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def NamedBody792_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3753#64)

def NamedBody792_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_469 : StackLang.HolProg 64 :=
.seq NamedBody792_467 NamedBody792_468

def NamedBody792_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody792_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody792_473 : StackLang.HolProg 64 :=
.seq NamedBody792_471 NamedBody792_472

def NamedBody792_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_475 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody792_473 NamedBody792_474

def NamedBody792_476 : StackLang.HolProg 64 :=
.seq NamedBody792_470 NamedBody792_475

def NamedBody792_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody792_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 13

def NamedBody792_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody792_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody792_486 : StackLang.HolProg 64 :=
.seq NamedBody792_484 NamedBody792_485

def NamedBody792_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody792_488 : StackLang.HolProg 64 :=
.seq NamedBody792_486 NamedBody792_487

def NamedBody792_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_490 : StackLang.HolProg 64 :=
.seq NamedBody792_488 NamedBody792_489

def NamedBody792_491 : StackLang.HolProg 64 :=
.seq NamedBody792_483 NamedBody792_490

def NamedBody792_492 : StackLang.HolProg 64 :=
.seq NamedBody792_482 NamedBody792_491

def NamedBody792_493 : StackLang.HolProg 64 :=
.seq NamedBody792_481 NamedBody792_492

def NamedBody792_494 : StackLang.HolProg 64 :=
.seq NamedBody792_480 NamedBody792_493

def NamedBody792_495 : StackLang.HolProg 64 :=
.seq NamedBody792_479 NamedBody792_494

def NamedBody792_496 : StackLang.HolProg 64 :=
.seq NamedBody792_478 NamedBody792_495

def NamedBody792_497 : StackLang.HolProg 64 :=
.seq NamedBody792_477 NamedBody792_496

def NamedBody792_498 : StackLang.HolProg 64 :=
.seq NamedBody792_476 NamedBody792_497

def NamedBody792_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_508 : StackLang.HolProg 64 :=
.seq NamedBody792_506 NamedBody792_507

def NamedBody792_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_510 : StackLang.HolProg 64 :=
.seq NamedBody792_508 NamedBody792_509

def NamedBody792_511 : StackLang.HolProg 64 :=
.seq NamedBody792_505 NamedBody792_510

def NamedBody792_512 : StackLang.HolProg 64 :=
.seq NamedBody792_504 NamedBody792_511

def NamedBody792_513 : StackLang.HolProg 64 :=
.seq NamedBody792_503 NamedBody792_512

def NamedBody792_514 : StackLang.HolProg 64 :=
.seq NamedBody792_502 NamedBody792_513

def NamedBody792_515 : StackLang.HolProg 64 :=
.seq NamedBody792_501 NamedBody792_514

def NamedBody792_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody792_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_519 : StackLang.HolProg 64 :=
.seq NamedBody792_517 NamedBody792_518

def NamedBody792_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody792_521 : StackLang.HolProg 64 :=
.seq NamedBody792_519 NamedBody792_520

def NamedBody792_522 : StackLang.HolProg 64 :=
.seq NamedBody792_516 NamedBody792_521

def NamedBody792_523 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody792_524 : StackLang.HolProg 64 :=
.seq NamedBody792_522 NamedBody792_523

def NamedBody792_525 : StackLang.HolProg 64 :=
.call (some (NamedBody792_515, 1, 792, 12)) (Sum.inl 742) (some (NamedBody792_524, 792, 13))

def NamedBody792_526 : StackLang.HolProg 64 :=
.seq NamedBody792_500 NamedBody792_525

def NamedBody792_527 : StackLang.HolProg 64 :=
.seq NamedBody792_499 NamedBody792_526

def NamedBody792_528 : StackLang.HolProg 64 :=
.seq NamedBody792_498 NamedBody792_527

def NamedBody792_529 : StackLang.HolProg 64 :=
.seq NamedBody792_469 NamedBody792_528

def NamedBody792_530 : StackLang.HolProg 64 :=
.seq NamedBody792_466 NamedBody792_529

def NamedBody792_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody792_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody792_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3754#64)

def NamedBody792_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_536 : StackLang.HolProg 64 :=
.seq NamedBody792_534 NamedBody792_535

def NamedBody792_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody792_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody792_540 : StackLang.HolProg 64 :=
.seq NamedBody792_538 NamedBody792_539

def NamedBody792_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_542 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody792_540 NamedBody792_541

def NamedBody792_543 : StackLang.HolProg 64 :=
.seq NamedBody792_537 NamedBody792_542

def NamedBody792_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody792_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 15

def NamedBody792_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody792_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody792_553 : StackLang.HolProg 64 :=
.seq NamedBody792_551 NamedBody792_552

def NamedBody792_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody792_555 : StackLang.HolProg 64 :=
.seq NamedBody792_553 NamedBody792_554

def NamedBody792_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_557 : StackLang.HolProg 64 :=
.seq NamedBody792_555 NamedBody792_556

def NamedBody792_558 : StackLang.HolProg 64 :=
.seq NamedBody792_550 NamedBody792_557

def NamedBody792_559 : StackLang.HolProg 64 :=
.seq NamedBody792_549 NamedBody792_558

def NamedBody792_560 : StackLang.HolProg 64 :=
.seq NamedBody792_548 NamedBody792_559

def NamedBody792_561 : StackLang.HolProg 64 :=
.seq NamedBody792_547 NamedBody792_560

def NamedBody792_562 : StackLang.HolProg 64 :=
.seq NamedBody792_546 NamedBody792_561

def NamedBody792_563 : StackLang.HolProg 64 :=
.seq NamedBody792_545 NamedBody792_562

def NamedBody792_564 : StackLang.HolProg 64 :=
.seq NamedBody792_544 NamedBody792_563

def NamedBody792_565 : StackLang.HolProg 64 :=
.seq NamedBody792_543 NamedBody792_564

def NamedBody792_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_573 : StackLang.HolProg 64 :=
.seq NamedBody792_571 NamedBody792_572

def NamedBody792_574 : StackLang.HolProg 64 :=
.seq NamedBody792_570 NamedBody792_573

def NamedBody792_575 : StackLang.HolProg 64 :=
.seq NamedBody792_569 NamedBody792_574

def NamedBody792_576 : StackLang.HolProg 64 :=
.seq NamedBody792_568 NamedBody792_575

def NamedBody792_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody792_578 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody792_579 : StackLang.HolProg 64 :=
.seq NamedBody792_577 NamedBody792_578

def NamedBody792_580 : StackLang.HolProg 64 :=
.call (some (NamedBody792_576, 1, 792, 14)) (Sum.inl 758) (some (NamedBody792_579, 792, 15))

def NamedBody792_581 : StackLang.HolProg 64 :=
.seq NamedBody792_567 NamedBody792_580

def NamedBody792_582 : StackLang.HolProg 64 :=
.seq NamedBody792_566 NamedBody792_581

def NamedBody792_583 : StackLang.HolProg 64 :=
.seq NamedBody792_565 NamedBody792_582

def NamedBody792_584 : StackLang.HolProg 64 :=
.seq NamedBody792_536 NamedBody792_583

def NamedBody792_585 : StackLang.HolProg 64 :=
.seq NamedBody792_533 NamedBody792_584

def NamedBody792_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody792_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody792_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3755#64)

def NamedBody792_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_591 : StackLang.HolProg 64 :=
.seq NamedBody792_589 NamedBody792_590

def NamedBody792_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody792_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody792_595 : StackLang.HolProg 64 :=
.seq NamedBody792_593 NamedBody792_594

def NamedBody792_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_597 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody792_595 NamedBody792_596

def NamedBody792_598 : StackLang.HolProg 64 :=
.seq NamedBody792_592 NamedBody792_597

def NamedBody792_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody792_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody792_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 17

def NamedBody792_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody792_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody792_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody792_608 : StackLang.HolProg 64 :=
.seq NamedBody792_606 NamedBody792_607

def NamedBody792_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody792_610 : StackLang.HolProg 64 :=
.seq NamedBody792_608 NamedBody792_609

def NamedBody792_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_612 : StackLang.HolProg 64 :=
.seq NamedBody792_610 NamedBody792_611

def NamedBody792_613 : StackLang.HolProg 64 :=
.seq NamedBody792_605 NamedBody792_612

def NamedBody792_614 : StackLang.HolProg 64 :=
.seq NamedBody792_604 NamedBody792_613

def NamedBody792_615 : StackLang.HolProg 64 :=
.seq NamedBody792_603 NamedBody792_614

def NamedBody792_616 : StackLang.HolProg 64 :=
.seq NamedBody792_602 NamedBody792_615

def NamedBody792_617 : StackLang.HolProg 64 :=
.seq NamedBody792_601 NamedBody792_616

def NamedBody792_618 : StackLang.HolProg 64 :=
.seq NamedBody792_600 NamedBody792_617

def NamedBody792_619 : StackLang.HolProg 64 :=
.seq NamedBody792_599 NamedBody792_618

def NamedBody792_620 : StackLang.HolProg 64 :=
.seq NamedBody792_598 NamedBody792_619

def NamedBody792_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody792_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody792_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody792_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody792_628 : StackLang.HolProg 64 :=
.seq NamedBody792_626 NamedBody792_627

def NamedBody792_629 : StackLang.HolProg 64 :=
.seq NamedBody792_625 NamedBody792_628

def NamedBody792_630 : StackLang.HolProg 64 :=
.seq NamedBody792_624 NamedBody792_629

def NamedBody792_631 : StackLang.HolProg 64 :=
.seq NamedBody792_623 NamedBody792_630

def NamedBody792_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody792_633 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody792_634 : StackLang.HolProg 64 :=
.seq NamedBody792_632 NamedBody792_633

def NamedBody792_635 : StackLang.HolProg 64 :=
.call (some (NamedBody792_631, 1, 792, 16)) (Sum.inl 70) (some (NamedBody792_634, 792, 17))

def NamedBody792_636 : StackLang.HolProg 64 :=
.seq NamedBody792_622 NamedBody792_635

def NamedBody792_637 : StackLang.HolProg 64 :=
.seq NamedBody792_621 NamedBody792_636

def NamedBody792_638 : StackLang.HolProg 64 :=
.seq NamedBody792_620 NamedBody792_637

def NamedBody792_639 : StackLang.HolProg 64 :=
.seq NamedBody792_591 NamedBody792_638

def NamedBody792_640 : StackLang.HolProg 64 :=
.seq NamedBody792_588 NamedBody792_639

def NamedBody792_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody792_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody792_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody792_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody792_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody792_646 : StackLang.HolProg 64 :=
.seq NamedBody792_644 NamedBody792_645

def NamedBody792_647 : StackLang.HolProg 64 :=
.seq NamedBody792_643 NamedBody792_646

def NamedBody792_648 : StackLang.HolProg 64 :=
.seq NamedBody792_642 NamedBody792_647

def NamedBody792_649 : StackLang.HolProg 64 :=
.seq NamedBody792_641 NamedBody792_648

def NamedBody792_650 : StackLang.HolProg 64 :=
.seq NamedBody792_640 NamedBody792_649

def NamedBody792_651 : StackLang.HolProg 64 :=
.seq NamedBody792_587 NamedBody792_650

def NamedBody792_652 : StackLang.HolProg 64 :=
.seq NamedBody792_586 NamedBody792_651

def NamedBody792_653 : StackLang.HolProg 64 :=
.seq NamedBody792_585 NamedBody792_652

def NamedBody792_654 : StackLang.HolProg 64 :=
.seq NamedBody792_532 NamedBody792_653

def NamedBody792_655 : StackLang.HolProg 64 :=
.seq NamedBody792_531 NamedBody792_654

def NamedBody792_656 : StackLang.HolProg 64 :=
.seq NamedBody792_530 NamedBody792_655

def NamedBody792_657 : StackLang.HolProg 64 :=
.seq NamedBody792_465 NamedBody792_656

def NamedBody792_658 : StackLang.HolProg 64 :=
.seq NamedBody792_464 NamedBody792_657

def NamedBody792_659 : StackLang.HolProg 64 :=
.seq NamedBody792_463 NamedBody792_658

def NamedBody792_660 : StackLang.HolProg 64 :=
.seq NamedBody792_462 NamedBody792_659

def NamedBody792_661 : StackLang.HolProg 64 :=
.seq NamedBody792_461 NamedBody792_660

def NamedBody792_662 : StackLang.HolProg 64 :=
.seq NamedBody792_364 NamedBody792_661

def NamedBody792_663 : StackLang.HolProg 64 :=
.seq NamedBody792_361 NamedBody792_662

def NamedBody792_664 : StackLang.HolProg 64 :=
.seq NamedBody792_360 NamedBody792_663

def NamedBody792_665 : StackLang.HolProg 64 :=
.seq NamedBody792_359 NamedBody792_664

def NamedBody792_666 : StackLang.HolProg 64 :=
.seq NamedBody792_358 NamedBody792_665

def NamedBody792_667 : StackLang.HolProg 64 :=
.seq NamedBody792_357 NamedBody792_666

def NamedBody792_668 : StackLang.HolProg 64 :=
.seq NamedBody792_356 NamedBody792_667

def NamedBody792_669 : StackLang.HolProg 64 :=
.seq NamedBody792_211 NamedBody792_668

def NamedBody792_670 : StackLang.HolProg 64 :=
.seq NamedBody792_208 NamedBody792_669

def NamedBody792_671 : StackLang.HolProg 64 :=
.seq NamedBody792_207 NamedBody792_670

def NamedBody792_672 : StackLang.HolProg 64 :=
.seq NamedBody792_206 NamedBody792_671

def NamedBody792_673 : StackLang.HolProg 64 :=
.seq NamedBody792_205 NamedBody792_672

def NamedBody792_674 : StackLang.HolProg 64 :=
.seq NamedBody792_148 NamedBody792_673

def NamedBody792_675 : StackLang.HolProg 64 :=
.seq NamedBody792_147 NamedBody792_674

def NamedBody792_676 : StackLang.HolProg 64 :=
.seq NamedBody792_146 NamedBody792_675

def NamedBody792_677 : StackLang.HolProg 64 :=
.seq NamedBody792_145 NamedBody792_676

def NamedBody792_678 : StackLang.HolProg 64 :=
.seq NamedBody792_144 NamedBody792_677

def NamedBody792_679 : StackLang.HolProg 64 :=
.seq NamedBody792_91 NamedBody792_678

def NamedBody792_680 : StackLang.HolProg 64 :=
.seq NamedBody792_90 NamedBody792_679

def NamedBody792_681 : StackLang.HolProg 64 :=
.seq NamedBody792_89 NamedBody792_680

def NamedBody792_682 : StackLang.HolProg 64 :=
.seq NamedBody792_88 NamedBody792_681

def NamedBody792_683 : StackLang.HolProg 64 :=
.seq NamedBody792_35 NamedBody792_682

def NamedBody792_684 : StackLang.HolProg 64 :=
.seq NamedBody792_6 NamedBody792_683

def Named792 : Nat × StackLang.HolProg 64 := (792, NamedBody792_684)
theorem Named792_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed792 = Named792 := by
  kernel_rfl
#print axioms Named792_eq
end InitECandidate.Proofs.BackendStages
