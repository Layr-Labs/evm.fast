import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed298
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody298_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody298_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody298_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody298_3 : StackLang.HolProg 64 :=
.seq NamedBody298_1 NamedBody298_2

def NamedBody298_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody298_3 NamedBody298_4

def NamedBody298_6 : StackLang.HolProg 64 :=
.seq NamedBody298_0 NamedBody298_5

def NamedBody298_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 176#64)

def NamedBody298_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody298_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 804#64)

def NamedBody298_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody298_13 : StackLang.HolProg 64 :=
.seq NamedBody298_11 NamedBody298_12

def NamedBody298_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody298_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody298_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody298_17 : StackLang.HolProg 64 :=
.seq NamedBody298_15 NamedBody298_16

def NamedBody298_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody298_17 NamedBody298_18

def NamedBody298_20 : StackLang.HolProg 64 :=
.seq NamedBody298_14 NamedBody298_19

def NamedBody298_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody298_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody298_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 298 3

def NamedBody298_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody298_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody298_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody298_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody298_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody298_30 : StackLang.HolProg 64 :=
.seq NamedBody298_28 NamedBody298_29

def NamedBody298_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody298_32 : StackLang.HolProg 64 :=
.seq NamedBody298_30 NamedBody298_31

def NamedBody298_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody298_34 : StackLang.HolProg 64 :=
.seq NamedBody298_32 NamedBody298_33

def NamedBody298_35 : StackLang.HolProg 64 :=
.seq NamedBody298_27 NamedBody298_34

def NamedBody298_36 : StackLang.HolProg 64 :=
.seq NamedBody298_26 NamedBody298_35

def NamedBody298_37 : StackLang.HolProg 64 :=
.seq NamedBody298_25 NamedBody298_36

def NamedBody298_38 : StackLang.HolProg 64 :=
.seq NamedBody298_24 NamedBody298_37

def NamedBody298_39 : StackLang.HolProg 64 :=
.seq NamedBody298_23 NamedBody298_38

def NamedBody298_40 : StackLang.HolProg 64 :=
.seq NamedBody298_22 NamedBody298_39

def NamedBody298_41 : StackLang.HolProg 64 :=
.seq NamedBody298_21 NamedBody298_40

def NamedBody298_42 : StackLang.HolProg 64 :=
.seq NamedBody298_20 NamedBody298_41

def NamedBody298_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody298_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody298_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody298_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody298_50 : StackLang.HolProg 64 :=
.seq NamedBody298_48 NamedBody298_49

def NamedBody298_51 : StackLang.HolProg 64 :=
.seq NamedBody298_47 NamedBody298_50

def NamedBody298_52 : StackLang.HolProg 64 :=
.seq NamedBody298_46 NamedBody298_51

def NamedBody298_53 : StackLang.HolProg 64 :=
.seq NamedBody298_45 NamedBody298_52

def NamedBody298_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody298_56 : StackLang.HolProg 64 :=
.seq NamedBody298_54 NamedBody298_55

def NamedBody298_57 : StackLang.HolProg 64 :=
.call (some (NamedBody298_53, 1, 298, 2)) (Sum.inl 68) (some (NamedBody298_56, 298, 3))

def NamedBody298_58 : StackLang.HolProg 64 :=
.seq NamedBody298_44 NamedBody298_57

def NamedBody298_59 : StackLang.HolProg 64 :=
.seq NamedBody298_43 NamedBody298_58

def NamedBody298_60 : StackLang.HolProg 64 :=
.seq NamedBody298_42 NamedBody298_59

def NamedBody298_61 : StackLang.HolProg 64 :=
.seq NamedBody298_13 NamedBody298_60

def NamedBody298_62 : StackLang.HolProg 64 :=
.seq NamedBody298_10 NamedBody298_61

def NamedBody298_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody298_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody298_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 176#64)

def NamedBody298_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody298_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 805#64)

def NamedBody298_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody298_70 : StackLang.HolProg 64 :=
.seq NamedBody298_68 NamedBody298_69

def NamedBody298_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody298_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody298_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody298_74 : StackLang.HolProg 64 :=
.seq NamedBody298_72 NamedBody298_73

def NamedBody298_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody298_74 NamedBody298_75

def NamedBody298_77 : StackLang.HolProg 64 :=
.seq NamedBody298_71 NamedBody298_76

def NamedBody298_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody298_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody298_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 298 5

def NamedBody298_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody298_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody298_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody298_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody298_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody298_87 : StackLang.HolProg 64 :=
.seq NamedBody298_85 NamedBody298_86

def NamedBody298_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody298_89 : StackLang.HolProg 64 :=
.seq NamedBody298_87 NamedBody298_88

def NamedBody298_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody298_91 : StackLang.HolProg 64 :=
.seq NamedBody298_89 NamedBody298_90

def NamedBody298_92 : StackLang.HolProg 64 :=
.seq NamedBody298_84 NamedBody298_91

def NamedBody298_93 : StackLang.HolProg 64 :=
.seq NamedBody298_83 NamedBody298_92

def NamedBody298_94 : StackLang.HolProg 64 :=
.seq NamedBody298_82 NamedBody298_93

def NamedBody298_95 : StackLang.HolProg 64 :=
.seq NamedBody298_81 NamedBody298_94

def NamedBody298_96 : StackLang.HolProg 64 :=
.seq NamedBody298_80 NamedBody298_95

def NamedBody298_97 : StackLang.HolProg 64 :=
.seq NamedBody298_79 NamedBody298_96

def NamedBody298_98 : StackLang.HolProg 64 :=
.seq NamedBody298_78 NamedBody298_97

def NamedBody298_99 : StackLang.HolProg 64 :=
.seq NamedBody298_77 NamedBody298_98

def NamedBody298_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody298_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody298_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody298_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody298_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody298_108 : StackLang.HolProg 64 :=
.seq NamedBody298_106 NamedBody298_107

def NamedBody298_109 : StackLang.HolProg 64 :=
.seq NamedBody298_105 NamedBody298_108

def NamedBody298_110 : StackLang.HolProg 64 :=
.seq NamedBody298_104 NamedBody298_109

def NamedBody298_111 : StackLang.HolProg 64 :=
.seq NamedBody298_103 NamedBody298_110

def NamedBody298_112 : StackLang.HolProg 64 :=
.seq NamedBody298_102 NamedBody298_111

def NamedBody298_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody298_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody298_115 : StackLang.HolProg 64 :=
.seq NamedBody298_113 NamedBody298_114

def NamedBody298_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody298_117 : StackLang.HolProg 64 :=
.seq NamedBody298_115 NamedBody298_116

def NamedBody298_118 : StackLang.HolProg 64 :=
.call (some (NamedBody298_112, 1, 298, 4)) (Sum.inl 78) (some (NamedBody298_117, 298, 5))

def NamedBody298_119 : StackLang.HolProg 64 :=
.seq NamedBody298_101 NamedBody298_118

def NamedBody298_120 : StackLang.HolProg 64 :=
.seq NamedBody298_100 NamedBody298_119

def NamedBody298_121 : StackLang.HolProg 64 :=
.seq NamedBody298_99 NamedBody298_120

def NamedBody298_122 : StackLang.HolProg 64 :=
.seq NamedBody298_70 NamedBody298_121

def NamedBody298_123 : StackLang.HolProg 64 :=
.seq NamedBody298_67 NamedBody298_122

def NamedBody298_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody298_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody298_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody298_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody298_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody298_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody298_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody298_132 : StackLang.HolProg 64 :=
.seq NamedBody298_130 NamedBody298_131

def NamedBody298_133 : StackLang.HolProg 64 :=
.seq NamedBody298_129 NamedBody298_132

def NamedBody298_134 : StackLang.HolProg 64 :=
.seq NamedBody298_128 NamedBody298_133

def NamedBody298_135 : StackLang.HolProg 64 :=
.seq NamedBody298_127 NamedBody298_134

def NamedBody298_136 : StackLang.HolProg 64 :=
.seq NamedBody298_126 NamedBody298_135

def NamedBody298_137 : StackLang.HolProg 64 :=
.seq NamedBody298_125 NamedBody298_136

def NamedBody298_138 : StackLang.HolProg 64 :=
.seq NamedBody298_124 NamedBody298_137

def NamedBody298_139 : StackLang.HolProg 64 :=
.seq NamedBody298_123 NamedBody298_138

def NamedBody298_140 : StackLang.HolProg 64 :=
.seq NamedBody298_66 NamedBody298_139

def NamedBody298_141 : StackLang.HolProg 64 :=
.seq NamedBody298_65 NamedBody298_140

def NamedBody298_142 : StackLang.HolProg 64 :=
.seq NamedBody298_64 NamedBody298_141

def NamedBody298_143 : StackLang.HolProg 64 :=
.seq NamedBody298_63 NamedBody298_142

def NamedBody298_144 : StackLang.HolProg 64 :=
.seq NamedBody298_62 NamedBody298_143

def NamedBody298_145 : StackLang.HolProg 64 :=
.seq NamedBody298_9 NamedBody298_144

def NamedBody298_146 : StackLang.HolProg 64 :=
.seq NamedBody298_8 NamedBody298_145

def NamedBody298_147 : StackLang.HolProg 64 :=
.seq NamedBody298_7 NamedBody298_146

def NamedBody298_148 : StackLang.HolProg 64 :=
.seq NamedBody298_6 NamedBody298_147

def Named298 : Nat × StackLang.HolProg 64 := (298, NamedBody298_148)
theorem Named298_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed298 = Named298 := by
  kernel_rfl
#print axioms Named298_eq
end InitECandidate.Proofs.BackendStages
