import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed289
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody289_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody289_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody289_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody289_3 : StackLang.HolProg 64 :=
.seq NamedBody289_1 NamedBody289_2

def NamedBody289_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody289_3 NamedBody289_4

def NamedBody289_6 : StackLang.HolProg 64 :=
.seq NamedBody289_0 NamedBody289_5

def NamedBody289_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody289_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody289_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody289_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody289_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody289_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody289_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody289_14 : StackLang.HolProg 64 :=
.seq NamedBody289_12 NamedBody289_13

def NamedBody289_15 : StackLang.HolProg 64 :=
.seq NamedBody289_11 NamedBody289_14

def NamedBody289_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 790#64)

def NamedBody289_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody289_19 : StackLang.HolProg 64 :=
.seq NamedBody289_17 NamedBody289_18

def NamedBody289_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody289_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody289_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody289_23 : StackLang.HolProg 64 :=
.seq NamedBody289_21 NamedBody289_22

def NamedBody289_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody289_23 NamedBody289_24

def NamedBody289_26 : StackLang.HolProg 64 :=
.seq NamedBody289_20 NamedBody289_25

def NamedBody289_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody289_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody289_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 3

def NamedBody289_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody289_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody289_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody289_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody289_36 : StackLang.HolProg 64 :=
.seq NamedBody289_34 NamedBody289_35

def NamedBody289_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody289_38 : StackLang.HolProg 64 :=
.seq NamedBody289_36 NamedBody289_37

def NamedBody289_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody289_40 : StackLang.HolProg 64 :=
.seq NamedBody289_38 NamedBody289_39

def NamedBody289_41 : StackLang.HolProg 64 :=
.seq NamedBody289_33 NamedBody289_40

def NamedBody289_42 : StackLang.HolProg 64 :=
.seq NamedBody289_32 NamedBody289_41

def NamedBody289_43 : StackLang.HolProg 64 :=
.seq NamedBody289_31 NamedBody289_42

def NamedBody289_44 : StackLang.HolProg 64 :=
.seq NamedBody289_30 NamedBody289_43

def NamedBody289_45 : StackLang.HolProg 64 :=
.seq NamedBody289_29 NamedBody289_44

def NamedBody289_46 : StackLang.HolProg 64 :=
.seq NamedBody289_28 NamedBody289_45

def NamedBody289_47 : StackLang.HolProg 64 :=
.seq NamedBody289_27 NamedBody289_46

def NamedBody289_48 : StackLang.HolProg 64 :=
.seq NamedBody289_26 NamedBody289_47

def NamedBody289_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody289_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody289_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody289_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody289_57 : StackLang.HolProg 64 :=
.seq NamedBody289_55 NamedBody289_56

def NamedBody289_58 : StackLang.HolProg 64 :=
.seq NamedBody289_54 NamedBody289_57

def NamedBody289_59 : StackLang.HolProg 64 :=
.seq NamedBody289_53 NamedBody289_58

def NamedBody289_60 : StackLang.HolProg 64 :=
.seq NamedBody289_52 NamedBody289_59

def NamedBody289_61 : StackLang.HolProg 64 :=
.seq NamedBody289_51 NamedBody289_60

def NamedBody289_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody289_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody289_64 : StackLang.HolProg 64 :=
.seq NamedBody289_62 NamedBody289_63

def NamedBody289_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody289_66 : StackLang.HolProg 64 :=
.seq NamedBody289_64 NamedBody289_65

def NamedBody289_67 : StackLang.HolProg 64 :=
.call (some (NamedBody289_61, 1, 289, 2)) (Sum.inl 286) (some (NamedBody289_66, 289, 3))

def NamedBody289_68 : StackLang.HolProg 64 :=
.seq NamedBody289_50 NamedBody289_67

def NamedBody289_69 : StackLang.HolProg 64 :=
.seq NamedBody289_49 NamedBody289_68

def NamedBody289_70 : StackLang.HolProg 64 :=
.seq NamedBody289_48 NamedBody289_69

def NamedBody289_71 : StackLang.HolProg 64 :=
.seq NamedBody289_19 NamedBody289_70

def NamedBody289_72 : StackLang.HolProg 64 :=
.seq NamedBody289_16 NamedBody289_71

def NamedBody289_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody289_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_75 : StackLang.HolProg 64 :=
.seq NamedBody289_73 NamedBody289_74

def NamedBody289_76 : StackLang.HolProg 64 :=
.seq NamedBody289_72 NamedBody289_75

def NamedBody289_77 : StackLang.HolProg 64 :=
.seq NamedBody289_15 NamedBody289_76

def NamedBody289_78 : StackLang.HolProg 64 :=
.seq NamedBody289_10 NamedBody289_77

def NamedBody289_79 : StackLang.HolProg 64 :=
.seq NamedBody289_9 NamedBody289_78

def NamedBody289_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody289_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody289_82 : StackLang.HolProg 64 :=
.seq NamedBody289_80 NamedBody289_81

def NamedBody289_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody289_79 NamedBody289_82

def NamedBody289_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody289_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody289_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody289_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody289_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody289_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody289_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody289_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody289_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody289_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody289_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody289_101 : StackLang.HolProg 64 :=
.seq NamedBody289_99 NamedBody289_100

def NamedBody289_102 : StackLang.HolProg 64 :=
.seq NamedBody289_98 NamedBody289_101

def NamedBody289_103 : StackLang.HolProg 64 :=
.seq NamedBody289_97 NamedBody289_102

def NamedBody289_104 : StackLang.HolProg 64 :=
.seq NamedBody289_96 NamedBody289_103

def NamedBody289_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 791#64)

def NamedBody289_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody289_108 : StackLang.HolProg 64 :=
.seq NamedBody289_106 NamedBody289_107

def NamedBody289_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody289_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody289_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody289_112 : StackLang.HolProg 64 :=
.seq NamedBody289_110 NamedBody289_111

def NamedBody289_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody289_112 NamedBody289_113

def NamedBody289_115 : StackLang.HolProg 64 :=
.seq NamedBody289_109 NamedBody289_114

def NamedBody289_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody289_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody289_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 5

def NamedBody289_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody289_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody289_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody289_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody289_125 : StackLang.HolProg 64 :=
.seq NamedBody289_123 NamedBody289_124

def NamedBody289_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody289_127 : StackLang.HolProg 64 :=
.seq NamedBody289_125 NamedBody289_126

def NamedBody289_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody289_129 : StackLang.HolProg 64 :=
.seq NamedBody289_127 NamedBody289_128

def NamedBody289_130 : StackLang.HolProg 64 :=
.seq NamedBody289_122 NamedBody289_129

def NamedBody289_131 : StackLang.HolProg 64 :=
.seq NamedBody289_121 NamedBody289_130

def NamedBody289_132 : StackLang.HolProg 64 :=
.seq NamedBody289_120 NamedBody289_131

def NamedBody289_133 : StackLang.HolProg 64 :=
.seq NamedBody289_119 NamedBody289_132

def NamedBody289_134 : StackLang.HolProg 64 :=
.seq NamedBody289_118 NamedBody289_133

def NamedBody289_135 : StackLang.HolProg 64 :=
.seq NamedBody289_117 NamedBody289_134

def NamedBody289_136 : StackLang.HolProg 64 :=
.seq NamedBody289_116 NamedBody289_135

def NamedBody289_137 : StackLang.HolProg 64 :=
.seq NamedBody289_115 NamedBody289_136

def NamedBody289_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody289_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody289_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody289_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody289_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody289_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody289_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody289_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_151 : StackLang.HolProg 64 :=
.seq NamedBody289_149 NamedBody289_150

def NamedBody289_152 : StackLang.HolProg 64 :=
.seq NamedBody289_148 NamedBody289_151

def NamedBody289_153 : StackLang.HolProg 64 :=
.seq NamedBody289_147 NamedBody289_152

def NamedBody289_154 : StackLang.HolProg 64 :=
.seq NamedBody289_146 NamedBody289_153

def NamedBody289_155 : StackLang.HolProg 64 :=
.seq NamedBody289_145 NamedBody289_154

def NamedBody289_156 : StackLang.HolProg 64 :=
.seq NamedBody289_144 NamedBody289_155

def NamedBody289_157 : StackLang.HolProg 64 :=
.seq NamedBody289_143 NamedBody289_156

def NamedBody289_158 : StackLang.HolProg 64 :=
.seq NamedBody289_142 NamedBody289_157

def NamedBody289_159 : StackLang.HolProg 64 :=
.seq NamedBody289_141 NamedBody289_158

def NamedBody289_160 : StackLang.HolProg 64 :=
.seq NamedBody289_140 NamedBody289_159

def NamedBody289_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody289_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody289_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody289_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody289_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_167 : StackLang.HolProg 64 :=
.seq NamedBody289_165 NamedBody289_166

def NamedBody289_168 : StackLang.HolProg 64 :=
.seq NamedBody289_164 NamedBody289_167

def NamedBody289_169 : StackLang.HolProg 64 :=
.seq NamedBody289_163 NamedBody289_168

def NamedBody289_170 : StackLang.HolProg 64 :=
.seq NamedBody289_162 NamedBody289_169

def NamedBody289_171 : StackLang.HolProg 64 :=
.seq NamedBody289_161 NamedBody289_170

def NamedBody289_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody289_173 : StackLang.HolProg 64 :=
.seq NamedBody289_171 NamedBody289_172

def NamedBody289_174 : StackLang.HolProg 64 :=
.call (some (NamedBody289_160, 1, 289, 4)) (Sum.inl 68) (some (NamedBody289_173, 289, 5))

def NamedBody289_175 : StackLang.HolProg 64 :=
.seq NamedBody289_139 NamedBody289_174

def NamedBody289_176 : StackLang.HolProg 64 :=
.seq NamedBody289_138 NamedBody289_175

def NamedBody289_177 : StackLang.HolProg 64 :=
.seq NamedBody289_137 NamedBody289_176

def NamedBody289_178 : StackLang.HolProg 64 :=
.seq NamedBody289_108 NamedBody289_177

def NamedBody289_179 : StackLang.HolProg 64 :=
.seq NamedBody289_105 NamedBody289_178

def NamedBody289_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody289_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody289_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody289_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody289_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def NamedBody289_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody289_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody289_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_190 : StackLang.HolProg 64 :=
.seq NamedBody289_188 NamedBody289_189

def NamedBody289_191 : StackLang.HolProg 64 :=
.seq NamedBody289_187 NamedBody289_190

def NamedBody289_192 : StackLang.HolProg 64 :=
.seq NamedBody289_186 NamedBody289_191

def NamedBody289_193 : StackLang.HolProg 64 :=
.seq NamedBody289_185 NamedBody289_192

def NamedBody289_194 : StackLang.HolProg 64 :=
.seq NamedBody289_184 NamedBody289_193

def NamedBody289_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody289_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_197 : StackLang.HolProg 64 :=
.seq NamedBody289_195 NamedBody289_196

def NamedBody289_198 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody289_194 NamedBody289_197

def NamedBody289_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody289_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody289_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody289_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody289_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody289_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody289_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody289_209 : StackLang.HolProg 64 :=
.seq NamedBody289_207 NamedBody289_208

def NamedBody289_210 : StackLang.HolProg 64 :=
.seq NamedBody289_206 NamedBody289_209

def NamedBody289_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 792#64)

def NamedBody289_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody289_214 : StackLang.HolProg 64 :=
.seq NamedBody289_212 NamedBody289_213

def NamedBody289_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody289_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody289_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody289_218 : StackLang.HolProg 64 :=
.seq NamedBody289_216 NamedBody289_217

def NamedBody289_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody289_218 NamedBody289_219

def NamedBody289_221 : StackLang.HolProg 64 :=
.seq NamedBody289_215 NamedBody289_220

def NamedBody289_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody289_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody289_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 7

def NamedBody289_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody289_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody289_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody289_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody289_231 : StackLang.HolProg 64 :=
.seq NamedBody289_229 NamedBody289_230

def NamedBody289_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody289_233 : StackLang.HolProg 64 :=
.seq NamedBody289_231 NamedBody289_232

def NamedBody289_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody289_235 : StackLang.HolProg 64 :=
.seq NamedBody289_233 NamedBody289_234

def NamedBody289_236 : StackLang.HolProg 64 :=
.seq NamedBody289_228 NamedBody289_235

def NamedBody289_237 : StackLang.HolProg 64 :=
.seq NamedBody289_227 NamedBody289_236

def NamedBody289_238 : StackLang.HolProg 64 :=
.seq NamedBody289_226 NamedBody289_237

def NamedBody289_239 : StackLang.HolProg 64 :=
.seq NamedBody289_225 NamedBody289_238

def NamedBody289_240 : StackLang.HolProg 64 :=
.seq NamedBody289_224 NamedBody289_239

def NamedBody289_241 : StackLang.HolProg 64 :=
.seq NamedBody289_223 NamedBody289_240

def NamedBody289_242 : StackLang.HolProg 64 :=
.seq NamedBody289_222 NamedBody289_241

def NamedBody289_243 : StackLang.HolProg 64 :=
.seq NamedBody289_221 NamedBody289_242

def NamedBody289_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody289_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody289_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody289_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody289_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody289_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody289_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_255 : StackLang.HolProg 64 :=
.seq NamedBody289_253 NamedBody289_254

def NamedBody289_256 : StackLang.HolProg 64 :=
.seq NamedBody289_252 NamedBody289_255

def NamedBody289_257 : StackLang.HolProg 64 :=
.seq NamedBody289_251 NamedBody289_256

def NamedBody289_258 : StackLang.HolProg 64 :=
.seq NamedBody289_250 NamedBody289_257

def NamedBody289_259 : StackLang.HolProg 64 :=
.seq NamedBody289_249 NamedBody289_258

def NamedBody289_260 : StackLang.HolProg 64 :=
.seq NamedBody289_248 NamedBody289_259

def NamedBody289_261 : StackLang.HolProg 64 :=
.seq NamedBody289_247 NamedBody289_260

def NamedBody289_262 : StackLang.HolProg 64 :=
.seq NamedBody289_246 NamedBody289_261

def NamedBody289_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody289_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody289_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody289_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody289_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody289_268 : StackLang.HolProg 64 :=
.seq NamedBody289_266 NamedBody289_267

def NamedBody289_269 : StackLang.HolProg 64 :=
.seq NamedBody289_265 NamedBody289_268

def NamedBody289_270 : StackLang.HolProg 64 :=
.seq NamedBody289_264 NamedBody289_269

def NamedBody289_271 : StackLang.HolProg 64 :=
.seq NamedBody289_263 NamedBody289_270

def NamedBody289_272 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody289_273 : StackLang.HolProg 64 :=
.seq NamedBody289_271 NamedBody289_272

def NamedBody289_274 : StackLang.HolProg 64 :=
.call (some (NamedBody289_262, 1, 289, 6)) (Sum.inl 288) (some (NamedBody289_273, 289, 7))

def NamedBody289_275 : StackLang.HolProg 64 :=
.seq NamedBody289_245 NamedBody289_274

def NamedBody289_276 : StackLang.HolProg 64 :=
.seq NamedBody289_244 NamedBody289_275

def NamedBody289_277 : StackLang.HolProg 64 :=
.seq NamedBody289_243 NamedBody289_276

def NamedBody289_278 : StackLang.HolProg 64 :=
.seq NamedBody289_214 NamedBody289_277

def NamedBody289_279 : StackLang.HolProg 64 :=
.seq NamedBody289_211 NamedBody289_278

def NamedBody289_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody289_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody289_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody289_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody289_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody289_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody289_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody289_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody289_289 : StackLang.HolProg 64 :=
.seq NamedBody289_287 NamedBody289_288

def NamedBody289_290 : StackLang.HolProg 64 :=
.seq NamedBody289_286 NamedBody289_289

def NamedBody289_291 : StackLang.HolProg 64 :=
.seq NamedBody289_285 NamedBody289_290

def NamedBody289_292 : StackLang.HolProg 64 :=
.seq NamedBody289_284 NamedBody289_291

def NamedBody289_293 : StackLang.HolProg 64 :=
.seq NamedBody289_283 NamedBody289_292

def NamedBody289_294 : StackLang.HolProg 64 :=
.seq NamedBody289_282 NamedBody289_293

def NamedBody289_295 : StackLang.HolProg 64 :=
.seq NamedBody289_281 NamedBody289_294

def NamedBody289_296 : StackLang.HolProg 64 :=
.seq NamedBody289_280 NamedBody289_295

def NamedBody289_297 : StackLang.HolProg 64 :=
.seq NamedBody289_279 NamedBody289_296

def NamedBody289_298 : StackLang.HolProg 64 :=
.seq NamedBody289_210 NamedBody289_297

def NamedBody289_299 : StackLang.HolProg 64 :=
.seq NamedBody289_205 NamedBody289_298

def NamedBody289_300 : StackLang.HolProg 64 :=
.seq NamedBody289_204 NamedBody289_299

def NamedBody289_301 : StackLang.HolProg 64 :=
.seq NamedBody289_203 NamedBody289_300

def NamedBody289_302 : StackLang.HolProg 64 :=
.seq NamedBody289_202 NamedBody289_301

def NamedBody289_303 : StackLang.HolProg 64 :=
.seq NamedBody289_201 NamedBody289_302

def NamedBody289_304 : StackLang.HolProg 64 :=
.seq NamedBody289_200 NamedBody289_303

def NamedBody289_305 : StackLang.HolProg 64 :=
.seq NamedBody289_199 NamedBody289_304

def NamedBody289_306 : StackLang.HolProg 64 :=
.seq NamedBody289_198 NamedBody289_305

def NamedBody289_307 : StackLang.HolProg 64 :=
.seq NamedBody289_183 NamedBody289_306

def NamedBody289_308 : StackLang.HolProg 64 :=
.seq NamedBody289_182 NamedBody289_307

def NamedBody289_309 : StackLang.HolProg 64 :=
.seq NamedBody289_181 NamedBody289_308

def NamedBody289_310 : StackLang.HolProg 64 :=
.seq NamedBody289_180 NamedBody289_309

def NamedBody289_311 : StackLang.HolProg 64 :=
.seq NamedBody289_179 NamedBody289_310

def NamedBody289_312 : StackLang.HolProg 64 :=
.seq NamedBody289_104 NamedBody289_311

def NamedBody289_313 : StackLang.HolProg 64 :=
.seq NamedBody289_95 NamedBody289_312

def NamedBody289_314 : StackLang.HolProg 64 :=
.seq NamedBody289_94 NamedBody289_313

def NamedBody289_315 : StackLang.HolProg 64 :=
.seq NamedBody289_93 NamedBody289_314

def NamedBody289_316 : StackLang.HolProg 64 :=
.seq NamedBody289_92 NamedBody289_315

def NamedBody289_317 : StackLang.HolProg 64 :=
.seq NamedBody289_91 NamedBody289_316

def NamedBody289_318 : StackLang.HolProg 64 :=
.seq NamedBody289_90 NamedBody289_317

def NamedBody289_319 : StackLang.HolProg 64 :=
.seq NamedBody289_89 NamedBody289_318

def NamedBody289_320 : StackLang.HolProg 64 :=
.seq NamedBody289_88 NamedBody289_319

def NamedBody289_321 : StackLang.HolProg 64 :=
.seq NamedBody289_87 NamedBody289_320

def NamedBody289_322 : StackLang.HolProg 64 :=
.seq NamedBody289_86 NamedBody289_321

def NamedBody289_323 : StackLang.HolProg 64 :=
.seq NamedBody289_85 NamedBody289_322

def NamedBody289_324 : StackLang.HolProg 64 :=
.seq NamedBody289_84 NamedBody289_323

def NamedBody289_325 : StackLang.HolProg 64 :=
.seq NamedBody289_83 NamedBody289_324

def NamedBody289_326 : StackLang.HolProg 64 :=
.seq NamedBody289_8 NamedBody289_325

def NamedBody289_327 : StackLang.HolProg 64 :=
.seq NamedBody289_7 NamedBody289_326

def NamedBody289_328 : StackLang.HolProg 64 :=
.seq NamedBody289_6 NamedBody289_327

def Named289 : Nat × StackLang.HolProg 64 := (289, NamedBody289_328)
theorem Named289_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed289 = Named289 := by
  kernel_rfl
#print axioms Named289_eq
end InitECandidate.Proofs.BackendStages
