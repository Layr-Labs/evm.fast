import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed389
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody389_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody389_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody389_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody389_3 : StackLang.HolProg 64 :=
.seq NamedBody389_1 NamedBody389_2

def NamedBody389_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody389_3 NamedBody389_4

def NamedBody389_6 : StackLang.HolProg 64 :=
.seq NamedBody389_0 NamedBody389_5

def NamedBody389_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody389_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_10 : StackLang.HolProg 64 :=
.seq NamedBody389_8 NamedBody389_9

def NamedBody389_11 : StackLang.HolProg 64 :=
.seq NamedBody389_7 NamedBody389_10

def NamedBody389_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1162#64)

def NamedBody389_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_15 : StackLang.HolProg 64 :=
.seq NamedBody389_13 NamedBody389_14

def NamedBody389_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody389_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody389_19 : StackLang.HolProg 64 :=
.seq NamedBody389_17 NamedBody389_18

def NamedBody389_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody389_19 NamedBody389_20

def NamedBody389_22 : StackLang.HolProg 64 :=
.seq NamedBody389_16 NamedBody389_21

def NamedBody389_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody389_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 3

def NamedBody389_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody389_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody389_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody389_32 : StackLang.HolProg 64 :=
.seq NamedBody389_30 NamedBody389_31

def NamedBody389_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody389_34 : StackLang.HolProg 64 :=
.seq NamedBody389_32 NamedBody389_33

def NamedBody389_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_36 : StackLang.HolProg 64 :=
.seq NamedBody389_34 NamedBody389_35

def NamedBody389_37 : StackLang.HolProg 64 :=
.seq NamedBody389_29 NamedBody389_36

def NamedBody389_38 : StackLang.HolProg 64 :=
.seq NamedBody389_28 NamedBody389_37

def NamedBody389_39 : StackLang.HolProg 64 :=
.seq NamedBody389_27 NamedBody389_38

def NamedBody389_40 : StackLang.HolProg 64 :=
.seq NamedBody389_26 NamedBody389_39

def NamedBody389_41 : StackLang.HolProg 64 :=
.seq NamedBody389_25 NamedBody389_40

def NamedBody389_42 : StackLang.HolProg 64 :=
.seq NamedBody389_24 NamedBody389_41

def NamedBody389_43 : StackLang.HolProg 64 :=
.seq NamedBody389_23 NamedBody389_42

def NamedBody389_44 : StackLang.HolProg 64 :=
.seq NamedBody389_22 NamedBody389_43

def NamedBody389_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody389_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody389_53 : StackLang.HolProg 64 :=
.seq NamedBody389_51 NamedBody389_52

def NamedBody389_54 : StackLang.HolProg 64 :=
.seq NamedBody389_50 NamedBody389_53

def NamedBody389_55 : StackLang.HolProg 64 :=
.seq NamedBody389_49 NamedBody389_54

def NamedBody389_56 : StackLang.HolProg 64 :=
.seq NamedBody389_48 NamedBody389_55

def NamedBody389_57 : StackLang.HolProg 64 :=
.seq NamedBody389_47 NamedBody389_56

def NamedBody389_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody389_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody389_60 : StackLang.HolProg 64 :=
.seq NamedBody389_58 NamedBody389_59

def NamedBody389_61 : StackLang.HolProg 64 :=
.call (some (NamedBody389_57, 1, 389, 2)) (Sum.inl 186) (some (NamedBody389_60, 389, 3))

def NamedBody389_62 : StackLang.HolProg 64 :=
.seq NamedBody389_46 NamedBody389_61

def NamedBody389_63 : StackLang.HolProg 64 :=
.seq NamedBody389_45 NamedBody389_62

def NamedBody389_64 : StackLang.HolProg 64 :=
.seq NamedBody389_44 NamedBody389_63

def NamedBody389_65 : StackLang.HolProg 64 :=
.seq NamedBody389_15 NamedBody389_64

def NamedBody389_66 : StackLang.HolProg 64 :=
.seq NamedBody389_12 NamedBody389_65

def NamedBody389_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody389_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody389_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody389_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody389_75 : StackLang.HolProg 64 :=
.seq NamedBody389_73 NamedBody389_74

def NamedBody389_76 : StackLang.HolProg 64 :=
.seq NamedBody389_72 NamedBody389_75

def NamedBody389_77 : StackLang.HolProg 64 :=
.seq NamedBody389_71 NamedBody389_76

def NamedBody389_78 : StackLang.HolProg 64 :=
.seq NamedBody389_70 NamedBody389_77

def NamedBody389_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody389_78 NamedBody389_79

def NamedBody389_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody389_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody389_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody389_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def NamedBody389_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551408#64))

def NamedBody389_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody389_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody389_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody389_93 : StackLang.HolProg 64 :=
.seq NamedBody389_91 NamedBody389_92

def NamedBody389_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1163#64)

def NamedBody389_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_97 : StackLang.HolProg 64 :=
.seq NamedBody389_95 NamedBody389_96

def NamedBody389_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody389_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody389_101 : StackLang.HolProg 64 :=
.seq NamedBody389_99 NamedBody389_100

def NamedBody389_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody389_101 NamedBody389_102

def NamedBody389_104 : StackLang.HolProg 64 :=
.seq NamedBody389_98 NamedBody389_103

def NamedBody389_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody389_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 5

def NamedBody389_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody389_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody389_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody389_114 : StackLang.HolProg 64 :=
.seq NamedBody389_112 NamedBody389_113

def NamedBody389_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody389_116 : StackLang.HolProg 64 :=
.seq NamedBody389_114 NamedBody389_115

def NamedBody389_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_118 : StackLang.HolProg 64 :=
.seq NamedBody389_116 NamedBody389_117

def NamedBody389_119 : StackLang.HolProg 64 :=
.seq NamedBody389_111 NamedBody389_118

def NamedBody389_120 : StackLang.HolProg 64 :=
.seq NamedBody389_110 NamedBody389_119

def NamedBody389_121 : StackLang.HolProg 64 :=
.seq NamedBody389_109 NamedBody389_120

def NamedBody389_122 : StackLang.HolProg 64 :=
.seq NamedBody389_108 NamedBody389_121

def NamedBody389_123 : StackLang.HolProg 64 :=
.seq NamedBody389_107 NamedBody389_122

def NamedBody389_124 : StackLang.HolProg 64 :=
.seq NamedBody389_106 NamedBody389_123

def NamedBody389_125 : StackLang.HolProg 64 :=
.seq NamedBody389_105 NamedBody389_124

def NamedBody389_126 : StackLang.HolProg 64 :=
.seq NamedBody389_104 NamedBody389_125

def NamedBody389_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_134 : StackLang.HolProg 64 :=
.seq NamedBody389_132 NamedBody389_133

def NamedBody389_135 : StackLang.HolProg 64 :=
.seq NamedBody389_131 NamedBody389_134

def NamedBody389_136 : StackLang.HolProg 64 :=
.seq NamedBody389_130 NamedBody389_135

def NamedBody389_137 : StackLang.HolProg 64 :=
.seq NamedBody389_129 NamedBody389_136

def NamedBody389_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody389_140 : StackLang.HolProg 64 :=
.seq NamedBody389_138 NamedBody389_139

def NamedBody389_141 : StackLang.HolProg 64 :=
.call (some (NamedBody389_137, 1, 389, 4)) (Sum.inl 66) (some (NamedBody389_140, 389, 5))

def NamedBody389_142 : StackLang.HolProg 64 :=
.seq NamedBody389_128 NamedBody389_141

def NamedBody389_143 : StackLang.HolProg 64 :=
.seq NamedBody389_127 NamedBody389_142

def NamedBody389_144 : StackLang.HolProg 64 :=
.seq NamedBody389_126 NamedBody389_143

def NamedBody389_145 : StackLang.HolProg 64 :=
.seq NamedBody389_97 NamedBody389_144

def NamedBody389_146 : StackLang.HolProg 64 :=
.seq NamedBody389_94 NamedBody389_145

def NamedBody389_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_149 : StackLang.HolProg 64 :=
.seq NamedBody389_147 NamedBody389_148

def NamedBody389_150 : StackLang.HolProg 64 :=
.seq NamedBody389_146 NamedBody389_149

def NamedBody389_151 : StackLang.HolProg 64 :=
.seq NamedBody389_93 NamedBody389_150

def NamedBody389_152 : StackLang.HolProg 64 :=
.seq NamedBody389_90 NamedBody389_151

def NamedBody389_153 : StackLang.HolProg 64 :=
.seq NamedBody389_89 NamedBody389_152

def NamedBody389_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody389_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody389_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_158 : StackLang.HolProg 64 :=
.seq NamedBody389_156 NamedBody389_157

def NamedBody389_159 : StackLang.HolProg 64 :=
.seq NamedBody389_155 NamedBody389_158

def NamedBody389_160 : StackLang.HolProg 64 :=
.seq NamedBody389_154 NamedBody389_159

def NamedBody389_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody389_153 NamedBody389_160

def NamedBody389_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody389_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody389_167 : StackLang.HolProg 64 :=
.seq NamedBody389_165 NamedBody389_166

def NamedBody389_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1164#64)

def NamedBody389_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_171 : StackLang.HolProg 64 :=
.seq NamedBody389_169 NamedBody389_170

def NamedBody389_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody389_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody389_175 : StackLang.HolProg 64 :=
.seq NamedBody389_173 NamedBody389_174

def NamedBody389_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_177 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody389_175 NamedBody389_176

def NamedBody389_178 : StackLang.HolProg 64 :=
.seq NamedBody389_172 NamedBody389_177

def NamedBody389_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody389_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 7

def NamedBody389_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody389_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody389_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody389_188 : StackLang.HolProg 64 :=
.seq NamedBody389_186 NamedBody389_187

def NamedBody389_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody389_190 : StackLang.HolProg 64 :=
.seq NamedBody389_188 NamedBody389_189

def NamedBody389_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_192 : StackLang.HolProg 64 :=
.seq NamedBody389_190 NamedBody389_191

def NamedBody389_193 : StackLang.HolProg 64 :=
.seq NamedBody389_185 NamedBody389_192

def NamedBody389_194 : StackLang.HolProg 64 :=
.seq NamedBody389_184 NamedBody389_193

def NamedBody389_195 : StackLang.HolProg 64 :=
.seq NamedBody389_183 NamedBody389_194

def NamedBody389_196 : StackLang.HolProg 64 :=
.seq NamedBody389_182 NamedBody389_195

def NamedBody389_197 : StackLang.HolProg 64 :=
.seq NamedBody389_181 NamedBody389_196

def NamedBody389_198 : StackLang.HolProg 64 :=
.seq NamedBody389_180 NamedBody389_197

def NamedBody389_199 : StackLang.HolProg 64 :=
.seq NamedBody389_179 NamedBody389_198

def NamedBody389_200 : StackLang.HolProg 64 :=
.seq NamedBody389_178 NamedBody389_199

def NamedBody389_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody389_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody389_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_211 : StackLang.HolProg 64 :=
.seq NamedBody389_209 NamedBody389_210

def NamedBody389_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_213 : StackLang.HolProg 64 :=
.seq NamedBody389_211 NamedBody389_212

def NamedBody389_214 : StackLang.HolProg 64 :=
.seq NamedBody389_208 NamedBody389_213

def NamedBody389_215 : StackLang.HolProg 64 :=
.seq NamedBody389_207 NamedBody389_214

def NamedBody389_216 : StackLang.HolProg 64 :=
.seq NamedBody389_206 NamedBody389_215

def NamedBody389_217 : StackLang.HolProg 64 :=
.seq NamedBody389_205 NamedBody389_216

def NamedBody389_218 : StackLang.HolProg 64 :=
.seq NamedBody389_204 NamedBody389_217

def NamedBody389_219 : StackLang.HolProg 64 :=
.seq NamedBody389_203 NamedBody389_218

def NamedBody389_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody389_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_223 : StackLang.HolProg 64 :=
.seq NamedBody389_221 NamedBody389_222

def NamedBody389_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_225 : StackLang.HolProg 64 :=
.seq NamedBody389_223 NamedBody389_224

def NamedBody389_226 : StackLang.HolProg 64 :=
.seq NamedBody389_220 NamedBody389_225

def NamedBody389_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody389_228 : StackLang.HolProg 64 :=
.seq NamedBody389_226 NamedBody389_227

def NamedBody389_229 : StackLang.HolProg 64 :=
.call (some (NamedBody389_219, 1, 389, 6)) (Sum.inl 68) (some (NamedBody389_228, 389, 7))

def NamedBody389_230 : StackLang.HolProg 64 :=
.seq NamedBody389_202 NamedBody389_229

def NamedBody389_231 : StackLang.HolProg 64 :=
.seq NamedBody389_201 NamedBody389_230

def NamedBody389_232 : StackLang.HolProg 64 :=
.seq NamedBody389_200 NamedBody389_231

def NamedBody389_233 : StackLang.HolProg 64 :=
.seq NamedBody389_171 NamedBody389_232

def NamedBody389_234 : StackLang.HolProg 64 :=
.seq NamedBody389_168 NamedBody389_233

def NamedBody389_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody389_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody389_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_239 : StackLang.HolProg 64 :=
.seq NamedBody389_237 NamedBody389_238

def NamedBody389_240 : StackLang.HolProg 64 :=
.seq NamedBody389_236 NamedBody389_239

def NamedBody389_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1165#64)

def NamedBody389_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_244 : StackLang.HolProg 64 :=
.seq NamedBody389_242 NamedBody389_243

def NamedBody389_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody389_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody389_248 : StackLang.HolProg 64 :=
.seq NamedBody389_246 NamedBody389_247

def NamedBody389_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_250 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody389_248 NamedBody389_249

def NamedBody389_251 : StackLang.HolProg 64 :=
.seq NamedBody389_245 NamedBody389_250

def NamedBody389_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody389_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 9

def NamedBody389_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody389_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody389_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody389_261 : StackLang.HolProg 64 :=
.seq NamedBody389_259 NamedBody389_260

def NamedBody389_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody389_263 : StackLang.HolProg 64 :=
.seq NamedBody389_261 NamedBody389_262

def NamedBody389_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_265 : StackLang.HolProg 64 :=
.seq NamedBody389_263 NamedBody389_264

def NamedBody389_266 : StackLang.HolProg 64 :=
.seq NamedBody389_258 NamedBody389_265

def NamedBody389_267 : StackLang.HolProg 64 :=
.seq NamedBody389_257 NamedBody389_266

def NamedBody389_268 : StackLang.HolProg 64 :=
.seq NamedBody389_256 NamedBody389_267

def NamedBody389_269 : StackLang.HolProg 64 :=
.seq NamedBody389_255 NamedBody389_268

def NamedBody389_270 : StackLang.HolProg 64 :=
.seq NamedBody389_254 NamedBody389_269

def NamedBody389_271 : StackLang.HolProg 64 :=
.seq NamedBody389_253 NamedBody389_270

def NamedBody389_272 : StackLang.HolProg 64 :=
.seq NamedBody389_252 NamedBody389_271

def NamedBody389_273 : StackLang.HolProg 64 :=
.seq NamedBody389_251 NamedBody389_272

def NamedBody389_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody389_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody389_284 : StackLang.HolProg 64 :=
.seq NamedBody389_282 NamedBody389_283

def NamedBody389_285 : StackLang.HolProg 64 :=
.seq NamedBody389_281 NamedBody389_284

def NamedBody389_286 : StackLang.HolProg 64 :=
.seq NamedBody389_280 NamedBody389_285

def NamedBody389_287 : StackLang.HolProg 64 :=
.seq NamedBody389_279 NamedBody389_286

def NamedBody389_288 : StackLang.HolProg 64 :=
.seq NamedBody389_278 NamedBody389_287

def NamedBody389_289 : StackLang.HolProg 64 :=
.seq NamedBody389_277 NamedBody389_288

def NamedBody389_290 : StackLang.HolProg 64 :=
.seq NamedBody389_276 NamedBody389_289

def NamedBody389_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody389_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody389_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody389_295 : StackLang.HolProg 64 :=
.seq NamedBody389_293 NamedBody389_294

def NamedBody389_296 : StackLang.HolProg 64 :=
.seq NamedBody389_292 NamedBody389_295

def NamedBody389_297 : StackLang.HolProg 64 :=
.seq NamedBody389_291 NamedBody389_296

def NamedBody389_298 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody389_299 : StackLang.HolProg 64 :=
.seq NamedBody389_297 NamedBody389_298

def NamedBody389_300 : StackLang.HolProg 64 :=
.call (some (NamedBody389_290, 1, 389, 8)) (Sum.inl 77) (some (NamedBody389_299, 389, 9))

def NamedBody389_301 : StackLang.HolProg 64 :=
.seq NamedBody389_275 NamedBody389_300

def NamedBody389_302 : StackLang.HolProg 64 :=
.seq NamedBody389_274 NamedBody389_301

def NamedBody389_303 : StackLang.HolProg 64 :=
.seq NamedBody389_273 NamedBody389_302

def NamedBody389_304 : StackLang.HolProg 64 :=
.seq NamedBody389_244 NamedBody389_303

def NamedBody389_305 : StackLang.HolProg 64 :=
.seq NamedBody389_241 NamedBody389_304

def NamedBody389_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody389_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody389_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody389_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 18446744073709551600#64))

def NamedBody389_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody389_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 18446744073709551416#64))

def NamedBody389_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody389_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody389_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody389_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody389_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody389_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody389_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody389_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody389_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody389_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551600#64)))

def NamedBody389_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 18446744073709551600#64))

def NamedBody389_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody389_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody389_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1166#64)

def NamedBody389_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_341 : StackLang.HolProg 64 :=
.seq NamedBody389_339 NamedBody389_340

def NamedBody389_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody389_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody389_345 : StackLang.HolProg 64 :=
.seq NamedBody389_343 NamedBody389_344

def NamedBody389_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_347 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody389_345 NamedBody389_346

def NamedBody389_348 : StackLang.HolProg 64 :=
.seq NamedBody389_342 NamedBody389_347

def NamedBody389_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody389_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody389_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 11

def NamedBody389_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody389_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody389_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody389_358 : StackLang.HolProg 64 :=
.seq NamedBody389_356 NamedBody389_357

def NamedBody389_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody389_360 : StackLang.HolProg 64 :=
.seq NamedBody389_358 NamedBody389_359

def NamedBody389_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_362 : StackLang.HolProg 64 :=
.seq NamedBody389_360 NamedBody389_361

def NamedBody389_363 : StackLang.HolProg 64 :=
.seq NamedBody389_355 NamedBody389_362

def NamedBody389_364 : StackLang.HolProg 64 :=
.seq NamedBody389_354 NamedBody389_363

def NamedBody389_365 : StackLang.HolProg 64 :=
.seq NamedBody389_353 NamedBody389_364

def NamedBody389_366 : StackLang.HolProg 64 :=
.seq NamedBody389_352 NamedBody389_365

def NamedBody389_367 : StackLang.HolProg 64 :=
.seq NamedBody389_351 NamedBody389_366

def NamedBody389_368 : StackLang.HolProg 64 :=
.seq NamedBody389_350 NamedBody389_367

def NamedBody389_369 : StackLang.HolProg 64 :=
.seq NamedBody389_349 NamedBody389_368

def NamedBody389_370 : StackLang.HolProg 64 :=
.seq NamedBody389_348 NamedBody389_369

def NamedBody389_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody389_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody389_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody389_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody389_378 : StackLang.HolProg 64 :=
.seq NamedBody389_376 NamedBody389_377

def NamedBody389_379 : StackLang.HolProg 64 :=
.seq NamedBody389_375 NamedBody389_378

def NamedBody389_380 : StackLang.HolProg 64 :=
.seq NamedBody389_374 NamedBody389_379

def NamedBody389_381 : StackLang.HolProg 64 :=
.seq NamedBody389_373 NamedBody389_380

def NamedBody389_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody389_383 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody389_384 : StackLang.HolProg 64 :=
.seq NamedBody389_382 NamedBody389_383

def NamedBody389_385 : StackLang.HolProg 64 :=
.call (some (NamedBody389_381, 1, 389, 10)) (Sum.inl 193) (some (NamedBody389_384, 389, 11))

def NamedBody389_386 : StackLang.HolProg 64 :=
.seq NamedBody389_372 NamedBody389_385

def NamedBody389_387 : StackLang.HolProg 64 :=
.seq NamedBody389_371 NamedBody389_386

def NamedBody389_388 : StackLang.HolProg 64 :=
.seq NamedBody389_370 NamedBody389_387

def NamedBody389_389 : StackLang.HolProg 64 :=
.seq NamedBody389_341 NamedBody389_388

def NamedBody389_390 : StackLang.HolProg 64 :=
.seq NamedBody389_338 NamedBody389_389

def NamedBody389_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody389_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody389_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody389_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody389_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody389_396 : StackLang.HolProg 64 :=
.seq NamedBody389_394 NamedBody389_395

def NamedBody389_397 : StackLang.HolProg 64 :=
.seq NamedBody389_393 NamedBody389_396

def NamedBody389_398 : StackLang.HolProg 64 :=
.seq NamedBody389_392 NamedBody389_397

def NamedBody389_399 : StackLang.HolProg 64 :=
.seq NamedBody389_391 NamedBody389_398

def NamedBody389_400 : StackLang.HolProg 64 :=
.seq NamedBody389_390 NamedBody389_399

def NamedBody389_401 : StackLang.HolProg 64 :=
.seq NamedBody389_337 NamedBody389_400

def NamedBody389_402 : StackLang.HolProg 64 :=
.seq NamedBody389_336 NamedBody389_401

def NamedBody389_403 : StackLang.HolProg 64 :=
.seq NamedBody389_335 NamedBody389_402

def NamedBody389_404 : StackLang.HolProg 64 :=
.seq NamedBody389_334 NamedBody389_403

def NamedBody389_405 : StackLang.HolProg 64 :=
.seq NamedBody389_333 NamedBody389_404

def NamedBody389_406 : StackLang.HolProg 64 :=
.seq NamedBody389_332 NamedBody389_405

def NamedBody389_407 : StackLang.HolProg 64 :=
.seq NamedBody389_331 NamedBody389_406

def NamedBody389_408 : StackLang.HolProg 64 :=
.seq NamedBody389_330 NamedBody389_407

def NamedBody389_409 : StackLang.HolProg 64 :=
.seq NamedBody389_329 NamedBody389_408

def NamedBody389_410 : StackLang.HolProg 64 :=
.seq NamedBody389_328 NamedBody389_409

def NamedBody389_411 : StackLang.HolProg 64 :=
.seq NamedBody389_327 NamedBody389_410

def NamedBody389_412 : StackLang.HolProg 64 :=
.seq NamedBody389_326 NamedBody389_411

def NamedBody389_413 : StackLang.HolProg 64 :=
.seq NamedBody389_325 NamedBody389_412

def NamedBody389_414 : StackLang.HolProg 64 :=
.seq NamedBody389_324 NamedBody389_413

def NamedBody389_415 : StackLang.HolProg 64 :=
.seq NamedBody389_323 NamedBody389_414

def NamedBody389_416 : StackLang.HolProg 64 :=
.seq NamedBody389_322 NamedBody389_415

def NamedBody389_417 : StackLang.HolProg 64 :=
.seq NamedBody389_321 NamedBody389_416

def NamedBody389_418 : StackLang.HolProg 64 :=
.seq NamedBody389_320 NamedBody389_417

def NamedBody389_419 : StackLang.HolProg 64 :=
.seq NamedBody389_319 NamedBody389_418

def NamedBody389_420 : StackLang.HolProg 64 :=
.seq NamedBody389_318 NamedBody389_419

def NamedBody389_421 : StackLang.HolProg 64 :=
.seq NamedBody389_317 NamedBody389_420

def NamedBody389_422 : StackLang.HolProg 64 :=
.seq NamedBody389_316 NamedBody389_421

def NamedBody389_423 : StackLang.HolProg 64 :=
.seq NamedBody389_315 NamedBody389_422

def NamedBody389_424 : StackLang.HolProg 64 :=
.seq NamedBody389_314 NamedBody389_423

def NamedBody389_425 : StackLang.HolProg 64 :=
.seq NamedBody389_313 NamedBody389_424

def NamedBody389_426 : StackLang.HolProg 64 :=
.seq NamedBody389_312 NamedBody389_425

def NamedBody389_427 : StackLang.HolProg 64 :=
.seq NamedBody389_311 NamedBody389_426

def NamedBody389_428 : StackLang.HolProg 64 :=
.seq NamedBody389_310 NamedBody389_427

def NamedBody389_429 : StackLang.HolProg 64 :=
.seq NamedBody389_309 NamedBody389_428

def NamedBody389_430 : StackLang.HolProg 64 :=
.seq NamedBody389_308 NamedBody389_429

def NamedBody389_431 : StackLang.HolProg 64 :=
.seq NamedBody389_307 NamedBody389_430

def NamedBody389_432 : StackLang.HolProg 64 :=
.seq NamedBody389_306 NamedBody389_431

def NamedBody389_433 : StackLang.HolProg 64 :=
.seq NamedBody389_305 NamedBody389_432

def NamedBody389_434 : StackLang.HolProg 64 :=
.seq NamedBody389_240 NamedBody389_433

def NamedBody389_435 : StackLang.HolProg 64 :=
.seq NamedBody389_235 NamedBody389_434

def NamedBody389_436 : StackLang.HolProg 64 :=
.seq NamedBody389_234 NamedBody389_435

def NamedBody389_437 : StackLang.HolProg 64 :=
.seq NamedBody389_167 NamedBody389_436

def NamedBody389_438 : StackLang.HolProg 64 :=
.seq NamedBody389_164 NamedBody389_437

def NamedBody389_439 : StackLang.HolProg 64 :=
.seq NamedBody389_163 NamedBody389_438

def NamedBody389_440 : StackLang.HolProg 64 :=
.seq NamedBody389_162 NamedBody389_439

def NamedBody389_441 : StackLang.HolProg 64 :=
.seq NamedBody389_161 NamedBody389_440

def NamedBody389_442 : StackLang.HolProg 64 :=
.seq NamedBody389_88 NamedBody389_441

def NamedBody389_443 : StackLang.HolProg 64 :=
.seq NamedBody389_87 NamedBody389_442

def NamedBody389_444 : StackLang.HolProg 64 :=
.seq NamedBody389_86 NamedBody389_443

def NamedBody389_445 : StackLang.HolProg 64 :=
.seq NamedBody389_85 NamedBody389_444

def NamedBody389_446 : StackLang.HolProg 64 :=
.seq NamedBody389_84 NamedBody389_445

def NamedBody389_447 : StackLang.HolProg 64 :=
.seq NamedBody389_83 NamedBody389_446

def NamedBody389_448 : StackLang.HolProg 64 :=
.seq NamedBody389_82 NamedBody389_447

def NamedBody389_449 : StackLang.HolProg 64 :=
.seq NamedBody389_81 NamedBody389_448

def NamedBody389_450 : StackLang.HolProg 64 :=
.seq NamedBody389_80 NamedBody389_449

def NamedBody389_451 : StackLang.HolProg 64 :=
.seq NamedBody389_69 NamedBody389_450

def NamedBody389_452 : StackLang.HolProg 64 :=
.seq NamedBody389_68 NamedBody389_451

def NamedBody389_453 : StackLang.HolProg 64 :=
.seq NamedBody389_67 NamedBody389_452

def NamedBody389_454 : StackLang.HolProg 64 :=
.seq NamedBody389_66 NamedBody389_453

def NamedBody389_455 : StackLang.HolProg 64 :=
.seq NamedBody389_11 NamedBody389_454

def NamedBody389_456 : StackLang.HolProg 64 :=
.seq NamedBody389_6 NamedBody389_455

def Named389 : Nat × StackLang.HolProg 64 := (389, NamedBody389_456)
theorem Named389_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed389 = Named389 := by
  kernel_rfl
#print axioms Named389_eq
end InitECandidate.Proofs.BackendStages
