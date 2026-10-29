import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed849
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody849_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody849_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody849_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody849_3 : StackLang.HolProg 64 :=
.seq NamedBody849_1 NamedBody849_2

def NamedBody849_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody849_3 NamedBody849_4

def NamedBody849_6 : StackLang.HolProg 64 :=
.seq NamedBody849_0 NamedBody849_5

def NamedBody849_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody849_9 : StackLang.HolProg 64 :=
.seq NamedBody849_7 NamedBody849_8

def NamedBody849_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4269#64)

def NamedBody849_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody849_13 : StackLang.HolProg 64 :=
.seq NamedBody849_11 NamedBody849_12

def NamedBody849_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody849_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody849_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody849_17 : StackLang.HolProg 64 :=
.seq NamedBody849_15 NamedBody849_16

def NamedBody849_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody849_17 NamedBody849_18

def NamedBody849_20 : StackLang.HolProg 64 :=
.seq NamedBody849_14 NamedBody849_19

def NamedBody849_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody849_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody849_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 849 3

def NamedBody849_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody849_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody849_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody849_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody849_30 : StackLang.HolProg 64 :=
.seq NamedBody849_28 NamedBody849_29

def NamedBody849_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody849_32 : StackLang.HolProg 64 :=
.seq NamedBody849_30 NamedBody849_31

def NamedBody849_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody849_34 : StackLang.HolProg 64 :=
.seq NamedBody849_32 NamedBody849_33

def NamedBody849_35 : StackLang.HolProg 64 :=
.seq NamedBody849_27 NamedBody849_34

def NamedBody849_36 : StackLang.HolProg 64 :=
.seq NamedBody849_26 NamedBody849_35

def NamedBody849_37 : StackLang.HolProg 64 :=
.seq NamedBody849_25 NamedBody849_36

def NamedBody849_38 : StackLang.HolProg 64 :=
.seq NamedBody849_24 NamedBody849_37

def NamedBody849_39 : StackLang.HolProg 64 :=
.seq NamedBody849_23 NamedBody849_38

def NamedBody849_40 : StackLang.HolProg 64 :=
.seq NamedBody849_22 NamedBody849_39

def NamedBody849_41 : StackLang.HolProg 64 :=
.seq NamedBody849_21 NamedBody849_40

def NamedBody849_42 : StackLang.HolProg 64 :=
.seq NamedBody849_20 NamedBody849_41

def NamedBody849_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody849_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody849_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody849_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody849_52 : StackLang.HolProg 64 :=
.seq NamedBody849_50 NamedBody849_51

def NamedBody849_53 : StackLang.HolProg 64 :=
.seq NamedBody849_49 NamedBody849_52

def NamedBody849_54 : StackLang.HolProg 64 :=
.seq NamedBody849_48 NamedBody849_53

def NamedBody849_55 : StackLang.HolProg 64 :=
.seq NamedBody849_47 NamedBody849_54

def NamedBody849_56 : StackLang.HolProg 64 :=
.seq NamedBody849_46 NamedBody849_55

def NamedBody849_57 : StackLang.HolProg 64 :=
.seq NamedBody849_45 NamedBody849_56

def NamedBody849_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody849_60 : StackLang.HolProg 64 :=
.seq NamedBody849_58 NamedBody849_59

def NamedBody849_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody849_62 : StackLang.HolProg 64 :=
.seq NamedBody849_60 NamedBody849_61

def NamedBody849_63 : StackLang.HolProg 64 :=
.call (some (NamedBody849_57, 1, 849, 2)) (Sum.inl 187) (some (NamedBody849_62, 849, 3))

def NamedBody849_64 : StackLang.HolProg 64 :=
.seq NamedBody849_44 NamedBody849_63

def NamedBody849_65 : StackLang.HolProg 64 :=
.seq NamedBody849_43 NamedBody849_64

def NamedBody849_66 : StackLang.HolProg 64 :=
.seq NamedBody849_42 NamedBody849_65

def NamedBody849_67 : StackLang.HolProg 64 :=
.seq NamedBody849_13 NamedBody849_66

def NamedBody849_68 : StackLang.HolProg 64 :=
.seq NamedBody849_10 NamedBody849_67

def NamedBody849_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody849_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody849_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody849_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody849_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody849_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody849_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551488#64))

def NamedBody849_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody849_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody849_80 : StackLang.HolProg 64 :=
.seq NamedBody849_78 NamedBody849_79

def NamedBody849_81 : StackLang.HolProg 64 :=
.seq NamedBody849_77 NamedBody849_80

def NamedBody849_82 : StackLang.HolProg 64 :=
.seq NamedBody849_76 NamedBody849_81

def NamedBody849_83 : StackLang.HolProg 64 :=
.seq NamedBody849_75 NamedBody849_82

def NamedBody849_84 : StackLang.HolProg 64 :=
.seq NamedBody849_74 NamedBody849_83

def NamedBody849_85 : StackLang.HolProg 64 :=
.seq NamedBody849_73 NamedBody849_84

def NamedBody849_86 : StackLang.HolProg 64 :=
.seq NamedBody849_72 NamedBody849_85

def NamedBody849_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody849_86 NamedBody849_87

def NamedBody849_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody849_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody849_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody849_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_93 : StackLang.HolProg 64 :=
.seq NamedBody849_91 NamedBody849_92

def NamedBody849_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4270#64)

def NamedBody849_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody849_97 : StackLang.HolProg 64 :=
.seq NamedBody849_95 NamedBody849_96

def NamedBody849_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody849_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody849_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody849_101 : StackLang.HolProg 64 :=
.seq NamedBody849_99 NamedBody849_100

def NamedBody849_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody849_101 NamedBody849_102

def NamedBody849_104 : StackLang.HolProg 64 :=
.seq NamedBody849_98 NamedBody849_103

def NamedBody849_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody849_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody849_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 849 5

def NamedBody849_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody849_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody849_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody849_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody849_114 : StackLang.HolProg 64 :=
.seq NamedBody849_112 NamedBody849_113

def NamedBody849_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody849_116 : StackLang.HolProg 64 :=
.seq NamedBody849_114 NamedBody849_115

def NamedBody849_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody849_118 : StackLang.HolProg 64 :=
.seq NamedBody849_116 NamedBody849_117

def NamedBody849_119 : StackLang.HolProg 64 :=
.seq NamedBody849_111 NamedBody849_118

def NamedBody849_120 : StackLang.HolProg 64 :=
.seq NamedBody849_110 NamedBody849_119

def NamedBody849_121 : StackLang.HolProg 64 :=
.seq NamedBody849_109 NamedBody849_120

def NamedBody849_122 : StackLang.HolProg 64 :=
.seq NamedBody849_108 NamedBody849_121

def NamedBody849_123 : StackLang.HolProg 64 :=
.seq NamedBody849_107 NamedBody849_122

def NamedBody849_124 : StackLang.HolProg 64 :=
.seq NamedBody849_106 NamedBody849_123

def NamedBody849_125 : StackLang.HolProg 64 :=
.seq NamedBody849_105 NamedBody849_124

def NamedBody849_126 : StackLang.HolProg 64 :=
.seq NamedBody849_104 NamedBody849_125

def NamedBody849_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody849_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody849_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody849_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody849_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_135 : StackLang.HolProg 64 :=
.seq NamedBody849_133 NamedBody849_134

def NamedBody849_136 : StackLang.HolProg 64 :=
.seq NamedBody849_132 NamedBody849_135

def NamedBody849_137 : StackLang.HolProg 64 :=
.seq NamedBody849_131 NamedBody849_136

def NamedBody849_138 : StackLang.HolProg 64 :=
.seq NamedBody849_130 NamedBody849_137

def NamedBody849_139 : StackLang.HolProg 64 :=
.seq NamedBody849_129 NamedBody849_138

def NamedBody849_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody849_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody849_142 : StackLang.HolProg 64 :=
.seq NamedBody849_140 NamedBody849_141

def NamedBody849_143 : StackLang.HolProg 64 :=
.call (some (NamedBody849_139, 1, 849, 4)) (Sum.inl 399) (some (NamedBody849_142, 849, 5))

def NamedBody849_144 : StackLang.HolProg 64 :=
.seq NamedBody849_128 NamedBody849_143

def NamedBody849_145 : StackLang.HolProg 64 :=
.seq NamedBody849_127 NamedBody849_144

def NamedBody849_146 : StackLang.HolProg 64 :=
.seq NamedBody849_126 NamedBody849_145

def NamedBody849_147 : StackLang.HolProg 64 :=
.seq NamedBody849_97 NamedBody849_146

def NamedBody849_148 : StackLang.HolProg 64 :=
.seq NamedBody849_94 NamedBody849_147

def NamedBody849_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody849_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody849_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody849_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody849_153 : StackLang.HolProg 64 :=
.seq NamedBody849_151 NamedBody849_152

def NamedBody849_154 : StackLang.HolProg 64 :=
.seq NamedBody849_150 NamedBody849_153

def NamedBody849_155 : StackLang.HolProg 64 :=
.seq NamedBody849_149 NamedBody849_154

def NamedBody849_156 : StackLang.HolProg 64 :=
.seq NamedBody849_148 NamedBody849_155

def NamedBody849_157 : StackLang.HolProg 64 :=
.seq NamedBody849_93 NamedBody849_156

def NamedBody849_158 : StackLang.HolProg 64 :=
.seq NamedBody849_90 NamedBody849_157

def NamedBody849_159 : StackLang.HolProg 64 :=
.seq NamedBody849_89 NamedBody849_158

def NamedBody849_160 : StackLang.HolProg 64 :=
.seq NamedBody849_88 NamedBody849_159

def NamedBody849_161 : StackLang.HolProg 64 :=
.seq NamedBody849_71 NamedBody849_160

def NamedBody849_162 : StackLang.HolProg 64 :=
.seq NamedBody849_70 NamedBody849_161

def NamedBody849_163 : StackLang.HolProg 64 :=
.seq NamedBody849_69 NamedBody849_162

def NamedBody849_164 : StackLang.HolProg 64 :=
.seq NamedBody849_68 NamedBody849_163

def NamedBody849_165 : StackLang.HolProg 64 :=
.seq NamedBody849_9 NamedBody849_164

def NamedBody849_166 : StackLang.HolProg 64 :=
.seq NamedBody849_6 NamedBody849_165

def Named849 : Nat × StackLang.HolProg 64 := (849, NamedBody849_166)
theorem Named849_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed849 = Named849 := by
  kernel_rfl
#print axioms Named849_eq
end InitECandidate.Proofs.BackendStages
