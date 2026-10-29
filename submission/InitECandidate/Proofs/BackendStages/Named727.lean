import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed727
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody727_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody727_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody727_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody727_3 : StackLang.HolProg 64 :=
.seq NamedBody727_1 NamedBody727_2

def NamedBody727_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody727_3 NamedBody727_4

def NamedBody727_6 : StackLang.HolProg 64 :=
.seq NamedBody727_0 NamedBody727_5

def NamedBody727_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody727_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 16#64)

def NamedBody727_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody727_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody727_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_12 : StackLang.HolProg 64 :=
.seq NamedBody727_10 NamedBody727_11

def NamedBody727_13 : StackLang.HolProg 64 :=
.seq NamedBody727_9 NamedBody727_12

def NamedBody727_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3254#64)

def NamedBody727_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody727_17 : StackLang.HolProg 64 :=
.seq NamedBody727_15 NamedBody727_16

def NamedBody727_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody727_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody727_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody727_21 : StackLang.HolProg 64 :=
.seq NamedBody727_19 NamedBody727_20

def NamedBody727_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody727_21 NamedBody727_22

def NamedBody727_24 : StackLang.HolProg 64 :=
.seq NamedBody727_18 NamedBody727_23

def NamedBody727_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody727_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody727_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 727 3

def NamedBody727_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody727_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody727_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody727_34 : StackLang.HolProg 64 :=
.seq NamedBody727_32 NamedBody727_33

def NamedBody727_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody727_36 : StackLang.HolProg 64 :=
.seq NamedBody727_34 NamedBody727_35

def NamedBody727_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_38 : StackLang.HolProg 64 :=
.seq NamedBody727_36 NamedBody727_37

def NamedBody727_39 : StackLang.HolProg 64 :=
.seq NamedBody727_31 NamedBody727_38

def NamedBody727_40 : StackLang.HolProg 64 :=
.seq NamedBody727_30 NamedBody727_39

def NamedBody727_41 : StackLang.HolProg 64 :=
.seq NamedBody727_29 NamedBody727_40

def NamedBody727_42 : StackLang.HolProg 64 :=
.seq NamedBody727_28 NamedBody727_41

def NamedBody727_43 : StackLang.HolProg 64 :=
.seq NamedBody727_27 NamedBody727_42

def NamedBody727_44 : StackLang.HolProg 64 :=
.seq NamedBody727_26 NamedBody727_43

def NamedBody727_45 : StackLang.HolProg 64 :=
.seq NamedBody727_25 NamedBody727_44

def NamedBody727_46 : StackLang.HolProg 64 :=
.seq NamedBody727_24 NamedBody727_45

def NamedBody727_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody727_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody727_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody727_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_56 : StackLang.HolProg 64 :=
.seq NamedBody727_54 NamedBody727_55

def NamedBody727_57 : StackLang.HolProg 64 :=
.seq NamedBody727_53 NamedBody727_56

def NamedBody727_58 : StackLang.HolProg 64 :=
.seq NamedBody727_52 NamedBody727_57

def NamedBody727_59 : StackLang.HolProg 64 :=
.seq NamedBody727_51 NamedBody727_58

def NamedBody727_60 : StackLang.HolProg 64 :=
.seq NamedBody727_50 NamedBody727_59

def NamedBody727_61 : StackLang.HolProg 64 :=
.seq NamedBody727_49 NamedBody727_60

def NamedBody727_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody727_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_64 : StackLang.HolProg 64 :=
.seq NamedBody727_62 NamedBody727_63

def NamedBody727_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody727_66 : StackLang.HolProg 64 :=
.seq NamedBody727_64 NamedBody727_65

def NamedBody727_67 : StackLang.HolProg 64 :=
.call (some (NamedBody727_61, 1, 727, 2)) (Sum.inl 80) (some (NamedBody727_66, 727, 3))

def NamedBody727_68 : StackLang.HolProg 64 :=
.seq NamedBody727_48 NamedBody727_67

def NamedBody727_69 : StackLang.HolProg 64 :=
.seq NamedBody727_47 NamedBody727_68

def NamedBody727_70 : StackLang.HolProg 64 :=
.seq NamedBody727_46 NamedBody727_69

def NamedBody727_71 : StackLang.HolProg 64 :=
.seq NamedBody727_17 NamedBody727_70

def NamedBody727_72 : StackLang.HolProg 64 :=
.seq NamedBody727_14 NamedBody727_71

def NamedBody727_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody727_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody727_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody727_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody727_81 : StackLang.HolProg 64 :=
.seq NamedBody727_79 NamedBody727_80

def NamedBody727_82 : StackLang.HolProg 64 :=
.seq NamedBody727_78 NamedBody727_81

def NamedBody727_83 : StackLang.HolProg 64 :=
.seq NamedBody727_77 NamedBody727_82

def NamedBody727_84 : StackLang.HolProg 64 :=
.seq NamedBody727_76 NamedBody727_83

def NamedBody727_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody727_84 NamedBody727_85

def NamedBody727_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody727_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody727_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3255#64)

def NamedBody727_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody727_95 : StackLang.HolProg 64 :=
.seq NamedBody727_93 NamedBody727_94

def NamedBody727_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody727_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody727_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody727_99 : StackLang.HolProg 64 :=
.seq NamedBody727_97 NamedBody727_98

def NamedBody727_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody727_99 NamedBody727_100

def NamedBody727_102 : StackLang.HolProg 64 :=
.seq NamedBody727_96 NamedBody727_101

def NamedBody727_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody727_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody727_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 727 5

def NamedBody727_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody727_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody727_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody727_112 : StackLang.HolProg 64 :=
.seq NamedBody727_110 NamedBody727_111

def NamedBody727_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody727_114 : StackLang.HolProg 64 :=
.seq NamedBody727_112 NamedBody727_113

def NamedBody727_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_116 : StackLang.HolProg 64 :=
.seq NamedBody727_114 NamedBody727_115

def NamedBody727_117 : StackLang.HolProg 64 :=
.seq NamedBody727_109 NamedBody727_116

def NamedBody727_118 : StackLang.HolProg 64 :=
.seq NamedBody727_108 NamedBody727_117

def NamedBody727_119 : StackLang.HolProg 64 :=
.seq NamedBody727_107 NamedBody727_118

def NamedBody727_120 : StackLang.HolProg 64 :=
.seq NamedBody727_106 NamedBody727_119

def NamedBody727_121 : StackLang.HolProg 64 :=
.seq NamedBody727_105 NamedBody727_120

def NamedBody727_122 : StackLang.HolProg 64 :=
.seq NamedBody727_104 NamedBody727_121

def NamedBody727_123 : StackLang.HolProg 64 :=
.seq NamedBody727_103 NamedBody727_122

def NamedBody727_124 : StackLang.HolProg 64 :=
.seq NamedBody727_102 NamedBody727_123

def NamedBody727_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody727_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody727_132 : StackLang.HolProg 64 :=
.seq NamedBody727_130 NamedBody727_131

def NamedBody727_133 : StackLang.HolProg 64 :=
.seq NamedBody727_129 NamedBody727_132

def NamedBody727_134 : StackLang.HolProg 64 :=
.seq NamedBody727_128 NamedBody727_133

def NamedBody727_135 : StackLang.HolProg 64 :=
.seq NamedBody727_127 NamedBody727_134

def NamedBody727_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody727_138 : StackLang.HolProg 64 :=
.seq NamedBody727_136 NamedBody727_137

def NamedBody727_139 : StackLang.HolProg 64 :=
.call (some (NamedBody727_135, 1, 727, 4)) (Sum.inl 725) (some (NamedBody727_138, 727, 5))

def NamedBody727_140 : StackLang.HolProg 64 :=
.seq NamedBody727_126 NamedBody727_139

def NamedBody727_141 : StackLang.HolProg 64 :=
.seq NamedBody727_125 NamedBody727_140

def NamedBody727_142 : StackLang.HolProg 64 :=
.seq NamedBody727_124 NamedBody727_141

def NamedBody727_143 : StackLang.HolProg 64 :=
.seq NamedBody727_95 NamedBody727_142

def NamedBody727_144 : StackLang.HolProg 64 :=
.seq NamedBody727_92 NamedBody727_143

def NamedBody727_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody727_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 1873798617647539866#64)

def NamedBody727_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 5412103778470702295#64)

def NamedBody727_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 7239337960414712511#64)

def NamedBody727_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def NamedBody727_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def NamedBody727_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def NamedBody727_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody727_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody727_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody727_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody727_159 : StackLang.HolProg 64 :=
.seq NamedBody727_157 NamedBody727_158

def NamedBody727_160 : StackLang.HolProg 64 :=
.seq NamedBody727_156 NamedBody727_159

def NamedBody727_161 : StackLang.HolProg 64 :=
.seq NamedBody727_155 NamedBody727_160

def NamedBody727_162 : StackLang.HolProg 64 :=
.seq NamedBody727_154 NamedBody727_161

def NamedBody727_163 : StackLang.HolProg 64 :=
.seq NamedBody727_153 NamedBody727_162

def NamedBody727_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3256#64)

def NamedBody727_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody727_167 : StackLang.HolProg 64 :=
.seq NamedBody727_165 NamedBody727_166

def NamedBody727_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody727_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody727_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody727_171 : StackLang.HolProg 64 :=
.seq NamedBody727_169 NamedBody727_170

def NamedBody727_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody727_171 NamedBody727_172

def NamedBody727_174 : StackLang.HolProg 64 :=
.seq NamedBody727_168 NamedBody727_173

def NamedBody727_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody727_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody727_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 727 7

def NamedBody727_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody727_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody727_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody727_184 : StackLang.HolProg 64 :=
.seq NamedBody727_182 NamedBody727_183

def NamedBody727_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody727_186 : StackLang.HolProg 64 :=
.seq NamedBody727_184 NamedBody727_185

def NamedBody727_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_188 : StackLang.HolProg 64 :=
.seq NamedBody727_186 NamedBody727_187

def NamedBody727_189 : StackLang.HolProg 64 :=
.seq NamedBody727_181 NamedBody727_188

def NamedBody727_190 : StackLang.HolProg 64 :=
.seq NamedBody727_180 NamedBody727_189

def NamedBody727_191 : StackLang.HolProg 64 :=
.seq NamedBody727_179 NamedBody727_190

def NamedBody727_192 : StackLang.HolProg 64 :=
.seq NamedBody727_178 NamedBody727_191

def NamedBody727_193 : StackLang.HolProg 64 :=
.seq NamedBody727_177 NamedBody727_192

def NamedBody727_194 : StackLang.HolProg 64 :=
.seq NamedBody727_176 NamedBody727_193

def NamedBody727_195 : StackLang.HolProg 64 :=
.seq NamedBody727_175 NamedBody727_194

def NamedBody727_196 : StackLang.HolProg 64 :=
.seq NamedBody727_174 NamedBody727_195

def NamedBody727_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody727_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody727_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody727_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody727_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody727_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_209 : StackLang.HolProg 64 :=
.seq NamedBody727_207 NamedBody727_208

def NamedBody727_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody727_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody727_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody727_214 : StackLang.HolProg 64 :=
.seq NamedBody727_212 NamedBody727_213

def NamedBody727_215 : StackLang.HolProg 64 :=
.seq NamedBody727_211 NamedBody727_214

def NamedBody727_216 : StackLang.HolProg 64 :=
.seq NamedBody727_210 NamedBody727_215

def NamedBody727_217 : StackLang.HolProg 64 :=
.seq NamedBody727_209 NamedBody727_216

def NamedBody727_218 : StackLang.HolProg 64 :=
.seq NamedBody727_206 NamedBody727_217

def NamedBody727_219 : StackLang.HolProg 64 :=
.seq NamedBody727_205 NamedBody727_218

def NamedBody727_220 : StackLang.HolProg 64 :=
.seq NamedBody727_204 NamedBody727_219

def NamedBody727_221 : StackLang.HolProg 64 :=
.seq NamedBody727_203 NamedBody727_220

def NamedBody727_222 : StackLang.HolProg 64 :=
.seq NamedBody727_202 NamedBody727_221

def NamedBody727_223 : StackLang.HolProg 64 :=
.seq NamedBody727_201 NamedBody727_222

def NamedBody727_224 : StackLang.HolProg 64 :=
.seq NamedBody727_200 NamedBody727_223

def NamedBody727_225 : StackLang.HolProg 64 :=
.seq NamedBody727_199 NamedBody727_224

def NamedBody727_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody727_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody727_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody727_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_231 : StackLang.HolProg 64 :=
.seq NamedBody727_229 NamedBody727_230

def NamedBody727_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody727_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody727_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody727_236 : StackLang.HolProg 64 :=
.seq NamedBody727_234 NamedBody727_235

def NamedBody727_237 : StackLang.HolProg 64 :=
.seq NamedBody727_233 NamedBody727_236

def NamedBody727_238 : StackLang.HolProg 64 :=
.seq NamedBody727_232 NamedBody727_237

def NamedBody727_239 : StackLang.HolProg 64 :=
.seq NamedBody727_231 NamedBody727_238

def NamedBody727_240 : StackLang.HolProg 64 :=
.seq NamedBody727_228 NamedBody727_239

def NamedBody727_241 : StackLang.HolProg 64 :=
.seq NamedBody727_227 NamedBody727_240

def NamedBody727_242 : StackLang.HolProg 64 :=
.seq NamedBody727_226 NamedBody727_241

def NamedBody727_243 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody727_244 : StackLang.HolProg 64 :=
.seq NamedBody727_242 NamedBody727_243

def NamedBody727_245 : StackLang.HolProg 64 :=
.call (some (NamedBody727_225, 1, 727, 6)) (Sum.inl 707) (some (NamedBody727_244, 727, 7))

def NamedBody727_246 : StackLang.HolProg 64 :=
.seq NamedBody727_198 NamedBody727_245

def NamedBody727_247 : StackLang.HolProg 64 :=
.seq NamedBody727_197 NamedBody727_246

def NamedBody727_248 : StackLang.HolProg 64 :=
.seq NamedBody727_196 NamedBody727_247

def NamedBody727_249 : StackLang.HolProg 64 :=
.seq NamedBody727_167 NamedBody727_248

def NamedBody727_250 : StackLang.HolProg 64 :=
.seq NamedBody727_164 NamedBody727_249

def NamedBody727_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody727_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody727_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody727_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def NamedBody727_259 : StackLang.HolProg 64 :=
.seq NamedBody727_257 NamedBody727_258

def NamedBody727_260 : StackLang.HolProg 64 :=
.seq NamedBody727_256 NamedBody727_259

def NamedBody727_261 : StackLang.HolProg 64 :=
.seq NamedBody727_255 NamedBody727_260

def NamedBody727_262 : StackLang.HolProg 64 :=
.seq NamedBody727_254 NamedBody727_261

def NamedBody727_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_264 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody727_262 NamedBody727_263

def NamedBody727_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody727_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody727_269 : StackLang.HolProg 64 :=
.seq NamedBody727_267 NamedBody727_268

def NamedBody727_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3257#64)

def NamedBody727_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody727_273 : StackLang.HolProg 64 :=
.seq NamedBody727_271 NamedBody727_272

def NamedBody727_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody727_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody727_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody727_277 : StackLang.HolProg 64 :=
.seq NamedBody727_275 NamedBody727_276

def NamedBody727_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_279 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody727_277 NamedBody727_278

def NamedBody727_280 : StackLang.HolProg 64 :=
.seq NamedBody727_274 NamedBody727_279

def NamedBody727_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody727_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody727_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 727 9

def NamedBody727_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody727_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody727_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody727_290 : StackLang.HolProg 64 :=
.seq NamedBody727_288 NamedBody727_289

def NamedBody727_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody727_292 : StackLang.HolProg 64 :=
.seq NamedBody727_290 NamedBody727_291

def NamedBody727_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_294 : StackLang.HolProg 64 :=
.seq NamedBody727_292 NamedBody727_293

def NamedBody727_295 : StackLang.HolProg 64 :=
.seq NamedBody727_287 NamedBody727_294

def NamedBody727_296 : StackLang.HolProg 64 :=
.seq NamedBody727_286 NamedBody727_295

def NamedBody727_297 : StackLang.HolProg 64 :=
.seq NamedBody727_285 NamedBody727_296

def NamedBody727_298 : StackLang.HolProg 64 :=
.seq NamedBody727_284 NamedBody727_297

def NamedBody727_299 : StackLang.HolProg 64 :=
.seq NamedBody727_283 NamedBody727_298

def NamedBody727_300 : StackLang.HolProg 64 :=
.seq NamedBody727_282 NamedBody727_299

def NamedBody727_301 : StackLang.HolProg 64 :=
.seq NamedBody727_281 NamedBody727_300

def NamedBody727_302 : StackLang.HolProg 64 :=
.seq NamedBody727_280 NamedBody727_301

def NamedBody727_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody727_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody727_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody727_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody727_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody727_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_312 : StackLang.HolProg 64 :=
.seq NamedBody727_310 NamedBody727_311

def NamedBody727_313 : StackLang.HolProg 64 :=
.seq NamedBody727_309 NamedBody727_312

def NamedBody727_314 : StackLang.HolProg 64 :=
.seq NamedBody727_308 NamedBody727_313

def NamedBody727_315 : StackLang.HolProg 64 :=
.seq NamedBody727_307 NamedBody727_314

def NamedBody727_316 : StackLang.HolProg 64 :=
.seq NamedBody727_306 NamedBody727_315

def NamedBody727_317 : StackLang.HolProg 64 :=
.seq NamedBody727_305 NamedBody727_316

def NamedBody727_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody727_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody727_320 : StackLang.HolProg 64 :=
.seq NamedBody727_318 NamedBody727_319

def NamedBody727_321 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody727_322 : StackLang.HolProg 64 :=
.seq NamedBody727_320 NamedBody727_321

def NamedBody727_323 : StackLang.HolProg 64 :=
.call (some (NamedBody727_317, 1, 727, 8)) (Sum.inl 716) (some (NamedBody727_322, 727, 9))

def NamedBody727_324 : StackLang.HolProg 64 :=
.seq NamedBody727_304 NamedBody727_323

def NamedBody727_325 : StackLang.HolProg 64 :=
.seq NamedBody727_303 NamedBody727_324

def NamedBody727_326 : StackLang.HolProg 64 :=
.seq NamedBody727_302 NamedBody727_325

def NamedBody727_327 : StackLang.HolProg 64 :=
.seq NamedBody727_273 NamedBody727_326

def NamedBody727_328 : StackLang.HolProg 64 :=
.seq NamedBody727_270 NamedBody727_327

def NamedBody727_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody727_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody727_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody727_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody727_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody727_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody727_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody727_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody727_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody727_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody727_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def NamedBody727_346 : StackLang.HolProg 64 :=
.seq NamedBody727_344 NamedBody727_345

def NamedBody727_347 : StackLang.HolProg 64 :=
.seq NamedBody727_343 NamedBody727_346

def NamedBody727_348 : StackLang.HolProg 64 :=
.seq NamedBody727_342 NamedBody727_347

def NamedBody727_349 : StackLang.HolProg 64 :=
.seq NamedBody727_341 NamedBody727_348

def NamedBody727_350 : StackLang.HolProg 64 :=
.seq NamedBody727_340 NamedBody727_349

def NamedBody727_351 : StackLang.HolProg 64 :=
.seq NamedBody727_339 NamedBody727_350

def NamedBody727_352 : StackLang.HolProg 64 :=
.seq NamedBody727_338 NamedBody727_351

def NamedBody727_353 : StackLang.HolProg 64 :=
.seq NamedBody727_337 NamedBody727_352

def NamedBody727_354 : StackLang.HolProg 64 :=
.seq NamedBody727_336 NamedBody727_353

def NamedBody727_355 : StackLang.HolProg 64 :=
.seq NamedBody727_335 NamedBody727_354

def NamedBody727_356 : StackLang.HolProg 64 :=
.seq NamedBody727_334 NamedBody727_355

def NamedBody727_357 : StackLang.HolProg 64 :=
.seq NamedBody727_333 NamedBody727_356

def NamedBody727_358 : StackLang.HolProg 64 :=
.seq NamedBody727_332 NamedBody727_357

def NamedBody727_359 : StackLang.HolProg 64 :=
.seq NamedBody727_331 NamedBody727_358

def NamedBody727_360 : StackLang.HolProg 64 :=
.seq NamedBody727_330 NamedBody727_359

def NamedBody727_361 : StackLang.HolProg 64 :=
.seq NamedBody727_329 NamedBody727_360

def NamedBody727_362 : StackLang.HolProg 64 :=
.seq NamedBody727_328 NamedBody727_361

def NamedBody727_363 : StackLang.HolProg 64 :=
.seq NamedBody727_269 NamedBody727_362

def NamedBody727_364 : StackLang.HolProg 64 :=
.seq NamedBody727_266 NamedBody727_363

def NamedBody727_365 : StackLang.HolProg 64 :=
.seq NamedBody727_265 NamedBody727_364

def NamedBody727_366 : StackLang.HolProg 64 :=
.seq NamedBody727_264 NamedBody727_365

def NamedBody727_367 : StackLang.HolProg 64 :=
.seq NamedBody727_253 NamedBody727_366

def NamedBody727_368 : StackLang.HolProg 64 :=
.seq NamedBody727_252 NamedBody727_367

def NamedBody727_369 : StackLang.HolProg 64 :=
.seq NamedBody727_251 NamedBody727_368

def NamedBody727_370 : StackLang.HolProg 64 :=
.seq NamedBody727_250 NamedBody727_369

def NamedBody727_371 : StackLang.HolProg 64 :=
.seq NamedBody727_163 NamedBody727_370

def NamedBody727_372 : StackLang.HolProg 64 :=
.seq NamedBody727_152 NamedBody727_371

def NamedBody727_373 : StackLang.HolProg 64 :=
.seq NamedBody727_151 NamedBody727_372

def NamedBody727_374 : StackLang.HolProg 64 :=
.seq NamedBody727_150 NamedBody727_373

def NamedBody727_375 : StackLang.HolProg 64 :=
.seq NamedBody727_149 NamedBody727_374

def NamedBody727_376 : StackLang.HolProg 64 :=
.seq NamedBody727_148 NamedBody727_375

def NamedBody727_377 : StackLang.HolProg 64 :=
.seq NamedBody727_147 NamedBody727_376

def NamedBody727_378 : StackLang.HolProg 64 :=
.seq NamedBody727_146 NamedBody727_377

def NamedBody727_379 : StackLang.HolProg 64 :=
.seq NamedBody727_145 NamedBody727_378

def NamedBody727_380 : StackLang.HolProg 64 :=
.seq NamedBody727_144 NamedBody727_379

def NamedBody727_381 : StackLang.HolProg 64 :=
.seq NamedBody727_91 NamedBody727_380

def NamedBody727_382 : StackLang.HolProg 64 :=
.seq NamedBody727_90 NamedBody727_381

def NamedBody727_383 : StackLang.HolProg 64 :=
.seq NamedBody727_89 NamedBody727_382

def NamedBody727_384 : StackLang.HolProg 64 :=
.seq NamedBody727_88 NamedBody727_383

def NamedBody727_385 : StackLang.HolProg 64 :=
.seq NamedBody727_87 NamedBody727_384

def NamedBody727_386 : StackLang.HolProg 64 :=
.seq NamedBody727_86 NamedBody727_385

def NamedBody727_387 : StackLang.HolProg 64 :=
.seq NamedBody727_75 NamedBody727_386

def NamedBody727_388 : StackLang.HolProg 64 :=
.seq NamedBody727_74 NamedBody727_387

def NamedBody727_389 : StackLang.HolProg 64 :=
.seq NamedBody727_73 NamedBody727_388

def NamedBody727_390 : StackLang.HolProg 64 :=
.seq NamedBody727_72 NamedBody727_389

def NamedBody727_391 : StackLang.HolProg 64 :=
.seq NamedBody727_13 NamedBody727_390

def NamedBody727_392 : StackLang.HolProg 64 :=
.seq NamedBody727_8 NamedBody727_391

def NamedBody727_393 : StackLang.HolProg 64 :=
.seq NamedBody727_7 NamedBody727_392

def NamedBody727_394 : StackLang.HolProg 64 :=
.seq NamedBody727_6 NamedBody727_393

def Named727 : Nat × StackLang.HolProg 64 := (727, NamedBody727_394)
theorem Named727_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed727 = Named727 := by
  kernel_rfl
#print axioms Named727_eq
end InitECandidate.Proofs.BackendStages
