import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed284
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody284_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody284_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody284_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody284_3 : StackLang.HolProg 64 :=
.seq NamedBody284_1 NamedBody284_2

def NamedBody284_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody284_3 NamedBody284_4

def NamedBody284_6 : StackLang.HolProg 64 :=
.seq NamedBody284_0 NamedBody284_5

def NamedBody284_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody284_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody284_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody284_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551496#64))

def NamedBody284_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody284_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody284_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody284_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody284_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody284_18 : StackLang.HolProg 64 :=
.seq NamedBody284_16 NamedBody284_17

def NamedBody284_19 : StackLang.HolProg 64 :=
.seq NamedBody284_15 NamedBody284_18

def NamedBody284_20 : StackLang.HolProg 64 :=
.seq NamedBody284_14 NamedBody284_19

def NamedBody284_21 : StackLang.HolProg 64 :=
.seq NamedBody284_13 NamedBody284_20

def NamedBody284_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody284_21 NamedBody284_22

def NamedBody284_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody284_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody284_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody284_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody284_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 768#64)

def NamedBody284_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody284_31 : StackLang.HolProg 64 :=
.seq NamedBody284_29 NamedBody284_30

def NamedBody284_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody284_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody284_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody284_35 : StackLang.HolProg 64 :=
.seq NamedBody284_33 NamedBody284_34

def NamedBody284_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody284_35 NamedBody284_36

def NamedBody284_38 : StackLang.HolProg 64 :=
.seq NamedBody284_32 NamedBody284_37

def NamedBody284_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody284_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody284_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 284 3

def NamedBody284_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody284_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody284_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody284_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody284_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody284_48 : StackLang.HolProg 64 :=
.seq NamedBody284_46 NamedBody284_47

def NamedBody284_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody284_50 : StackLang.HolProg 64 :=
.seq NamedBody284_48 NamedBody284_49

def NamedBody284_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody284_52 : StackLang.HolProg 64 :=
.seq NamedBody284_50 NamedBody284_51

def NamedBody284_53 : StackLang.HolProg 64 :=
.seq NamedBody284_45 NamedBody284_52

def NamedBody284_54 : StackLang.HolProg 64 :=
.seq NamedBody284_44 NamedBody284_53

def NamedBody284_55 : StackLang.HolProg 64 :=
.seq NamedBody284_43 NamedBody284_54

def NamedBody284_56 : StackLang.HolProg 64 :=
.seq NamedBody284_42 NamedBody284_55

def NamedBody284_57 : StackLang.HolProg 64 :=
.seq NamedBody284_41 NamedBody284_56

def NamedBody284_58 : StackLang.HolProg 64 :=
.seq NamedBody284_40 NamedBody284_57

def NamedBody284_59 : StackLang.HolProg 64 :=
.seq NamedBody284_39 NamedBody284_58

def NamedBody284_60 : StackLang.HolProg 64 :=
.seq NamedBody284_38 NamedBody284_59

def NamedBody284_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody284_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody284_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody284_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody284_68 : StackLang.HolProg 64 :=
.seq NamedBody284_66 NamedBody284_67

def NamedBody284_69 : StackLang.HolProg 64 :=
.seq NamedBody284_65 NamedBody284_68

def NamedBody284_70 : StackLang.HolProg 64 :=
.seq NamedBody284_64 NamedBody284_69

def NamedBody284_71 : StackLang.HolProg 64 :=
.seq NamedBody284_63 NamedBody284_70

def NamedBody284_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody284_74 : StackLang.HolProg 64 :=
.seq NamedBody284_72 NamedBody284_73

def NamedBody284_75 : StackLang.HolProg 64 :=
.call (some (NamedBody284_71, 1, 284, 2)) (Sum.inl 68) (some (NamedBody284_74, 284, 3))

def NamedBody284_76 : StackLang.HolProg 64 :=
.seq NamedBody284_62 NamedBody284_75

def NamedBody284_77 : StackLang.HolProg 64 :=
.seq NamedBody284_61 NamedBody284_76

def NamedBody284_78 : StackLang.HolProg 64 :=
.seq NamedBody284_60 NamedBody284_77

def NamedBody284_79 : StackLang.HolProg 64 :=
.seq NamedBody284_31 NamedBody284_78

def NamedBody284_80 : StackLang.HolProg 64 :=
.seq NamedBody284_28 NamedBody284_79

def NamedBody284_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody284_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody284_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody284_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody284_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551496#64)))

def NamedBody284_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody284_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551496#64))

def NamedBody284_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 8#64)

def NamedBody284_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 769#64)

def NamedBody284_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody284_95 : StackLang.HolProg 64 :=
.seq NamedBody284_93 NamedBody284_94

def NamedBody284_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody284_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody284_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody284_99 : StackLang.HolProg 64 :=
.seq NamedBody284_97 NamedBody284_98

def NamedBody284_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody284_99 NamedBody284_100

def NamedBody284_102 : StackLang.HolProg 64 :=
.seq NamedBody284_96 NamedBody284_101

def NamedBody284_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody284_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody284_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 284 5

def NamedBody284_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody284_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody284_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody284_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody284_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody284_112 : StackLang.HolProg 64 :=
.seq NamedBody284_110 NamedBody284_111

def NamedBody284_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody284_114 : StackLang.HolProg 64 :=
.seq NamedBody284_112 NamedBody284_113

def NamedBody284_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody284_116 : StackLang.HolProg 64 :=
.seq NamedBody284_114 NamedBody284_115

def NamedBody284_117 : StackLang.HolProg 64 :=
.seq NamedBody284_109 NamedBody284_116

def NamedBody284_118 : StackLang.HolProg 64 :=
.seq NamedBody284_108 NamedBody284_117

def NamedBody284_119 : StackLang.HolProg 64 :=
.seq NamedBody284_107 NamedBody284_118

def NamedBody284_120 : StackLang.HolProg 64 :=
.seq NamedBody284_106 NamedBody284_119

def NamedBody284_121 : StackLang.HolProg 64 :=
.seq NamedBody284_105 NamedBody284_120

def NamedBody284_122 : StackLang.HolProg 64 :=
.seq NamedBody284_104 NamedBody284_121

def NamedBody284_123 : StackLang.HolProg 64 :=
.seq NamedBody284_103 NamedBody284_122

def NamedBody284_124 : StackLang.HolProg 64 :=
.seq NamedBody284_102 NamedBody284_123

def NamedBody284_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody284_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody284_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody284_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody284_132 : StackLang.HolProg 64 :=
.seq NamedBody284_130 NamedBody284_131

def NamedBody284_133 : StackLang.HolProg 64 :=
.seq NamedBody284_129 NamedBody284_132

def NamedBody284_134 : StackLang.HolProg 64 :=
.seq NamedBody284_128 NamedBody284_133

def NamedBody284_135 : StackLang.HolProg 64 :=
.seq NamedBody284_127 NamedBody284_134

def NamedBody284_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody284_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody284_138 : StackLang.HolProg 64 :=
.seq NamedBody284_136 NamedBody284_137

def NamedBody284_139 : StackLang.HolProg 64 :=
.call (some (NamedBody284_135, 1, 284, 4)) (Sum.inl 78) (some (NamedBody284_138, 284, 5))

def NamedBody284_140 : StackLang.HolProg 64 :=
.seq NamedBody284_126 NamedBody284_139

def NamedBody284_141 : StackLang.HolProg 64 :=
.seq NamedBody284_125 NamedBody284_140

def NamedBody284_142 : StackLang.HolProg 64 :=
.seq NamedBody284_124 NamedBody284_141

def NamedBody284_143 : StackLang.HolProg 64 :=
.seq NamedBody284_95 NamedBody284_142

def NamedBody284_144 : StackLang.HolProg 64 :=
.seq NamedBody284_92 NamedBody284_143

def NamedBody284_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody284_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody284_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody284_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody284_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody284_150 : StackLang.HolProg 64 :=
.seq NamedBody284_148 NamedBody284_149

def NamedBody284_151 : StackLang.HolProg 64 :=
.seq NamedBody284_147 NamedBody284_150

def NamedBody284_152 : StackLang.HolProg 64 :=
.seq NamedBody284_146 NamedBody284_151

def NamedBody284_153 : StackLang.HolProg 64 :=
.seq NamedBody284_145 NamedBody284_152

def NamedBody284_154 : StackLang.HolProg 64 :=
.seq NamedBody284_144 NamedBody284_153

def NamedBody284_155 : StackLang.HolProg 64 :=
.seq NamedBody284_91 NamedBody284_154

def NamedBody284_156 : StackLang.HolProg 64 :=
.seq NamedBody284_90 NamedBody284_155

def NamedBody284_157 : StackLang.HolProg 64 :=
.seq NamedBody284_89 NamedBody284_156

def NamedBody284_158 : StackLang.HolProg 64 :=
.seq NamedBody284_88 NamedBody284_157

def NamedBody284_159 : StackLang.HolProg 64 :=
.seq NamedBody284_87 NamedBody284_158

def NamedBody284_160 : StackLang.HolProg 64 :=
.seq NamedBody284_86 NamedBody284_159

def NamedBody284_161 : StackLang.HolProg 64 :=
.seq NamedBody284_85 NamedBody284_160

def NamedBody284_162 : StackLang.HolProg 64 :=
.seq NamedBody284_84 NamedBody284_161

def NamedBody284_163 : StackLang.HolProg 64 :=
.seq NamedBody284_83 NamedBody284_162

def NamedBody284_164 : StackLang.HolProg 64 :=
.seq NamedBody284_82 NamedBody284_163

def NamedBody284_165 : StackLang.HolProg 64 :=
.seq NamedBody284_81 NamedBody284_164

def NamedBody284_166 : StackLang.HolProg 64 :=
.seq NamedBody284_80 NamedBody284_165

def NamedBody284_167 : StackLang.HolProg 64 :=
.seq NamedBody284_27 NamedBody284_166

def NamedBody284_168 : StackLang.HolProg 64 :=
.seq NamedBody284_26 NamedBody284_167

def NamedBody284_169 : StackLang.HolProg 64 :=
.seq NamedBody284_25 NamedBody284_168

def NamedBody284_170 : StackLang.HolProg 64 :=
.seq NamedBody284_24 NamedBody284_169

def NamedBody284_171 : StackLang.HolProg 64 :=
.seq NamedBody284_23 NamedBody284_170

def NamedBody284_172 : StackLang.HolProg 64 :=
.seq NamedBody284_12 NamedBody284_171

def NamedBody284_173 : StackLang.HolProg 64 :=
.seq NamedBody284_11 NamedBody284_172

def NamedBody284_174 : StackLang.HolProg 64 :=
.seq NamedBody284_10 NamedBody284_173

def NamedBody284_175 : StackLang.HolProg 64 :=
.seq NamedBody284_9 NamedBody284_174

def NamedBody284_176 : StackLang.HolProg 64 :=
.seq NamedBody284_8 NamedBody284_175

def NamedBody284_177 : StackLang.HolProg 64 :=
.seq NamedBody284_7 NamedBody284_176

def NamedBody284_178 : StackLang.HolProg 64 :=
.seq NamedBody284_6 NamedBody284_177

def Named284 : Nat × StackLang.HolProg 64 := (284, NamedBody284_178)
theorem Named284_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed284 = Named284 := by
  kernel_rfl
#print axioms Named284_eq
end InitECandidate.Proofs.BackendStages
