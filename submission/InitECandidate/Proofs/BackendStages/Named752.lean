import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed752
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody752_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody752_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_3 : StackLang.HolProg 64 :=
.seq NamedBody752_1 NamedBody752_2

def NamedBody752_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_3 NamedBody752_4

def NamedBody752_6 : StackLang.HolProg 64 :=
.seq NamedBody752_0 NamedBody752_5

def NamedBody752_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody752_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_11 : StackLang.HolProg 64 :=
.seq NamedBody752_9 NamedBody752_10

def NamedBody752_12 : StackLang.HolProg 64 :=
.seq NamedBody752_8 NamedBody752_11

def NamedBody752_13 : StackLang.HolProg 64 :=
.seq NamedBody752_7 NamedBody752_12

def NamedBody752_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3320#64)

def NamedBody752_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_17 : StackLang.HolProg 64 :=
.seq NamedBody752_15 NamedBody752_16

def NamedBody752_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_21 : StackLang.HolProg 64 :=
.seq NamedBody752_19 NamedBody752_20

def NamedBody752_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_21 NamedBody752_22

def NamedBody752_24 : StackLang.HolProg 64 :=
.seq NamedBody752_18 NamedBody752_23

def NamedBody752_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 3

def NamedBody752_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_34 : StackLang.HolProg 64 :=
.seq NamedBody752_32 NamedBody752_33

def NamedBody752_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_36 : StackLang.HolProg 64 :=
.seq NamedBody752_34 NamedBody752_35

def NamedBody752_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_38 : StackLang.HolProg 64 :=
.seq NamedBody752_36 NamedBody752_37

def NamedBody752_39 : StackLang.HolProg 64 :=
.seq NamedBody752_31 NamedBody752_38

def NamedBody752_40 : StackLang.HolProg 64 :=
.seq NamedBody752_30 NamedBody752_39

def NamedBody752_41 : StackLang.HolProg 64 :=
.seq NamedBody752_29 NamedBody752_40

def NamedBody752_42 : StackLang.HolProg 64 :=
.seq NamedBody752_28 NamedBody752_41

def NamedBody752_43 : StackLang.HolProg 64 :=
.seq NamedBody752_27 NamedBody752_42

def NamedBody752_44 : StackLang.HolProg 64 :=
.seq NamedBody752_26 NamedBody752_43

def NamedBody752_45 : StackLang.HolProg 64 :=
.seq NamedBody752_25 NamedBody752_44

def NamedBody752_46 : StackLang.HolProg 64 :=
.seq NamedBody752_24 NamedBody752_45

def NamedBody752_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody752_54 : StackLang.HolProg 64 :=
.seq NamedBody752_52 NamedBody752_53

def NamedBody752_55 : StackLang.HolProg 64 :=
.seq NamedBody752_51 NamedBody752_54

def NamedBody752_56 : StackLang.HolProg 64 :=
.seq NamedBody752_50 NamedBody752_55

def NamedBody752_57 : StackLang.HolProg 64 :=
.seq NamedBody752_49 NamedBody752_56

def NamedBody752_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_60 : StackLang.HolProg 64 :=
.seq NamedBody752_58 NamedBody752_59

def NamedBody752_61 : StackLang.HolProg 64 :=
.call (some (NamedBody752_57, 1, 752, 2)) (Sum.inl 69) (some (NamedBody752_60, 752, 3))

def NamedBody752_62 : StackLang.HolProg 64 :=
.seq NamedBody752_48 NamedBody752_61

def NamedBody752_63 : StackLang.HolProg 64 :=
.seq NamedBody752_47 NamedBody752_62

def NamedBody752_64 : StackLang.HolProg 64 :=
.seq NamedBody752_46 NamedBody752_63

def NamedBody752_65 : StackLang.HolProg 64 :=
.seq NamedBody752_17 NamedBody752_64

def NamedBody752_66 : StackLang.HolProg 64 :=
.seq NamedBody752_14 NamedBody752_65

def NamedBody752_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 960#64)

def NamedBody752_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3321#64)

def NamedBody752_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_73 : StackLang.HolProg 64 :=
.seq NamedBody752_71 NamedBody752_72

def NamedBody752_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_77 : StackLang.HolProg 64 :=
.seq NamedBody752_75 NamedBody752_76

def NamedBody752_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_77 NamedBody752_78

def NamedBody752_80 : StackLang.HolProg 64 :=
.seq NamedBody752_74 NamedBody752_79

def NamedBody752_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 5

def NamedBody752_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_90 : StackLang.HolProg 64 :=
.seq NamedBody752_88 NamedBody752_89

def NamedBody752_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_92 : StackLang.HolProg 64 :=
.seq NamedBody752_90 NamedBody752_91

def NamedBody752_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_94 : StackLang.HolProg 64 :=
.seq NamedBody752_92 NamedBody752_93

def NamedBody752_95 : StackLang.HolProg 64 :=
.seq NamedBody752_87 NamedBody752_94

def NamedBody752_96 : StackLang.HolProg 64 :=
.seq NamedBody752_86 NamedBody752_95

def NamedBody752_97 : StackLang.HolProg 64 :=
.seq NamedBody752_85 NamedBody752_96

def NamedBody752_98 : StackLang.HolProg 64 :=
.seq NamedBody752_84 NamedBody752_97

def NamedBody752_99 : StackLang.HolProg 64 :=
.seq NamedBody752_83 NamedBody752_98

def NamedBody752_100 : StackLang.HolProg 64 :=
.seq NamedBody752_82 NamedBody752_99

def NamedBody752_101 : StackLang.HolProg 64 :=
.seq NamedBody752_81 NamedBody752_100

def NamedBody752_102 : StackLang.HolProg 64 :=
.seq NamedBody752_80 NamedBody752_101

def NamedBody752_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody752_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_112 : StackLang.HolProg 64 :=
.seq NamedBody752_110 NamedBody752_111

def NamedBody752_113 : StackLang.HolProg 64 :=
.seq NamedBody752_109 NamedBody752_112

def NamedBody752_114 : StackLang.HolProg 64 :=
.seq NamedBody752_108 NamedBody752_113

def NamedBody752_115 : StackLang.HolProg 64 :=
.seq NamedBody752_107 NamedBody752_114

def NamedBody752_116 : StackLang.HolProg 64 :=
.seq NamedBody752_106 NamedBody752_115

def NamedBody752_117 : StackLang.HolProg 64 :=
.seq NamedBody752_105 NamedBody752_116

def NamedBody752_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_120 : StackLang.HolProg 64 :=
.seq NamedBody752_118 NamedBody752_119

def NamedBody752_121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_122 : StackLang.HolProg 64 :=
.seq NamedBody752_120 NamedBody752_121

def NamedBody752_123 : StackLang.HolProg 64 :=
.call (some (NamedBody752_117, 1, 752, 4)) (Sum.inl 68) (some (NamedBody752_122, 752, 5))

def NamedBody752_124 : StackLang.HolProg 64 :=
.seq NamedBody752_104 NamedBody752_123

def NamedBody752_125 : StackLang.HolProg 64 :=
.seq NamedBody752_103 NamedBody752_124

def NamedBody752_126 : StackLang.HolProg 64 :=
.seq NamedBody752_102 NamedBody752_125

def NamedBody752_127 : StackLang.HolProg 64 :=
.seq NamedBody752_73 NamedBody752_126

def NamedBody752_128 : StackLang.HolProg 64 :=
.seq NamedBody752_70 NamedBody752_127

def NamedBody752_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody752_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_134 : StackLang.HolProg 64 :=
.seq NamedBody752_132 NamedBody752_133

def NamedBody752_135 : StackLang.HolProg 64 :=
.seq NamedBody752_131 NamedBody752_134

def NamedBody752_136 : StackLang.HolProg 64 :=
.seq NamedBody752_130 NamedBody752_135

def NamedBody752_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3322#64)

def NamedBody752_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_140 : StackLang.HolProg 64 :=
.seq NamedBody752_138 NamedBody752_139

def NamedBody752_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_144 : StackLang.HolProg 64 :=
.seq NamedBody752_142 NamedBody752_143

def NamedBody752_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_144 NamedBody752_145

def NamedBody752_147 : StackLang.HolProg 64 :=
.seq NamedBody752_141 NamedBody752_146

def NamedBody752_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 7

def NamedBody752_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_157 : StackLang.HolProg 64 :=
.seq NamedBody752_155 NamedBody752_156

def NamedBody752_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_159 : StackLang.HolProg 64 :=
.seq NamedBody752_157 NamedBody752_158

def NamedBody752_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_161 : StackLang.HolProg 64 :=
.seq NamedBody752_159 NamedBody752_160

def NamedBody752_162 : StackLang.HolProg 64 :=
.seq NamedBody752_154 NamedBody752_161

def NamedBody752_163 : StackLang.HolProg 64 :=
.seq NamedBody752_153 NamedBody752_162

def NamedBody752_164 : StackLang.HolProg 64 :=
.seq NamedBody752_152 NamedBody752_163

def NamedBody752_165 : StackLang.HolProg 64 :=
.seq NamedBody752_151 NamedBody752_164

def NamedBody752_166 : StackLang.HolProg 64 :=
.seq NamedBody752_150 NamedBody752_165

def NamedBody752_167 : StackLang.HolProg 64 :=
.seq NamedBody752_149 NamedBody752_166

def NamedBody752_168 : StackLang.HolProg 64 :=
.seq NamedBody752_148 NamedBody752_167

def NamedBody752_169 : StackLang.HolProg 64 :=
.seq NamedBody752_147 NamedBody752_168

def NamedBody752_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_179 : StackLang.HolProg 64 :=
.seq NamedBody752_177 NamedBody752_178

def NamedBody752_180 : StackLang.HolProg 64 :=
.seq NamedBody752_176 NamedBody752_179

def NamedBody752_181 : StackLang.HolProg 64 :=
.seq NamedBody752_175 NamedBody752_180

def NamedBody752_182 : StackLang.HolProg 64 :=
.seq NamedBody752_174 NamedBody752_181

def NamedBody752_183 : StackLang.HolProg 64 :=
.seq NamedBody752_173 NamedBody752_182

def NamedBody752_184 : StackLang.HolProg 64 :=
.seq NamedBody752_172 NamedBody752_183

def NamedBody752_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_188 : StackLang.HolProg 64 :=
.seq NamedBody752_186 NamedBody752_187

def NamedBody752_189 : StackLang.HolProg 64 :=
.seq NamedBody752_185 NamedBody752_188

def NamedBody752_190 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_191 : StackLang.HolProg 64 :=
.seq NamedBody752_189 NamedBody752_190

def NamedBody752_192 : StackLang.HolProg 64 :=
.call (some (NamedBody752_184, 1, 752, 6)) (Sum.inl 739) (some (NamedBody752_191, 752, 7))

def NamedBody752_193 : StackLang.HolProg 64 :=
.seq NamedBody752_171 NamedBody752_192

def NamedBody752_194 : StackLang.HolProg 64 :=
.seq NamedBody752_170 NamedBody752_193

def NamedBody752_195 : StackLang.HolProg 64 :=
.seq NamedBody752_169 NamedBody752_194

def NamedBody752_196 : StackLang.HolProg 64 :=
.seq NamedBody752_140 NamedBody752_195

def NamedBody752_197 : StackLang.HolProg 64 :=
.seq NamedBody752_137 NamedBody752_196

def NamedBody752_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody752_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody752_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_206 : StackLang.HolProg 64 :=
.seq NamedBody752_204 NamedBody752_205

def NamedBody752_207 : StackLang.HolProg 64 :=
.seq NamedBody752_203 NamedBody752_206

def NamedBody752_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3323#64)

def NamedBody752_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_211 : StackLang.HolProg 64 :=
.seq NamedBody752_209 NamedBody752_210

def NamedBody752_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_215 : StackLang.HolProg 64 :=
.seq NamedBody752_213 NamedBody752_214

def NamedBody752_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_217 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_215 NamedBody752_216

def NamedBody752_218 : StackLang.HolProg 64 :=
.seq NamedBody752_212 NamedBody752_217

def NamedBody752_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 9

def NamedBody752_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_228 : StackLang.HolProg 64 :=
.seq NamedBody752_226 NamedBody752_227

def NamedBody752_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_230 : StackLang.HolProg 64 :=
.seq NamedBody752_228 NamedBody752_229

def NamedBody752_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_232 : StackLang.HolProg 64 :=
.seq NamedBody752_230 NamedBody752_231

def NamedBody752_233 : StackLang.HolProg 64 :=
.seq NamedBody752_225 NamedBody752_232

def NamedBody752_234 : StackLang.HolProg 64 :=
.seq NamedBody752_224 NamedBody752_233

def NamedBody752_235 : StackLang.HolProg 64 :=
.seq NamedBody752_223 NamedBody752_234

def NamedBody752_236 : StackLang.HolProg 64 :=
.seq NamedBody752_222 NamedBody752_235

def NamedBody752_237 : StackLang.HolProg 64 :=
.seq NamedBody752_221 NamedBody752_236

def NamedBody752_238 : StackLang.HolProg 64 :=
.seq NamedBody752_220 NamedBody752_237

def NamedBody752_239 : StackLang.HolProg 64 :=
.seq NamedBody752_219 NamedBody752_238

def NamedBody752_240 : StackLang.HolProg 64 :=
.seq NamedBody752_218 NamedBody752_239

def NamedBody752_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_250 : StackLang.HolProg 64 :=
.seq NamedBody752_248 NamedBody752_249

def NamedBody752_251 : StackLang.HolProg 64 :=
.seq NamedBody752_247 NamedBody752_250

def NamedBody752_252 : StackLang.HolProg 64 :=
.seq NamedBody752_246 NamedBody752_251

def NamedBody752_253 : StackLang.HolProg 64 :=
.seq NamedBody752_245 NamedBody752_252

def NamedBody752_254 : StackLang.HolProg 64 :=
.seq NamedBody752_244 NamedBody752_253

def NamedBody752_255 : StackLang.HolProg 64 :=
.seq NamedBody752_243 NamedBody752_254

def NamedBody752_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_259 : StackLang.HolProg 64 :=
.seq NamedBody752_257 NamedBody752_258

def NamedBody752_260 : StackLang.HolProg 64 :=
.seq NamedBody752_256 NamedBody752_259

def NamedBody752_261 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_262 : StackLang.HolProg 64 :=
.seq NamedBody752_260 NamedBody752_261

def NamedBody752_263 : StackLang.HolProg 64 :=
.call (some (NamedBody752_255, 1, 752, 8)) (Sum.inl 739) (some (NamedBody752_262, 752, 9))

def NamedBody752_264 : StackLang.HolProg 64 :=
.seq NamedBody752_242 NamedBody752_263

def NamedBody752_265 : StackLang.HolProg 64 :=
.seq NamedBody752_241 NamedBody752_264

def NamedBody752_266 : StackLang.HolProg 64 :=
.seq NamedBody752_240 NamedBody752_265

def NamedBody752_267 : StackLang.HolProg 64 :=
.seq NamedBody752_211 NamedBody752_266

def NamedBody752_268 : StackLang.HolProg 64 :=
.seq NamedBody752_208 NamedBody752_267

def NamedBody752_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody752_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody752_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_277 : StackLang.HolProg 64 :=
.seq NamedBody752_275 NamedBody752_276

def NamedBody752_278 : StackLang.HolProg 64 :=
.seq NamedBody752_274 NamedBody752_277

def NamedBody752_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3324#64)

def NamedBody752_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_282 : StackLang.HolProg 64 :=
.seq NamedBody752_280 NamedBody752_281

def NamedBody752_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_286 : StackLang.HolProg 64 :=
.seq NamedBody752_284 NamedBody752_285

def NamedBody752_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_288 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_286 NamedBody752_287

def NamedBody752_289 : StackLang.HolProg 64 :=
.seq NamedBody752_283 NamedBody752_288

def NamedBody752_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 11

def NamedBody752_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_299 : StackLang.HolProg 64 :=
.seq NamedBody752_297 NamedBody752_298

def NamedBody752_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_301 : StackLang.HolProg 64 :=
.seq NamedBody752_299 NamedBody752_300

def NamedBody752_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_303 : StackLang.HolProg 64 :=
.seq NamedBody752_301 NamedBody752_302

def NamedBody752_304 : StackLang.HolProg 64 :=
.seq NamedBody752_296 NamedBody752_303

def NamedBody752_305 : StackLang.HolProg 64 :=
.seq NamedBody752_295 NamedBody752_304

def NamedBody752_306 : StackLang.HolProg 64 :=
.seq NamedBody752_294 NamedBody752_305

def NamedBody752_307 : StackLang.HolProg 64 :=
.seq NamedBody752_293 NamedBody752_306

def NamedBody752_308 : StackLang.HolProg 64 :=
.seq NamedBody752_292 NamedBody752_307

def NamedBody752_309 : StackLang.HolProg 64 :=
.seq NamedBody752_291 NamedBody752_308

def NamedBody752_310 : StackLang.HolProg 64 :=
.seq NamedBody752_290 NamedBody752_309

def NamedBody752_311 : StackLang.HolProg 64 :=
.seq NamedBody752_289 NamedBody752_310

def NamedBody752_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_321 : StackLang.HolProg 64 :=
.seq NamedBody752_319 NamedBody752_320

def NamedBody752_322 : StackLang.HolProg 64 :=
.seq NamedBody752_318 NamedBody752_321

def NamedBody752_323 : StackLang.HolProg 64 :=
.seq NamedBody752_317 NamedBody752_322

def NamedBody752_324 : StackLang.HolProg 64 :=
.seq NamedBody752_316 NamedBody752_323

def NamedBody752_325 : StackLang.HolProg 64 :=
.seq NamedBody752_315 NamedBody752_324

def NamedBody752_326 : StackLang.HolProg 64 :=
.seq NamedBody752_314 NamedBody752_325

def NamedBody752_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_330 : StackLang.HolProg 64 :=
.seq NamedBody752_328 NamedBody752_329

def NamedBody752_331 : StackLang.HolProg 64 :=
.seq NamedBody752_327 NamedBody752_330

def NamedBody752_332 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_333 : StackLang.HolProg 64 :=
.seq NamedBody752_331 NamedBody752_332

def NamedBody752_334 : StackLang.HolProg 64 :=
.call (some (NamedBody752_326, 1, 752, 10)) (Sum.inl 739) (some (NamedBody752_333, 752, 11))

def NamedBody752_335 : StackLang.HolProg 64 :=
.seq NamedBody752_313 NamedBody752_334

def NamedBody752_336 : StackLang.HolProg 64 :=
.seq NamedBody752_312 NamedBody752_335

def NamedBody752_337 : StackLang.HolProg 64 :=
.seq NamedBody752_311 NamedBody752_336

def NamedBody752_338 : StackLang.HolProg 64 :=
.seq NamedBody752_282 NamedBody752_337

def NamedBody752_339 : StackLang.HolProg 64 :=
.seq NamedBody752_279 NamedBody752_338

def NamedBody752_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody752_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody752_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_348 : StackLang.HolProg 64 :=
.seq NamedBody752_346 NamedBody752_347

def NamedBody752_349 : StackLang.HolProg 64 :=
.seq NamedBody752_345 NamedBody752_348

def NamedBody752_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3325#64)

def NamedBody752_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_353 : StackLang.HolProg 64 :=
.seq NamedBody752_351 NamedBody752_352

def NamedBody752_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_357 : StackLang.HolProg 64 :=
.seq NamedBody752_355 NamedBody752_356

def NamedBody752_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_359 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_357 NamedBody752_358

def NamedBody752_360 : StackLang.HolProg 64 :=
.seq NamedBody752_354 NamedBody752_359

def NamedBody752_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 13

def NamedBody752_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_370 : StackLang.HolProg 64 :=
.seq NamedBody752_368 NamedBody752_369

def NamedBody752_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_372 : StackLang.HolProg 64 :=
.seq NamedBody752_370 NamedBody752_371

def NamedBody752_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_374 : StackLang.HolProg 64 :=
.seq NamedBody752_372 NamedBody752_373

def NamedBody752_375 : StackLang.HolProg 64 :=
.seq NamedBody752_367 NamedBody752_374

def NamedBody752_376 : StackLang.HolProg 64 :=
.seq NamedBody752_366 NamedBody752_375

def NamedBody752_377 : StackLang.HolProg 64 :=
.seq NamedBody752_365 NamedBody752_376

def NamedBody752_378 : StackLang.HolProg 64 :=
.seq NamedBody752_364 NamedBody752_377

def NamedBody752_379 : StackLang.HolProg 64 :=
.seq NamedBody752_363 NamedBody752_378

def NamedBody752_380 : StackLang.HolProg 64 :=
.seq NamedBody752_362 NamedBody752_379

def NamedBody752_381 : StackLang.HolProg 64 :=
.seq NamedBody752_361 NamedBody752_380

def NamedBody752_382 : StackLang.HolProg 64 :=
.seq NamedBody752_360 NamedBody752_381

def NamedBody752_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_392 : StackLang.HolProg 64 :=
.seq NamedBody752_390 NamedBody752_391

def NamedBody752_393 : StackLang.HolProg 64 :=
.seq NamedBody752_389 NamedBody752_392

def NamedBody752_394 : StackLang.HolProg 64 :=
.seq NamedBody752_388 NamedBody752_393

def NamedBody752_395 : StackLang.HolProg 64 :=
.seq NamedBody752_387 NamedBody752_394

def NamedBody752_396 : StackLang.HolProg 64 :=
.seq NamedBody752_386 NamedBody752_395

def NamedBody752_397 : StackLang.HolProg 64 :=
.seq NamedBody752_385 NamedBody752_396

def NamedBody752_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_401 : StackLang.HolProg 64 :=
.seq NamedBody752_399 NamedBody752_400

def NamedBody752_402 : StackLang.HolProg 64 :=
.seq NamedBody752_398 NamedBody752_401

def NamedBody752_403 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_404 : StackLang.HolProg 64 :=
.seq NamedBody752_402 NamedBody752_403

def NamedBody752_405 : StackLang.HolProg 64 :=
.call (some (NamedBody752_397, 1, 752, 12)) (Sum.inl 739) (some (NamedBody752_404, 752, 13))

def NamedBody752_406 : StackLang.HolProg 64 :=
.seq NamedBody752_384 NamedBody752_405

def NamedBody752_407 : StackLang.HolProg 64 :=
.seq NamedBody752_383 NamedBody752_406

def NamedBody752_408 : StackLang.HolProg 64 :=
.seq NamedBody752_382 NamedBody752_407

def NamedBody752_409 : StackLang.HolProg 64 :=
.seq NamedBody752_353 NamedBody752_408

def NamedBody752_410 : StackLang.HolProg 64 :=
.seq NamedBody752_350 NamedBody752_409

def NamedBody752_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def NamedBody752_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody752_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody752_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_421 : StackLang.HolProg 64 :=
.seq NamedBody752_419 NamedBody752_420

def NamedBody752_422 : StackLang.HolProg 64 :=
.seq NamedBody752_418 NamedBody752_421

def NamedBody752_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3326#64)

def NamedBody752_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_426 : StackLang.HolProg 64 :=
.seq NamedBody752_424 NamedBody752_425

def NamedBody752_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_430 : StackLang.HolProg 64 :=
.seq NamedBody752_428 NamedBody752_429

def NamedBody752_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_432 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_430 NamedBody752_431

def NamedBody752_433 : StackLang.HolProg 64 :=
.seq NamedBody752_427 NamedBody752_432

def NamedBody752_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 15

def NamedBody752_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_443 : StackLang.HolProg 64 :=
.seq NamedBody752_441 NamedBody752_442

def NamedBody752_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_445 : StackLang.HolProg 64 :=
.seq NamedBody752_443 NamedBody752_444

def NamedBody752_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_447 : StackLang.HolProg 64 :=
.seq NamedBody752_445 NamedBody752_446

def NamedBody752_448 : StackLang.HolProg 64 :=
.seq NamedBody752_440 NamedBody752_447

def NamedBody752_449 : StackLang.HolProg 64 :=
.seq NamedBody752_439 NamedBody752_448

def NamedBody752_450 : StackLang.HolProg 64 :=
.seq NamedBody752_438 NamedBody752_449

def NamedBody752_451 : StackLang.HolProg 64 :=
.seq NamedBody752_437 NamedBody752_450

def NamedBody752_452 : StackLang.HolProg 64 :=
.seq NamedBody752_436 NamedBody752_451

def NamedBody752_453 : StackLang.HolProg 64 :=
.seq NamedBody752_435 NamedBody752_452

def NamedBody752_454 : StackLang.HolProg 64 :=
.seq NamedBody752_434 NamedBody752_453

def NamedBody752_455 : StackLang.HolProg 64 :=
.seq NamedBody752_433 NamedBody752_454

def NamedBody752_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_465 : StackLang.HolProg 64 :=
.seq NamedBody752_463 NamedBody752_464

def NamedBody752_466 : StackLang.HolProg 64 :=
.seq NamedBody752_462 NamedBody752_465

def NamedBody752_467 : StackLang.HolProg 64 :=
.seq NamedBody752_461 NamedBody752_466

def NamedBody752_468 : StackLang.HolProg 64 :=
.seq NamedBody752_460 NamedBody752_467

def NamedBody752_469 : StackLang.HolProg 64 :=
.seq NamedBody752_459 NamedBody752_468

def NamedBody752_470 : StackLang.HolProg 64 :=
.seq NamedBody752_458 NamedBody752_469

def NamedBody752_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_474 : StackLang.HolProg 64 :=
.seq NamedBody752_472 NamedBody752_473

def NamedBody752_475 : StackLang.HolProg 64 :=
.seq NamedBody752_471 NamedBody752_474

def NamedBody752_476 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_477 : StackLang.HolProg 64 :=
.seq NamedBody752_475 NamedBody752_476

def NamedBody752_478 : StackLang.HolProg 64 :=
.call (some (NamedBody752_470, 1, 752, 14)) (Sum.inl 739) (some (NamedBody752_477, 752, 15))

def NamedBody752_479 : StackLang.HolProg 64 :=
.seq NamedBody752_457 NamedBody752_478

def NamedBody752_480 : StackLang.HolProg 64 :=
.seq NamedBody752_456 NamedBody752_479

def NamedBody752_481 : StackLang.HolProg 64 :=
.seq NamedBody752_455 NamedBody752_480

def NamedBody752_482 : StackLang.HolProg 64 :=
.seq NamedBody752_426 NamedBody752_481

def NamedBody752_483 : StackLang.HolProg 64 :=
.seq NamedBody752_423 NamedBody752_482

def NamedBody752_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 480#64)))

def NamedBody752_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody752_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody752_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_494 : StackLang.HolProg 64 :=
.seq NamedBody752_492 NamedBody752_493

def NamedBody752_495 : StackLang.HolProg 64 :=
.seq NamedBody752_491 NamedBody752_494

def NamedBody752_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3327#64)

def NamedBody752_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_499 : StackLang.HolProg 64 :=
.seq NamedBody752_497 NamedBody752_498

def NamedBody752_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_503 : StackLang.HolProg 64 :=
.seq NamedBody752_501 NamedBody752_502

def NamedBody752_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_505 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_503 NamedBody752_504

def NamedBody752_506 : StackLang.HolProg 64 :=
.seq NamedBody752_500 NamedBody752_505

def NamedBody752_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 17

def NamedBody752_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_516 : StackLang.HolProg 64 :=
.seq NamedBody752_514 NamedBody752_515

def NamedBody752_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_518 : StackLang.HolProg 64 :=
.seq NamedBody752_516 NamedBody752_517

def NamedBody752_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_520 : StackLang.HolProg 64 :=
.seq NamedBody752_518 NamedBody752_519

def NamedBody752_521 : StackLang.HolProg 64 :=
.seq NamedBody752_513 NamedBody752_520

def NamedBody752_522 : StackLang.HolProg 64 :=
.seq NamedBody752_512 NamedBody752_521

def NamedBody752_523 : StackLang.HolProg 64 :=
.seq NamedBody752_511 NamedBody752_522

def NamedBody752_524 : StackLang.HolProg 64 :=
.seq NamedBody752_510 NamedBody752_523

def NamedBody752_525 : StackLang.HolProg 64 :=
.seq NamedBody752_509 NamedBody752_524

def NamedBody752_526 : StackLang.HolProg 64 :=
.seq NamedBody752_508 NamedBody752_525

def NamedBody752_527 : StackLang.HolProg 64 :=
.seq NamedBody752_507 NamedBody752_526

def NamedBody752_528 : StackLang.HolProg 64 :=
.seq NamedBody752_506 NamedBody752_527

def NamedBody752_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_538 : StackLang.HolProg 64 :=
.seq NamedBody752_536 NamedBody752_537

def NamedBody752_539 : StackLang.HolProg 64 :=
.seq NamedBody752_535 NamedBody752_538

def NamedBody752_540 : StackLang.HolProg 64 :=
.seq NamedBody752_534 NamedBody752_539

def NamedBody752_541 : StackLang.HolProg 64 :=
.seq NamedBody752_533 NamedBody752_540

def NamedBody752_542 : StackLang.HolProg 64 :=
.seq NamedBody752_532 NamedBody752_541

def NamedBody752_543 : StackLang.HolProg 64 :=
.seq NamedBody752_531 NamedBody752_542

def NamedBody752_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_547 : StackLang.HolProg 64 :=
.seq NamedBody752_545 NamedBody752_546

def NamedBody752_548 : StackLang.HolProg 64 :=
.seq NamedBody752_544 NamedBody752_547

def NamedBody752_549 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_550 : StackLang.HolProg 64 :=
.seq NamedBody752_548 NamedBody752_549

def NamedBody752_551 : StackLang.HolProg 64 :=
.call (some (NamedBody752_543, 1, 752, 16)) (Sum.inl 739) (some (NamedBody752_550, 752, 17))

def NamedBody752_552 : StackLang.HolProg 64 :=
.seq NamedBody752_530 NamedBody752_551

def NamedBody752_553 : StackLang.HolProg 64 :=
.seq NamedBody752_529 NamedBody752_552

def NamedBody752_554 : StackLang.HolProg 64 :=
.seq NamedBody752_528 NamedBody752_553

def NamedBody752_555 : StackLang.HolProg 64 :=
.seq NamedBody752_499 NamedBody752_554

def NamedBody752_556 : StackLang.HolProg 64 :=
.seq NamedBody752_496 NamedBody752_555

def NamedBody752_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 576#64)))

def NamedBody752_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody752_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_565 : StackLang.HolProg 64 :=
.seq NamedBody752_563 NamedBody752_564

def NamedBody752_566 : StackLang.HolProg 64 :=
.seq NamedBody752_562 NamedBody752_565

def NamedBody752_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3328#64)

def NamedBody752_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_570 : StackLang.HolProg 64 :=
.seq NamedBody752_568 NamedBody752_569

def NamedBody752_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_574 : StackLang.HolProg 64 :=
.seq NamedBody752_572 NamedBody752_573

def NamedBody752_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_576 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_574 NamedBody752_575

def NamedBody752_577 : StackLang.HolProg 64 :=
.seq NamedBody752_571 NamedBody752_576

def NamedBody752_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 19

def NamedBody752_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_587 : StackLang.HolProg 64 :=
.seq NamedBody752_585 NamedBody752_586

def NamedBody752_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_589 : StackLang.HolProg 64 :=
.seq NamedBody752_587 NamedBody752_588

def NamedBody752_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_591 : StackLang.HolProg 64 :=
.seq NamedBody752_589 NamedBody752_590

def NamedBody752_592 : StackLang.HolProg 64 :=
.seq NamedBody752_584 NamedBody752_591

def NamedBody752_593 : StackLang.HolProg 64 :=
.seq NamedBody752_583 NamedBody752_592

def NamedBody752_594 : StackLang.HolProg 64 :=
.seq NamedBody752_582 NamedBody752_593

def NamedBody752_595 : StackLang.HolProg 64 :=
.seq NamedBody752_581 NamedBody752_594

def NamedBody752_596 : StackLang.HolProg 64 :=
.seq NamedBody752_580 NamedBody752_595

def NamedBody752_597 : StackLang.HolProg 64 :=
.seq NamedBody752_579 NamedBody752_596

def NamedBody752_598 : StackLang.HolProg 64 :=
.seq NamedBody752_578 NamedBody752_597

def NamedBody752_599 : StackLang.HolProg 64 :=
.seq NamedBody752_577 NamedBody752_598

def NamedBody752_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_609 : StackLang.HolProg 64 :=
.seq NamedBody752_607 NamedBody752_608

def NamedBody752_610 : StackLang.HolProg 64 :=
.seq NamedBody752_606 NamedBody752_609

def NamedBody752_611 : StackLang.HolProg 64 :=
.seq NamedBody752_605 NamedBody752_610

def NamedBody752_612 : StackLang.HolProg 64 :=
.seq NamedBody752_604 NamedBody752_611

def NamedBody752_613 : StackLang.HolProg 64 :=
.seq NamedBody752_603 NamedBody752_612

def NamedBody752_614 : StackLang.HolProg 64 :=
.seq NamedBody752_602 NamedBody752_613

def NamedBody752_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_618 : StackLang.HolProg 64 :=
.seq NamedBody752_616 NamedBody752_617

def NamedBody752_619 : StackLang.HolProg 64 :=
.seq NamedBody752_615 NamedBody752_618

def NamedBody752_620 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_621 : StackLang.HolProg 64 :=
.seq NamedBody752_619 NamedBody752_620

def NamedBody752_622 : StackLang.HolProg 64 :=
.call (some (NamedBody752_614, 1, 752, 18)) (Sum.inl 739) (some (NamedBody752_621, 752, 19))

def NamedBody752_623 : StackLang.HolProg 64 :=
.seq NamedBody752_601 NamedBody752_622

def NamedBody752_624 : StackLang.HolProg 64 :=
.seq NamedBody752_600 NamedBody752_623

def NamedBody752_625 : StackLang.HolProg 64 :=
.seq NamedBody752_599 NamedBody752_624

def NamedBody752_626 : StackLang.HolProg 64 :=
.seq NamedBody752_570 NamedBody752_625

def NamedBody752_627 : StackLang.HolProg 64 :=
.seq NamedBody752_567 NamedBody752_626

def NamedBody752_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 672#64)))

def NamedBody752_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody752_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody752_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_638 : StackLang.HolProg 64 :=
.seq NamedBody752_636 NamedBody752_637

def NamedBody752_639 : StackLang.HolProg 64 :=
.seq NamedBody752_635 NamedBody752_638

def NamedBody752_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3329#64)

def NamedBody752_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_643 : StackLang.HolProg 64 :=
.seq NamedBody752_641 NamedBody752_642

def NamedBody752_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_647 : StackLang.HolProg 64 :=
.seq NamedBody752_645 NamedBody752_646

def NamedBody752_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_649 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_647 NamedBody752_648

def NamedBody752_650 : StackLang.HolProg 64 :=
.seq NamedBody752_644 NamedBody752_649

def NamedBody752_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 21

def NamedBody752_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_660 : StackLang.HolProg 64 :=
.seq NamedBody752_658 NamedBody752_659

def NamedBody752_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_662 : StackLang.HolProg 64 :=
.seq NamedBody752_660 NamedBody752_661

def NamedBody752_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_664 : StackLang.HolProg 64 :=
.seq NamedBody752_662 NamedBody752_663

def NamedBody752_665 : StackLang.HolProg 64 :=
.seq NamedBody752_657 NamedBody752_664

def NamedBody752_666 : StackLang.HolProg 64 :=
.seq NamedBody752_656 NamedBody752_665

def NamedBody752_667 : StackLang.HolProg 64 :=
.seq NamedBody752_655 NamedBody752_666

def NamedBody752_668 : StackLang.HolProg 64 :=
.seq NamedBody752_654 NamedBody752_667

def NamedBody752_669 : StackLang.HolProg 64 :=
.seq NamedBody752_653 NamedBody752_668

def NamedBody752_670 : StackLang.HolProg 64 :=
.seq NamedBody752_652 NamedBody752_669

def NamedBody752_671 : StackLang.HolProg 64 :=
.seq NamedBody752_651 NamedBody752_670

def NamedBody752_672 : StackLang.HolProg 64 :=
.seq NamedBody752_650 NamedBody752_671

def NamedBody752_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_682 : StackLang.HolProg 64 :=
.seq NamedBody752_680 NamedBody752_681

def NamedBody752_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_686 : StackLang.HolProg 64 :=
.seq NamedBody752_684 NamedBody752_685

def NamedBody752_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_688 : StackLang.HolProg 64 :=
.seq NamedBody752_686 NamedBody752_687

def NamedBody752_689 : StackLang.HolProg 64 :=
.seq NamedBody752_683 NamedBody752_688

def NamedBody752_690 : StackLang.HolProg 64 :=
.seq NamedBody752_682 NamedBody752_689

def NamedBody752_691 : StackLang.HolProg 64 :=
.seq NamedBody752_679 NamedBody752_690

def NamedBody752_692 : StackLang.HolProg 64 :=
.seq NamedBody752_678 NamedBody752_691

def NamedBody752_693 : StackLang.HolProg 64 :=
.seq NamedBody752_677 NamedBody752_692

def NamedBody752_694 : StackLang.HolProg 64 :=
.seq NamedBody752_676 NamedBody752_693

def NamedBody752_695 : StackLang.HolProg 64 :=
.seq NamedBody752_675 NamedBody752_694

def NamedBody752_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_699 : StackLang.HolProg 64 :=
.seq NamedBody752_697 NamedBody752_698

def NamedBody752_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_703 : StackLang.HolProg 64 :=
.seq NamedBody752_701 NamedBody752_702

def NamedBody752_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_705 : StackLang.HolProg 64 :=
.seq NamedBody752_703 NamedBody752_704

def NamedBody752_706 : StackLang.HolProg 64 :=
.seq NamedBody752_700 NamedBody752_705

def NamedBody752_707 : StackLang.HolProg 64 :=
.seq NamedBody752_699 NamedBody752_706

def NamedBody752_708 : StackLang.HolProg 64 :=
.seq NamedBody752_696 NamedBody752_707

def NamedBody752_709 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_710 : StackLang.HolProg 64 :=
.seq NamedBody752_708 NamedBody752_709

def NamedBody752_711 : StackLang.HolProg 64 :=
.call (some (NamedBody752_695, 1, 752, 20)) (Sum.inl 739) (some (NamedBody752_710, 752, 21))

def NamedBody752_712 : StackLang.HolProg 64 :=
.seq NamedBody752_674 NamedBody752_711

def NamedBody752_713 : StackLang.HolProg 64 :=
.seq NamedBody752_673 NamedBody752_712

def NamedBody752_714 : StackLang.HolProg 64 :=
.seq NamedBody752_672 NamedBody752_713

def NamedBody752_715 : StackLang.HolProg 64 :=
.seq NamedBody752_643 NamedBody752_714

def NamedBody752_716 : StackLang.HolProg 64 :=
.seq NamedBody752_640 NamedBody752_715

def NamedBody752_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 768#64)))

def NamedBody752_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody752_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody752_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3330#64)

def NamedBody752_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_728 : StackLang.HolProg 64 :=
.seq NamedBody752_726 NamedBody752_727

def NamedBody752_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_732 : StackLang.HolProg 64 :=
.seq NamedBody752_730 NamedBody752_731

def NamedBody752_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_734 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_732 NamedBody752_733

def NamedBody752_735 : StackLang.HolProg 64 :=
.seq NamedBody752_729 NamedBody752_734

def NamedBody752_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 23

def NamedBody752_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_745 : StackLang.HolProg 64 :=
.seq NamedBody752_743 NamedBody752_744

def NamedBody752_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_747 : StackLang.HolProg 64 :=
.seq NamedBody752_745 NamedBody752_746

def NamedBody752_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_749 : StackLang.HolProg 64 :=
.seq NamedBody752_747 NamedBody752_748

def NamedBody752_750 : StackLang.HolProg 64 :=
.seq NamedBody752_742 NamedBody752_749

def NamedBody752_751 : StackLang.HolProg 64 :=
.seq NamedBody752_741 NamedBody752_750

def NamedBody752_752 : StackLang.HolProg 64 :=
.seq NamedBody752_740 NamedBody752_751

def NamedBody752_753 : StackLang.HolProg 64 :=
.seq NamedBody752_739 NamedBody752_752

def NamedBody752_754 : StackLang.HolProg 64 :=
.seq NamedBody752_738 NamedBody752_753

def NamedBody752_755 : StackLang.HolProg 64 :=
.seq NamedBody752_737 NamedBody752_754

def NamedBody752_756 : StackLang.HolProg 64 :=
.seq NamedBody752_736 NamedBody752_755

def NamedBody752_757 : StackLang.HolProg 64 :=
.seq NamedBody752_735 NamedBody752_756

def NamedBody752_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_765 : StackLang.HolProg 64 :=
.seq NamedBody752_763 NamedBody752_764

def NamedBody752_766 : StackLang.HolProg 64 :=
.seq NamedBody752_762 NamedBody752_765

def NamedBody752_767 : StackLang.HolProg 64 :=
.seq NamedBody752_761 NamedBody752_766

def NamedBody752_768 : StackLang.HolProg 64 :=
.seq NamedBody752_760 NamedBody752_767

def NamedBody752_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_770 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_771 : StackLang.HolProg 64 :=
.seq NamedBody752_769 NamedBody752_770

def NamedBody752_772 : StackLang.HolProg 64 :=
.call (some (NamedBody752_768, 1, 752, 22)) (Sum.inl 739) (some (NamedBody752_771, 752, 23))

def NamedBody752_773 : StackLang.HolProg 64 :=
.seq NamedBody752_759 NamedBody752_772

def NamedBody752_774 : StackLang.HolProg 64 :=
.seq NamedBody752_758 NamedBody752_773

def NamedBody752_775 : StackLang.HolProg 64 :=
.seq NamedBody752_757 NamedBody752_774

def NamedBody752_776 : StackLang.HolProg 64 :=
.seq NamedBody752_728 NamedBody752_775

def NamedBody752_777 : StackLang.HolProg 64 :=
.seq NamedBody752_725 NamedBody752_776

def NamedBody752_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 864#64)))

def NamedBody752_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 480#64)))

def NamedBody752_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 672#64)))

def NamedBody752_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_787 : StackLang.HolProg 64 :=
.seq NamedBody752_785 NamedBody752_786

def NamedBody752_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3331#64)

def NamedBody752_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_791 : StackLang.HolProg 64 :=
.seq NamedBody752_789 NamedBody752_790

def NamedBody752_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_795 : StackLang.HolProg 64 :=
.seq NamedBody752_793 NamedBody752_794

def NamedBody752_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_797 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_795 NamedBody752_796

def NamedBody752_798 : StackLang.HolProg 64 :=
.seq NamedBody752_792 NamedBody752_797

def NamedBody752_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 25

def NamedBody752_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_808 : StackLang.HolProg 64 :=
.seq NamedBody752_806 NamedBody752_807

def NamedBody752_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_810 : StackLang.HolProg 64 :=
.seq NamedBody752_808 NamedBody752_809

def NamedBody752_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_812 : StackLang.HolProg 64 :=
.seq NamedBody752_810 NamedBody752_811

def NamedBody752_813 : StackLang.HolProg 64 :=
.seq NamedBody752_805 NamedBody752_812

def NamedBody752_814 : StackLang.HolProg 64 :=
.seq NamedBody752_804 NamedBody752_813

def NamedBody752_815 : StackLang.HolProg 64 :=
.seq NamedBody752_803 NamedBody752_814

def NamedBody752_816 : StackLang.HolProg 64 :=
.seq NamedBody752_802 NamedBody752_815

def NamedBody752_817 : StackLang.HolProg 64 :=
.seq NamedBody752_801 NamedBody752_816

def NamedBody752_818 : StackLang.HolProg 64 :=
.seq NamedBody752_800 NamedBody752_817

def NamedBody752_819 : StackLang.HolProg 64 :=
.seq NamedBody752_799 NamedBody752_818

def NamedBody752_820 : StackLang.HolProg 64 :=
.seq NamedBody752_798 NamedBody752_819

def NamedBody752_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_828 : StackLang.HolProg 64 :=
.seq NamedBody752_826 NamedBody752_827

def NamedBody752_829 : StackLang.HolProg 64 :=
.seq NamedBody752_825 NamedBody752_828

def NamedBody752_830 : StackLang.HolProg 64 :=
.seq NamedBody752_824 NamedBody752_829

def NamedBody752_831 : StackLang.HolProg 64 :=
.seq NamedBody752_823 NamedBody752_830

def NamedBody752_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_833 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_834 : StackLang.HolProg 64 :=
.seq NamedBody752_832 NamedBody752_833

def NamedBody752_835 : StackLang.HolProg 64 :=
.call (some (NamedBody752_831, 1, 752, 24)) (Sum.inl 734) (some (NamedBody752_834, 752, 25))

def NamedBody752_836 : StackLang.HolProg 64 :=
.seq NamedBody752_822 NamedBody752_835

def NamedBody752_837 : StackLang.HolProg 64 :=
.seq NamedBody752_821 NamedBody752_836

def NamedBody752_838 : StackLang.HolProg 64 :=
.seq NamedBody752_820 NamedBody752_837

def NamedBody752_839 : StackLang.HolProg 64 :=
.seq NamedBody752_791 NamedBody752_838

def NamedBody752_840 : StackLang.HolProg 64 :=
.seq NamedBody752_788 NamedBody752_839

def NamedBody752_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody752_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_844 : StackLang.HolProg 64 :=
.seq NamedBody752_842 NamedBody752_843

def NamedBody752_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3332#64)

def NamedBody752_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_848 : StackLang.HolProg 64 :=
.seq NamedBody752_846 NamedBody752_847

def NamedBody752_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_852 : StackLang.HolProg 64 :=
.seq NamedBody752_850 NamedBody752_851

def NamedBody752_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_854 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_852 NamedBody752_853

def NamedBody752_855 : StackLang.HolProg 64 :=
.seq NamedBody752_849 NamedBody752_854

def NamedBody752_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 27

def NamedBody752_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_865 : StackLang.HolProg 64 :=
.seq NamedBody752_863 NamedBody752_864

def NamedBody752_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_867 : StackLang.HolProg 64 :=
.seq NamedBody752_865 NamedBody752_866

def NamedBody752_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_869 : StackLang.HolProg 64 :=
.seq NamedBody752_867 NamedBody752_868

def NamedBody752_870 : StackLang.HolProg 64 :=
.seq NamedBody752_862 NamedBody752_869

def NamedBody752_871 : StackLang.HolProg 64 :=
.seq NamedBody752_861 NamedBody752_870

def NamedBody752_872 : StackLang.HolProg 64 :=
.seq NamedBody752_860 NamedBody752_871

def NamedBody752_873 : StackLang.HolProg 64 :=
.seq NamedBody752_859 NamedBody752_872

def NamedBody752_874 : StackLang.HolProg 64 :=
.seq NamedBody752_858 NamedBody752_873

def NamedBody752_875 : StackLang.HolProg 64 :=
.seq NamedBody752_857 NamedBody752_874

def NamedBody752_876 : StackLang.HolProg 64 :=
.seq NamedBody752_856 NamedBody752_875

def NamedBody752_877 : StackLang.HolProg 64 :=
.seq NamedBody752_855 NamedBody752_876

def NamedBody752_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_887 : StackLang.HolProg 64 :=
.seq NamedBody752_885 NamedBody752_886

def NamedBody752_888 : StackLang.HolProg 64 :=
.seq NamedBody752_884 NamedBody752_887

def NamedBody752_889 : StackLang.HolProg 64 :=
.seq NamedBody752_883 NamedBody752_888

def NamedBody752_890 : StackLang.HolProg 64 :=
.seq NamedBody752_882 NamedBody752_889

def NamedBody752_891 : StackLang.HolProg 64 :=
.seq NamedBody752_881 NamedBody752_890

def NamedBody752_892 : StackLang.HolProg 64 :=
.seq NamedBody752_880 NamedBody752_891

def NamedBody752_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_896 : StackLang.HolProg 64 :=
.seq NamedBody752_894 NamedBody752_895

def NamedBody752_897 : StackLang.HolProg 64 :=
.seq NamedBody752_893 NamedBody752_896

def NamedBody752_898 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_899 : StackLang.HolProg 64 :=
.seq NamedBody752_897 NamedBody752_898

def NamedBody752_900 : StackLang.HolProg 64 :=
.call (some (NamedBody752_892, 1, 752, 26)) (Sum.inl 741) (some (NamedBody752_899, 752, 27))

def NamedBody752_901 : StackLang.HolProg 64 :=
.seq NamedBody752_879 NamedBody752_900

def NamedBody752_902 : StackLang.HolProg 64 :=
.seq NamedBody752_878 NamedBody752_901

def NamedBody752_903 : StackLang.HolProg 64 :=
.seq NamedBody752_877 NamedBody752_902

def NamedBody752_904 : StackLang.HolProg 64 :=
.seq NamedBody752_848 NamedBody752_903

def NamedBody752_905 : StackLang.HolProg 64 :=
.seq NamedBody752_845 NamedBody752_904

def NamedBody752_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody752_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_911 : StackLang.HolProg 64 :=
.seq NamedBody752_909 NamedBody752_910

def NamedBody752_912 : StackLang.HolProg 64 :=
.seq NamedBody752_908 NamedBody752_911

def NamedBody752_913 : StackLang.HolProg 64 :=
.seq NamedBody752_907 NamedBody752_912

def NamedBody752_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3333#64)

def NamedBody752_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_917 : StackLang.HolProg 64 :=
.seq NamedBody752_915 NamedBody752_916

def NamedBody752_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_921 : StackLang.HolProg 64 :=
.seq NamedBody752_919 NamedBody752_920

def NamedBody752_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_923 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_921 NamedBody752_922

def NamedBody752_924 : StackLang.HolProg 64 :=
.seq NamedBody752_918 NamedBody752_923

def NamedBody752_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 29

def NamedBody752_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_934 : StackLang.HolProg 64 :=
.seq NamedBody752_932 NamedBody752_933

def NamedBody752_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_936 : StackLang.HolProg 64 :=
.seq NamedBody752_934 NamedBody752_935

def NamedBody752_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_938 : StackLang.HolProg 64 :=
.seq NamedBody752_936 NamedBody752_937

def NamedBody752_939 : StackLang.HolProg 64 :=
.seq NamedBody752_931 NamedBody752_938

def NamedBody752_940 : StackLang.HolProg 64 :=
.seq NamedBody752_930 NamedBody752_939

def NamedBody752_941 : StackLang.HolProg 64 :=
.seq NamedBody752_929 NamedBody752_940

def NamedBody752_942 : StackLang.HolProg 64 :=
.seq NamedBody752_928 NamedBody752_941

def NamedBody752_943 : StackLang.HolProg 64 :=
.seq NamedBody752_927 NamedBody752_942

def NamedBody752_944 : StackLang.HolProg 64 :=
.seq NamedBody752_926 NamedBody752_943

def NamedBody752_945 : StackLang.HolProg 64 :=
.seq NamedBody752_925 NamedBody752_944

def NamedBody752_946 : StackLang.HolProg 64 :=
.seq NamedBody752_924 NamedBody752_945

def NamedBody752_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_955 : StackLang.HolProg 64 :=
.seq NamedBody752_953 NamedBody752_954

def NamedBody752_956 : StackLang.HolProg 64 :=
.seq NamedBody752_952 NamedBody752_955

def NamedBody752_957 : StackLang.HolProg 64 :=
.seq NamedBody752_951 NamedBody752_956

def NamedBody752_958 : StackLang.HolProg 64 :=
.seq NamedBody752_950 NamedBody752_957

def NamedBody752_959 : StackLang.HolProg 64 :=
.seq NamedBody752_949 NamedBody752_958

def NamedBody752_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_962 : StackLang.HolProg 64 :=
.seq NamedBody752_960 NamedBody752_961

def NamedBody752_963 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_964 : StackLang.HolProg 64 :=
.seq NamedBody752_962 NamedBody752_963

def NamedBody752_965 : StackLang.HolProg 64 :=
.call (some (NamedBody752_959, 1, 752, 28)) (Sum.inl 734) (some (NamedBody752_964, 752, 29))

def NamedBody752_966 : StackLang.HolProg 64 :=
.seq NamedBody752_948 NamedBody752_965

def NamedBody752_967 : StackLang.HolProg 64 :=
.seq NamedBody752_947 NamedBody752_966

def NamedBody752_968 : StackLang.HolProg 64 :=
.seq NamedBody752_946 NamedBody752_967

def NamedBody752_969 : StackLang.HolProg 64 :=
.seq NamedBody752_917 NamedBody752_968

def NamedBody752_970 : StackLang.HolProg 64 :=
.seq NamedBody752_914 NamedBody752_969

def NamedBody752_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody752_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 768#64)))

def NamedBody752_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_976 : StackLang.HolProg 64 :=
.seq NamedBody752_974 NamedBody752_975

def NamedBody752_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3334#64)

def NamedBody752_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_980 : StackLang.HolProg 64 :=
.seq NamedBody752_978 NamedBody752_979

def NamedBody752_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_984 : StackLang.HolProg 64 :=
.seq NamedBody752_982 NamedBody752_983

def NamedBody752_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_986 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_984 NamedBody752_985

def NamedBody752_987 : StackLang.HolProg 64 :=
.seq NamedBody752_981 NamedBody752_986

def NamedBody752_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 31

def NamedBody752_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_997 : StackLang.HolProg 64 :=
.seq NamedBody752_995 NamedBody752_996

def NamedBody752_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_999 : StackLang.HolProg 64 :=
.seq NamedBody752_997 NamedBody752_998

def NamedBody752_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1001 : StackLang.HolProg 64 :=
.seq NamedBody752_999 NamedBody752_1000

def NamedBody752_1002 : StackLang.HolProg 64 :=
.seq NamedBody752_994 NamedBody752_1001

def NamedBody752_1003 : StackLang.HolProg 64 :=
.seq NamedBody752_993 NamedBody752_1002

def NamedBody752_1004 : StackLang.HolProg 64 :=
.seq NamedBody752_992 NamedBody752_1003

def NamedBody752_1005 : StackLang.HolProg 64 :=
.seq NamedBody752_991 NamedBody752_1004

def NamedBody752_1006 : StackLang.HolProg 64 :=
.seq NamedBody752_990 NamedBody752_1005

def NamedBody752_1007 : StackLang.HolProg 64 :=
.seq NamedBody752_989 NamedBody752_1006

def NamedBody752_1008 : StackLang.HolProg 64 :=
.seq NamedBody752_988 NamedBody752_1007

def NamedBody752_1009 : StackLang.HolProg 64 :=
.seq NamedBody752_987 NamedBody752_1008

def NamedBody752_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1018 : StackLang.HolProg 64 :=
.seq NamedBody752_1016 NamedBody752_1017

def NamedBody752_1019 : StackLang.HolProg 64 :=
.seq NamedBody752_1015 NamedBody752_1018

def NamedBody752_1020 : StackLang.HolProg 64 :=
.seq NamedBody752_1014 NamedBody752_1019

def NamedBody752_1021 : StackLang.HolProg 64 :=
.seq NamedBody752_1013 NamedBody752_1020

def NamedBody752_1022 : StackLang.HolProg 64 :=
.seq NamedBody752_1012 NamedBody752_1021

def NamedBody752_1023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1025 : StackLang.HolProg 64 :=
.seq NamedBody752_1023 NamedBody752_1024

def NamedBody752_1026 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_1027 : StackLang.HolProg 64 :=
.seq NamedBody752_1025 NamedBody752_1026

def NamedBody752_1028 : StackLang.HolProg 64 :=
.call (some (NamedBody752_1022, 1, 752, 30)) (Sum.inl 741) (some (NamedBody752_1027, 752, 31))

def NamedBody752_1029 : StackLang.HolProg 64 :=
.seq NamedBody752_1011 NamedBody752_1028

def NamedBody752_1030 : StackLang.HolProg 64 :=
.seq NamedBody752_1010 NamedBody752_1029

def NamedBody752_1031 : StackLang.HolProg 64 :=
.seq NamedBody752_1009 NamedBody752_1030

def NamedBody752_1032 : StackLang.HolProg 64 :=
.seq NamedBody752_980 NamedBody752_1031

def NamedBody752_1033 : StackLang.HolProg 64 :=
.seq NamedBody752_977 NamedBody752_1032

def NamedBody752_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody752_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody752_1038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1040 : StackLang.HolProg 64 :=
.seq NamedBody752_1038 NamedBody752_1039

def NamedBody752_1041 : StackLang.HolProg 64 :=
.seq NamedBody752_1037 NamedBody752_1040

def NamedBody752_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3335#64)

def NamedBody752_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1045 : StackLang.HolProg 64 :=
.seq NamedBody752_1043 NamedBody752_1044

def NamedBody752_1046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_1048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_1049 : StackLang.HolProg 64 :=
.seq NamedBody752_1047 NamedBody752_1048

def NamedBody752_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1051 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_1049 NamedBody752_1050

def NamedBody752_1052 : StackLang.HolProg 64 :=
.seq NamedBody752_1046 NamedBody752_1051

def NamedBody752_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 33

def NamedBody752_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_1062 : StackLang.HolProg 64 :=
.seq NamedBody752_1060 NamedBody752_1061

def NamedBody752_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_1064 : StackLang.HolProg 64 :=
.seq NamedBody752_1062 NamedBody752_1063

def NamedBody752_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1066 : StackLang.HolProg 64 :=
.seq NamedBody752_1064 NamedBody752_1065

def NamedBody752_1067 : StackLang.HolProg 64 :=
.seq NamedBody752_1059 NamedBody752_1066

def NamedBody752_1068 : StackLang.HolProg 64 :=
.seq NamedBody752_1058 NamedBody752_1067

def NamedBody752_1069 : StackLang.HolProg 64 :=
.seq NamedBody752_1057 NamedBody752_1068

def NamedBody752_1070 : StackLang.HolProg 64 :=
.seq NamedBody752_1056 NamedBody752_1069

def NamedBody752_1071 : StackLang.HolProg 64 :=
.seq NamedBody752_1055 NamedBody752_1070

def NamedBody752_1072 : StackLang.HolProg 64 :=
.seq NamedBody752_1054 NamedBody752_1071

def NamedBody752_1073 : StackLang.HolProg 64 :=
.seq NamedBody752_1053 NamedBody752_1072

def NamedBody752_1074 : StackLang.HolProg 64 :=
.seq NamedBody752_1052 NamedBody752_1073

def NamedBody752_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1080 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1084 : StackLang.HolProg 64 :=
.seq NamedBody752_1082 NamedBody752_1083

def NamedBody752_1085 : StackLang.HolProg 64 :=
.seq NamedBody752_1081 NamedBody752_1084

def NamedBody752_1086 : StackLang.HolProg 64 :=
.seq NamedBody752_1080 NamedBody752_1085

def NamedBody752_1087 : StackLang.HolProg 64 :=
.seq NamedBody752_1079 NamedBody752_1086

def NamedBody752_1088 : StackLang.HolProg 64 :=
.seq NamedBody752_1078 NamedBody752_1087

def NamedBody752_1089 : StackLang.HolProg 64 :=
.seq NamedBody752_1077 NamedBody752_1088

def NamedBody752_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1093 : StackLang.HolProg 64 :=
.seq NamedBody752_1091 NamedBody752_1092

def NamedBody752_1094 : StackLang.HolProg 64 :=
.seq NamedBody752_1090 NamedBody752_1093

def NamedBody752_1095 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_1096 : StackLang.HolProg 64 :=
.seq NamedBody752_1094 NamedBody752_1095

def NamedBody752_1097 : StackLang.HolProg 64 :=
.call (some (NamedBody752_1089, 1, 752, 32)) (Sum.inl 734) (some (NamedBody752_1096, 752, 33))

def NamedBody752_1098 : StackLang.HolProg 64 :=
.seq NamedBody752_1076 NamedBody752_1097

def NamedBody752_1099 : StackLang.HolProg 64 :=
.seq NamedBody752_1075 NamedBody752_1098

def NamedBody752_1100 : StackLang.HolProg 64 :=
.seq NamedBody752_1074 NamedBody752_1099

def NamedBody752_1101 : StackLang.HolProg 64 :=
.seq NamedBody752_1045 NamedBody752_1100

def NamedBody752_1102 : StackLang.HolProg 64 :=
.seq NamedBody752_1042 NamedBody752_1101

def NamedBody752_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody752_1106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody752_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1111 : StackLang.HolProg 64 :=
.seq NamedBody752_1109 NamedBody752_1110

def NamedBody752_1112 : StackLang.HolProg 64 :=
.seq NamedBody752_1108 NamedBody752_1111

def NamedBody752_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3336#64)

def NamedBody752_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1116 : StackLang.HolProg 64 :=
.seq NamedBody752_1114 NamedBody752_1115

def NamedBody752_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_1120 : StackLang.HolProg 64 :=
.seq NamedBody752_1118 NamedBody752_1119

def NamedBody752_1121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_1120 NamedBody752_1121

def NamedBody752_1123 : StackLang.HolProg 64 :=
.seq NamedBody752_1117 NamedBody752_1122

def NamedBody752_1124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_1125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 35

def NamedBody752_1127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_1133 : StackLang.HolProg 64 :=
.seq NamedBody752_1131 NamedBody752_1132

def NamedBody752_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_1135 : StackLang.HolProg 64 :=
.seq NamedBody752_1133 NamedBody752_1134

def NamedBody752_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1137 : StackLang.HolProg 64 :=
.seq NamedBody752_1135 NamedBody752_1136

def NamedBody752_1138 : StackLang.HolProg 64 :=
.seq NamedBody752_1130 NamedBody752_1137

def NamedBody752_1139 : StackLang.HolProg 64 :=
.seq NamedBody752_1129 NamedBody752_1138

def NamedBody752_1140 : StackLang.HolProg 64 :=
.seq NamedBody752_1128 NamedBody752_1139

def NamedBody752_1141 : StackLang.HolProg 64 :=
.seq NamedBody752_1127 NamedBody752_1140

def NamedBody752_1142 : StackLang.HolProg 64 :=
.seq NamedBody752_1126 NamedBody752_1141

def NamedBody752_1143 : StackLang.HolProg 64 :=
.seq NamedBody752_1125 NamedBody752_1142

def NamedBody752_1144 : StackLang.HolProg 64 :=
.seq NamedBody752_1124 NamedBody752_1143

def NamedBody752_1145 : StackLang.HolProg 64 :=
.seq NamedBody752_1123 NamedBody752_1144

def NamedBody752_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1154 : StackLang.HolProg 64 :=
.seq NamedBody752_1152 NamedBody752_1153

def NamedBody752_1155 : StackLang.HolProg 64 :=
.seq NamedBody752_1151 NamedBody752_1154

def NamedBody752_1156 : StackLang.HolProg 64 :=
.seq NamedBody752_1150 NamedBody752_1155

def NamedBody752_1157 : StackLang.HolProg 64 :=
.seq NamedBody752_1149 NamedBody752_1156

def NamedBody752_1158 : StackLang.HolProg 64 :=
.seq NamedBody752_1148 NamedBody752_1157

def NamedBody752_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1161 : StackLang.HolProg 64 :=
.seq NamedBody752_1159 NamedBody752_1160

def NamedBody752_1162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_1163 : StackLang.HolProg 64 :=
.seq NamedBody752_1161 NamedBody752_1162

def NamedBody752_1164 : StackLang.HolProg 64 :=
.call (some (NamedBody752_1158, 1, 752, 34)) (Sum.inl 734) (some (NamedBody752_1163, 752, 35))

def NamedBody752_1165 : StackLang.HolProg 64 :=
.seq NamedBody752_1147 NamedBody752_1164

def NamedBody752_1166 : StackLang.HolProg 64 :=
.seq NamedBody752_1146 NamedBody752_1165

def NamedBody752_1167 : StackLang.HolProg 64 :=
.seq NamedBody752_1145 NamedBody752_1166

def NamedBody752_1168 : StackLang.HolProg 64 :=
.seq NamedBody752_1116 NamedBody752_1167

def NamedBody752_1169 : StackLang.HolProg 64 :=
.seq NamedBody752_1113 NamedBody752_1168

def NamedBody752_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody752_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody752_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def NamedBody752_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1177 : StackLang.HolProg 64 :=
.seq NamedBody752_1175 NamedBody752_1176

def NamedBody752_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3337#64)

def NamedBody752_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1181 : StackLang.HolProg 64 :=
.seq NamedBody752_1179 NamedBody752_1180

def NamedBody752_1182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_1185 : StackLang.HolProg 64 :=
.seq NamedBody752_1183 NamedBody752_1184

def NamedBody752_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_1185 NamedBody752_1186

def NamedBody752_1188 : StackLang.HolProg 64 :=
.seq NamedBody752_1182 NamedBody752_1187

def NamedBody752_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 37

def NamedBody752_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_1198 : StackLang.HolProg 64 :=
.seq NamedBody752_1196 NamedBody752_1197

def NamedBody752_1199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_1200 : StackLang.HolProg 64 :=
.seq NamedBody752_1198 NamedBody752_1199

def NamedBody752_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1202 : StackLang.HolProg 64 :=
.seq NamedBody752_1200 NamedBody752_1201

def NamedBody752_1203 : StackLang.HolProg 64 :=
.seq NamedBody752_1195 NamedBody752_1202

def NamedBody752_1204 : StackLang.HolProg 64 :=
.seq NamedBody752_1194 NamedBody752_1203

def NamedBody752_1205 : StackLang.HolProg 64 :=
.seq NamedBody752_1193 NamedBody752_1204

def NamedBody752_1206 : StackLang.HolProg 64 :=
.seq NamedBody752_1192 NamedBody752_1205

def NamedBody752_1207 : StackLang.HolProg 64 :=
.seq NamedBody752_1191 NamedBody752_1206

def NamedBody752_1208 : StackLang.HolProg 64 :=
.seq NamedBody752_1190 NamedBody752_1207

def NamedBody752_1209 : StackLang.HolProg 64 :=
.seq NamedBody752_1189 NamedBody752_1208

def NamedBody752_1210 : StackLang.HolProg 64 :=
.seq NamedBody752_1188 NamedBody752_1209

def NamedBody752_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_1221 : StackLang.HolProg 64 :=
.seq NamedBody752_1219 NamedBody752_1220

def NamedBody752_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1223 : StackLang.HolProg 64 :=
.seq NamedBody752_1221 NamedBody752_1222

def NamedBody752_1224 : StackLang.HolProg 64 :=
.seq NamedBody752_1218 NamedBody752_1223

def NamedBody752_1225 : StackLang.HolProg 64 :=
.seq NamedBody752_1217 NamedBody752_1224

def NamedBody752_1226 : StackLang.HolProg 64 :=
.seq NamedBody752_1216 NamedBody752_1225

def NamedBody752_1227 : StackLang.HolProg 64 :=
.seq NamedBody752_1215 NamedBody752_1226

def NamedBody752_1228 : StackLang.HolProg 64 :=
.seq NamedBody752_1214 NamedBody752_1227

def NamedBody752_1229 : StackLang.HolProg 64 :=
.seq NamedBody752_1213 NamedBody752_1228

def NamedBody752_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody752_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody752_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_1234 : StackLang.HolProg 64 :=
.seq NamedBody752_1232 NamedBody752_1233

def NamedBody752_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1236 : StackLang.HolProg 64 :=
.seq NamedBody752_1234 NamedBody752_1235

def NamedBody752_1237 : StackLang.HolProg 64 :=
.seq NamedBody752_1231 NamedBody752_1236

def NamedBody752_1238 : StackLang.HolProg 64 :=
.seq NamedBody752_1230 NamedBody752_1237

def NamedBody752_1239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_1240 : StackLang.HolProg 64 :=
.seq NamedBody752_1238 NamedBody752_1239

def NamedBody752_1241 : StackLang.HolProg 64 :=
.call (some (NamedBody752_1229, 1, 752, 36)) (Sum.inl 734) (some (NamedBody752_1240, 752, 37))

def NamedBody752_1242 : StackLang.HolProg 64 :=
.seq NamedBody752_1212 NamedBody752_1241

def NamedBody752_1243 : StackLang.HolProg 64 :=
.seq NamedBody752_1211 NamedBody752_1242

def NamedBody752_1244 : StackLang.HolProg 64 :=
.seq NamedBody752_1210 NamedBody752_1243

def NamedBody752_1245 : StackLang.HolProg 64 :=
.seq NamedBody752_1181 NamedBody752_1244

def NamedBody752_1246 : StackLang.HolProg 64 :=
.seq NamedBody752_1178 NamedBody752_1245

def NamedBody752_1247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody752_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 576#64)))

def NamedBody752_1252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3338#64)

def NamedBody752_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1256 : StackLang.HolProg 64 :=
.seq NamedBody752_1254 NamedBody752_1255

def NamedBody752_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_1260 : StackLang.HolProg 64 :=
.seq NamedBody752_1258 NamedBody752_1259

def NamedBody752_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1262 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_1260 NamedBody752_1261

def NamedBody752_1263 : StackLang.HolProg 64 :=
.seq NamedBody752_1257 NamedBody752_1262

def NamedBody752_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_1265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 39

def NamedBody752_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_1273 : StackLang.HolProg 64 :=
.seq NamedBody752_1271 NamedBody752_1272

def NamedBody752_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_1275 : StackLang.HolProg 64 :=
.seq NamedBody752_1273 NamedBody752_1274

def NamedBody752_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1277 : StackLang.HolProg 64 :=
.seq NamedBody752_1275 NamedBody752_1276

def NamedBody752_1278 : StackLang.HolProg 64 :=
.seq NamedBody752_1270 NamedBody752_1277

def NamedBody752_1279 : StackLang.HolProg 64 :=
.seq NamedBody752_1269 NamedBody752_1278

def NamedBody752_1280 : StackLang.HolProg 64 :=
.seq NamedBody752_1268 NamedBody752_1279

def NamedBody752_1281 : StackLang.HolProg 64 :=
.seq NamedBody752_1267 NamedBody752_1280

def NamedBody752_1282 : StackLang.HolProg 64 :=
.seq NamedBody752_1266 NamedBody752_1281

def NamedBody752_1283 : StackLang.HolProg 64 :=
.seq NamedBody752_1265 NamedBody752_1282

def NamedBody752_1284 : StackLang.HolProg 64 :=
.seq NamedBody752_1264 NamedBody752_1283

def NamedBody752_1285 : StackLang.HolProg 64 :=
.seq NamedBody752_1263 NamedBody752_1284

def NamedBody752_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_1293 : StackLang.HolProg 64 :=
.seq NamedBody752_1291 NamedBody752_1292

def NamedBody752_1294 : StackLang.HolProg 64 :=
.seq NamedBody752_1290 NamedBody752_1293

def NamedBody752_1295 : StackLang.HolProg 64 :=
.seq NamedBody752_1289 NamedBody752_1294

def NamedBody752_1296 : StackLang.HolProg 64 :=
.seq NamedBody752_1288 NamedBody752_1295

def NamedBody752_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody752_1298 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_1299 : StackLang.HolProg 64 :=
.seq NamedBody752_1297 NamedBody752_1298

def NamedBody752_1300 : StackLang.HolProg 64 :=
.call (some (NamedBody752_1296, 1, 752, 38)) (Sum.inl 734) (some (NamedBody752_1299, 752, 39))

def NamedBody752_1301 : StackLang.HolProg 64 :=
.seq NamedBody752_1287 NamedBody752_1300

def NamedBody752_1302 : StackLang.HolProg 64 :=
.seq NamedBody752_1286 NamedBody752_1301

def NamedBody752_1303 : StackLang.HolProg 64 :=
.seq NamedBody752_1285 NamedBody752_1302

def NamedBody752_1304 : StackLang.HolProg 64 :=
.seq NamedBody752_1256 NamedBody752_1303

def NamedBody752_1305 : StackLang.HolProg 64 :=
.seq NamedBody752_1253 NamedBody752_1304

def NamedBody752_1306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody752_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3339#64)

def NamedBody752_1310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1311 : StackLang.HolProg 64 :=
.seq NamedBody752_1309 NamedBody752_1310

def NamedBody752_1312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody752_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody752_1315 : StackLang.HolProg 64 :=
.seq NamedBody752_1313 NamedBody752_1314

def NamedBody752_1316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1317 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody752_1315 NamedBody752_1316

def NamedBody752_1318 : StackLang.HolProg 64 :=
.seq NamedBody752_1312 NamedBody752_1317

def NamedBody752_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody752_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody752_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 752 41

def NamedBody752_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody752_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody752_1327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody752_1328 : StackLang.HolProg 64 :=
.seq NamedBody752_1326 NamedBody752_1327

def NamedBody752_1329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody752_1330 : StackLang.HolProg 64 :=
.seq NamedBody752_1328 NamedBody752_1329

def NamedBody752_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1332 : StackLang.HolProg 64 :=
.seq NamedBody752_1330 NamedBody752_1331

def NamedBody752_1333 : StackLang.HolProg 64 :=
.seq NamedBody752_1325 NamedBody752_1332

def NamedBody752_1334 : StackLang.HolProg 64 :=
.seq NamedBody752_1324 NamedBody752_1333

def NamedBody752_1335 : StackLang.HolProg 64 :=
.seq NamedBody752_1323 NamedBody752_1334

def NamedBody752_1336 : StackLang.HolProg 64 :=
.seq NamedBody752_1322 NamedBody752_1335

def NamedBody752_1337 : StackLang.HolProg 64 :=
.seq NamedBody752_1321 NamedBody752_1336

def NamedBody752_1338 : StackLang.HolProg 64 :=
.seq NamedBody752_1320 NamedBody752_1337

def NamedBody752_1339 : StackLang.HolProg 64 :=
.seq NamedBody752_1319 NamedBody752_1338

def NamedBody752_1340 : StackLang.HolProg 64 :=
.seq NamedBody752_1318 NamedBody752_1339

def NamedBody752_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody752_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody752_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody752_1347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody752_1348 : StackLang.HolProg 64 :=
.seq NamedBody752_1346 NamedBody752_1347

def NamedBody752_1349 : StackLang.HolProg 64 :=
.seq NamedBody752_1345 NamedBody752_1348

def NamedBody752_1350 : StackLang.HolProg 64 :=
.seq NamedBody752_1344 NamedBody752_1349

def NamedBody752_1351 : StackLang.HolProg 64 :=
.seq NamedBody752_1343 NamedBody752_1350

def NamedBody752_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody752_1353 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody752_1354 : StackLang.HolProg 64 :=
.seq NamedBody752_1352 NamedBody752_1353

def NamedBody752_1355 : StackLang.HolProg 64 :=
.call (some (NamedBody752_1351, 1, 752, 40)) (Sum.inl 70) (some (NamedBody752_1354, 752, 41))

def NamedBody752_1356 : StackLang.HolProg 64 :=
.seq NamedBody752_1342 NamedBody752_1355

def NamedBody752_1357 : StackLang.HolProg 64 :=
.seq NamedBody752_1341 NamedBody752_1356

def NamedBody752_1358 : StackLang.HolProg 64 :=
.seq NamedBody752_1340 NamedBody752_1357

def NamedBody752_1359 : StackLang.HolProg 64 :=
.seq NamedBody752_1311 NamedBody752_1358

def NamedBody752_1360 : StackLang.HolProg 64 :=
.seq NamedBody752_1308 NamedBody752_1359

def NamedBody752_1361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody752_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody752_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody752_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody752_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody752_1366 : StackLang.HolProg 64 :=
.seq NamedBody752_1364 NamedBody752_1365

def NamedBody752_1367 : StackLang.HolProg 64 :=
.seq NamedBody752_1363 NamedBody752_1366

def NamedBody752_1368 : StackLang.HolProg 64 :=
.seq NamedBody752_1362 NamedBody752_1367

def NamedBody752_1369 : StackLang.HolProg 64 :=
.seq NamedBody752_1361 NamedBody752_1368

def NamedBody752_1370 : StackLang.HolProg 64 :=
.seq NamedBody752_1360 NamedBody752_1369

def NamedBody752_1371 : StackLang.HolProg 64 :=
.seq NamedBody752_1307 NamedBody752_1370

def NamedBody752_1372 : StackLang.HolProg 64 :=
.seq NamedBody752_1306 NamedBody752_1371

def NamedBody752_1373 : StackLang.HolProg 64 :=
.seq NamedBody752_1305 NamedBody752_1372

def NamedBody752_1374 : StackLang.HolProg 64 :=
.seq NamedBody752_1252 NamedBody752_1373

def NamedBody752_1375 : StackLang.HolProg 64 :=
.seq NamedBody752_1251 NamedBody752_1374

def NamedBody752_1376 : StackLang.HolProg 64 :=
.seq NamedBody752_1250 NamedBody752_1375

def NamedBody752_1377 : StackLang.HolProg 64 :=
.seq NamedBody752_1249 NamedBody752_1376

def NamedBody752_1378 : StackLang.HolProg 64 :=
.seq NamedBody752_1248 NamedBody752_1377

def NamedBody752_1379 : StackLang.HolProg 64 :=
.seq NamedBody752_1247 NamedBody752_1378

def NamedBody752_1380 : StackLang.HolProg 64 :=
.seq NamedBody752_1246 NamedBody752_1379

def NamedBody752_1381 : StackLang.HolProg 64 :=
.seq NamedBody752_1177 NamedBody752_1380

def NamedBody752_1382 : StackLang.HolProg 64 :=
.seq NamedBody752_1174 NamedBody752_1381

def NamedBody752_1383 : StackLang.HolProg 64 :=
.seq NamedBody752_1173 NamedBody752_1382

def NamedBody752_1384 : StackLang.HolProg 64 :=
.seq NamedBody752_1172 NamedBody752_1383

def NamedBody752_1385 : StackLang.HolProg 64 :=
.seq NamedBody752_1171 NamedBody752_1384

def NamedBody752_1386 : StackLang.HolProg 64 :=
.seq NamedBody752_1170 NamedBody752_1385

def NamedBody752_1387 : StackLang.HolProg 64 :=
.seq NamedBody752_1169 NamedBody752_1386

def NamedBody752_1388 : StackLang.HolProg 64 :=
.seq NamedBody752_1112 NamedBody752_1387

def NamedBody752_1389 : StackLang.HolProg 64 :=
.seq NamedBody752_1107 NamedBody752_1388

def NamedBody752_1390 : StackLang.HolProg 64 :=
.seq NamedBody752_1106 NamedBody752_1389

def NamedBody752_1391 : StackLang.HolProg 64 :=
.seq NamedBody752_1105 NamedBody752_1390

def NamedBody752_1392 : StackLang.HolProg 64 :=
.seq NamedBody752_1104 NamedBody752_1391

def NamedBody752_1393 : StackLang.HolProg 64 :=
.seq NamedBody752_1103 NamedBody752_1392

def NamedBody752_1394 : StackLang.HolProg 64 :=
.seq NamedBody752_1102 NamedBody752_1393

def NamedBody752_1395 : StackLang.HolProg 64 :=
.seq NamedBody752_1041 NamedBody752_1394

def NamedBody752_1396 : StackLang.HolProg 64 :=
.seq NamedBody752_1036 NamedBody752_1395

def NamedBody752_1397 : StackLang.HolProg 64 :=
.seq NamedBody752_1035 NamedBody752_1396

def NamedBody752_1398 : StackLang.HolProg 64 :=
.seq NamedBody752_1034 NamedBody752_1397

def NamedBody752_1399 : StackLang.HolProg 64 :=
.seq NamedBody752_1033 NamedBody752_1398

def NamedBody752_1400 : StackLang.HolProg 64 :=
.seq NamedBody752_976 NamedBody752_1399

def NamedBody752_1401 : StackLang.HolProg 64 :=
.seq NamedBody752_973 NamedBody752_1400

def NamedBody752_1402 : StackLang.HolProg 64 :=
.seq NamedBody752_972 NamedBody752_1401

def NamedBody752_1403 : StackLang.HolProg 64 :=
.seq NamedBody752_971 NamedBody752_1402

def NamedBody752_1404 : StackLang.HolProg 64 :=
.seq NamedBody752_970 NamedBody752_1403

def NamedBody752_1405 : StackLang.HolProg 64 :=
.seq NamedBody752_913 NamedBody752_1404

def NamedBody752_1406 : StackLang.HolProg 64 :=
.seq NamedBody752_906 NamedBody752_1405

def NamedBody752_1407 : StackLang.HolProg 64 :=
.seq NamedBody752_905 NamedBody752_1406

def NamedBody752_1408 : StackLang.HolProg 64 :=
.seq NamedBody752_844 NamedBody752_1407

def NamedBody752_1409 : StackLang.HolProg 64 :=
.seq NamedBody752_841 NamedBody752_1408

def NamedBody752_1410 : StackLang.HolProg 64 :=
.seq NamedBody752_840 NamedBody752_1409

def NamedBody752_1411 : StackLang.HolProg 64 :=
.seq NamedBody752_787 NamedBody752_1410

def NamedBody752_1412 : StackLang.HolProg 64 :=
.seq NamedBody752_784 NamedBody752_1411

def NamedBody752_1413 : StackLang.HolProg 64 :=
.seq NamedBody752_783 NamedBody752_1412

def NamedBody752_1414 : StackLang.HolProg 64 :=
.seq NamedBody752_782 NamedBody752_1413

def NamedBody752_1415 : StackLang.HolProg 64 :=
.seq NamedBody752_781 NamedBody752_1414

def NamedBody752_1416 : StackLang.HolProg 64 :=
.seq NamedBody752_780 NamedBody752_1415

def NamedBody752_1417 : StackLang.HolProg 64 :=
.seq NamedBody752_779 NamedBody752_1416

def NamedBody752_1418 : StackLang.HolProg 64 :=
.seq NamedBody752_778 NamedBody752_1417

def NamedBody752_1419 : StackLang.HolProg 64 :=
.seq NamedBody752_777 NamedBody752_1418

def NamedBody752_1420 : StackLang.HolProg 64 :=
.seq NamedBody752_724 NamedBody752_1419

def NamedBody752_1421 : StackLang.HolProg 64 :=
.seq NamedBody752_723 NamedBody752_1420

def NamedBody752_1422 : StackLang.HolProg 64 :=
.seq NamedBody752_722 NamedBody752_1421

def NamedBody752_1423 : StackLang.HolProg 64 :=
.seq NamedBody752_721 NamedBody752_1422

def NamedBody752_1424 : StackLang.HolProg 64 :=
.seq NamedBody752_720 NamedBody752_1423

def NamedBody752_1425 : StackLang.HolProg 64 :=
.seq NamedBody752_719 NamedBody752_1424

def NamedBody752_1426 : StackLang.HolProg 64 :=
.seq NamedBody752_718 NamedBody752_1425

def NamedBody752_1427 : StackLang.HolProg 64 :=
.seq NamedBody752_717 NamedBody752_1426

def NamedBody752_1428 : StackLang.HolProg 64 :=
.seq NamedBody752_716 NamedBody752_1427

def NamedBody752_1429 : StackLang.HolProg 64 :=
.seq NamedBody752_639 NamedBody752_1428

def NamedBody752_1430 : StackLang.HolProg 64 :=
.seq NamedBody752_634 NamedBody752_1429

def NamedBody752_1431 : StackLang.HolProg 64 :=
.seq NamedBody752_633 NamedBody752_1430

def NamedBody752_1432 : StackLang.HolProg 64 :=
.seq NamedBody752_632 NamedBody752_1431

def NamedBody752_1433 : StackLang.HolProg 64 :=
.seq NamedBody752_631 NamedBody752_1432

def NamedBody752_1434 : StackLang.HolProg 64 :=
.seq NamedBody752_630 NamedBody752_1433

def NamedBody752_1435 : StackLang.HolProg 64 :=
.seq NamedBody752_629 NamedBody752_1434

def NamedBody752_1436 : StackLang.HolProg 64 :=
.seq NamedBody752_628 NamedBody752_1435

def NamedBody752_1437 : StackLang.HolProg 64 :=
.seq NamedBody752_627 NamedBody752_1436

def NamedBody752_1438 : StackLang.HolProg 64 :=
.seq NamedBody752_566 NamedBody752_1437

def NamedBody752_1439 : StackLang.HolProg 64 :=
.seq NamedBody752_561 NamedBody752_1438

def NamedBody752_1440 : StackLang.HolProg 64 :=
.seq NamedBody752_560 NamedBody752_1439

def NamedBody752_1441 : StackLang.HolProg 64 :=
.seq NamedBody752_559 NamedBody752_1440

def NamedBody752_1442 : StackLang.HolProg 64 :=
.seq NamedBody752_558 NamedBody752_1441

def NamedBody752_1443 : StackLang.HolProg 64 :=
.seq NamedBody752_557 NamedBody752_1442

def NamedBody752_1444 : StackLang.HolProg 64 :=
.seq NamedBody752_556 NamedBody752_1443

def NamedBody752_1445 : StackLang.HolProg 64 :=
.seq NamedBody752_495 NamedBody752_1444

def NamedBody752_1446 : StackLang.HolProg 64 :=
.seq NamedBody752_490 NamedBody752_1445

def NamedBody752_1447 : StackLang.HolProg 64 :=
.seq NamedBody752_489 NamedBody752_1446

def NamedBody752_1448 : StackLang.HolProg 64 :=
.seq NamedBody752_488 NamedBody752_1447

def NamedBody752_1449 : StackLang.HolProg 64 :=
.seq NamedBody752_487 NamedBody752_1448

def NamedBody752_1450 : StackLang.HolProg 64 :=
.seq NamedBody752_486 NamedBody752_1449

def NamedBody752_1451 : StackLang.HolProg 64 :=
.seq NamedBody752_485 NamedBody752_1450

def NamedBody752_1452 : StackLang.HolProg 64 :=
.seq NamedBody752_484 NamedBody752_1451

def NamedBody752_1453 : StackLang.HolProg 64 :=
.seq NamedBody752_483 NamedBody752_1452

def NamedBody752_1454 : StackLang.HolProg 64 :=
.seq NamedBody752_422 NamedBody752_1453

def NamedBody752_1455 : StackLang.HolProg 64 :=
.seq NamedBody752_417 NamedBody752_1454

def NamedBody752_1456 : StackLang.HolProg 64 :=
.seq NamedBody752_416 NamedBody752_1455

def NamedBody752_1457 : StackLang.HolProg 64 :=
.seq NamedBody752_415 NamedBody752_1456

def NamedBody752_1458 : StackLang.HolProg 64 :=
.seq NamedBody752_414 NamedBody752_1457

def NamedBody752_1459 : StackLang.HolProg 64 :=
.seq NamedBody752_413 NamedBody752_1458

def NamedBody752_1460 : StackLang.HolProg 64 :=
.seq NamedBody752_412 NamedBody752_1459

def NamedBody752_1461 : StackLang.HolProg 64 :=
.seq NamedBody752_411 NamedBody752_1460

def NamedBody752_1462 : StackLang.HolProg 64 :=
.seq NamedBody752_410 NamedBody752_1461

def NamedBody752_1463 : StackLang.HolProg 64 :=
.seq NamedBody752_349 NamedBody752_1462

def NamedBody752_1464 : StackLang.HolProg 64 :=
.seq NamedBody752_344 NamedBody752_1463

def NamedBody752_1465 : StackLang.HolProg 64 :=
.seq NamedBody752_343 NamedBody752_1464

def NamedBody752_1466 : StackLang.HolProg 64 :=
.seq NamedBody752_342 NamedBody752_1465

def NamedBody752_1467 : StackLang.HolProg 64 :=
.seq NamedBody752_341 NamedBody752_1466

def NamedBody752_1468 : StackLang.HolProg 64 :=
.seq NamedBody752_340 NamedBody752_1467

def NamedBody752_1469 : StackLang.HolProg 64 :=
.seq NamedBody752_339 NamedBody752_1468

def NamedBody752_1470 : StackLang.HolProg 64 :=
.seq NamedBody752_278 NamedBody752_1469

def NamedBody752_1471 : StackLang.HolProg 64 :=
.seq NamedBody752_273 NamedBody752_1470

def NamedBody752_1472 : StackLang.HolProg 64 :=
.seq NamedBody752_272 NamedBody752_1471

def NamedBody752_1473 : StackLang.HolProg 64 :=
.seq NamedBody752_271 NamedBody752_1472

def NamedBody752_1474 : StackLang.HolProg 64 :=
.seq NamedBody752_270 NamedBody752_1473

def NamedBody752_1475 : StackLang.HolProg 64 :=
.seq NamedBody752_269 NamedBody752_1474

def NamedBody752_1476 : StackLang.HolProg 64 :=
.seq NamedBody752_268 NamedBody752_1475

def NamedBody752_1477 : StackLang.HolProg 64 :=
.seq NamedBody752_207 NamedBody752_1476

def NamedBody752_1478 : StackLang.HolProg 64 :=
.seq NamedBody752_202 NamedBody752_1477

def NamedBody752_1479 : StackLang.HolProg 64 :=
.seq NamedBody752_201 NamedBody752_1478

def NamedBody752_1480 : StackLang.HolProg 64 :=
.seq NamedBody752_200 NamedBody752_1479

def NamedBody752_1481 : StackLang.HolProg 64 :=
.seq NamedBody752_199 NamedBody752_1480

def NamedBody752_1482 : StackLang.HolProg 64 :=
.seq NamedBody752_198 NamedBody752_1481

def NamedBody752_1483 : StackLang.HolProg 64 :=
.seq NamedBody752_197 NamedBody752_1482

def NamedBody752_1484 : StackLang.HolProg 64 :=
.seq NamedBody752_136 NamedBody752_1483

def NamedBody752_1485 : StackLang.HolProg 64 :=
.seq NamedBody752_129 NamedBody752_1484

def NamedBody752_1486 : StackLang.HolProg 64 :=
.seq NamedBody752_128 NamedBody752_1485

def NamedBody752_1487 : StackLang.HolProg 64 :=
.seq NamedBody752_69 NamedBody752_1486

def NamedBody752_1488 : StackLang.HolProg 64 :=
.seq NamedBody752_68 NamedBody752_1487

def NamedBody752_1489 : StackLang.HolProg 64 :=
.seq NamedBody752_67 NamedBody752_1488

def NamedBody752_1490 : StackLang.HolProg 64 :=
.seq NamedBody752_66 NamedBody752_1489

def NamedBody752_1491 : StackLang.HolProg 64 :=
.seq NamedBody752_13 NamedBody752_1490

def NamedBody752_1492 : StackLang.HolProg 64 :=
.seq NamedBody752_6 NamedBody752_1491

def Named752 : Nat × StackLang.HolProg 64 := (752, NamedBody752_1492)
theorem Named752_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed752 = Named752 := by
  kernel_rfl
#print axioms Named752_eq
end InitECandidate.Proofs.BackendStages
