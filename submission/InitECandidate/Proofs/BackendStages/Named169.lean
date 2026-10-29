import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed169
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody169_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody169_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody169_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody169_3 : StackLang.HolProg 64 :=
.seq NamedBody169_1 NamedBody169_2

def NamedBody169_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody169_3 NamedBody169_4

def NamedBody169_6 : StackLang.HolProg 64 :=
.seq NamedBody169_0 NamedBody169_5

def NamedBody169_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody169_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody169_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_10 : StackLang.HolProg 64 :=
.seq NamedBody169_8 NamedBody169_9

def NamedBody169_11 : StackLang.HolProg 64 :=
.seq NamedBody169_7 NamedBody169_10

def NamedBody169_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 187#64)

def NamedBody169_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody169_15 : StackLang.HolProg 64 :=
.seq NamedBody169_13 NamedBody169_14

def NamedBody169_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody169_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody169_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody169_19 : StackLang.HolProg 64 :=
.seq NamedBody169_17 NamedBody169_18

def NamedBody169_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody169_19 NamedBody169_20

def NamedBody169_22 : StackLang.HolProg 64 :=
.seq NamedBody169_16 NamedBody169_21

def NamedBody169_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody169_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody169_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 3

def NamedBody169_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody169_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody169_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody169_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody169_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody169_32 : StackLang.HolProg 64 :=
.seq NamedBody169_30 NamedBody169_31

def NamedBody169_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody169_34 : StackLang.HolProg 64 :=
.seq NamedBody169_32 NamedBody169_33

def NamedBody169_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody169_36 : StackLang.HolProg 64 :=
.seq NamedBody169_34 NamedBody169_35

def NamedBody169_37 : StackLang.HolProg 64 :=
.seq NamedBody169_29 NamedBody169_36

def NamedBody169_38 : StackLang.HolProg 64 :=
.seq NamedBody169_28 NamedBody169_37

def NamedBody169_39 : StackLang.HolProg 64 :=
.seq NamedBody169_27 NamedBody169_38

def NamedBody169_40 : StackLang.HolProg 64 :=
.seq NamedBody169_26 NamedBody169_39

def NamedBody169_41 : StackLang.HolProg 64 :=
.seq NamedBody169_25 NamedBody169_40

def NamedBody169_42 : StackLang.HolProg 64 :=
.seq NamedBody169_24 NamedBody169_41

def NamedBody169_43 : StackLang.HolProg 64 :=
.seq NamedBody169_23 NamedBody169_42

def NamedBody169_44 : StackLang.HolProg 64 :=
.seq NamedBody169_22 NamedBody169_43

def NamedBody169_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody169_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody169_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody169_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody169_52 : StackLang.HolProg 64 :=
.seq NamedBody169_50 NamedBody169_51

def NamedBody169_53 : StackLang.HolProg 64 :=
.seq NamedBody169_49 NamedBody169_52

def NamedBody169_54 : StackLang.HolProg 64 :=
.seq NamedBody169_48 NamedBody169_53

def NamedBody169_55 : StackLang.HolProg 64 :=
.seq NamedBody169_47 NamedBody169_54

def NamedBody169_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody169_58 : StackLang.HolProg 64 :=
.seq NamedBody169_56 NamedBody169_57

def NamedBody169_59 : StackLang.HolProg 64 :=
.call (some (NamedBody169_55, 1, 169, 2)) (Sum.inl 167) (some (NamedBody169_58, 169, 3))

def NamedBody169_60 : StackLang.HolProg 64 :=
.seq NamedBody169_46 NamedBody169_59

def NamedBody169_61 : StackLang.HolProg 64 :=
.seq NamedBody169_45 NamedBody169_60

def NamedBody169_62 : StackLang.HolProg 64 :=
.seq NamedBody169_44 NamedBody169_61

def NamedBody169_63 : StackLang.HolProg 64 :=
.seq NamedBody169_15 NamedBody169_62

def NamedBody169_64 : StackLang.HolProg 64 :=
.seq NamedBody169_12 NamedBody169_63

def NamedBody169_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody169_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody169_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody169_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 188#64)

def NamedBody169_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody169_72 : StackLang.HolProg 64 :=
.seq NamedBody169_70 NamedBody169_71

def NamedBody169_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody169_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody169_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody169_76 : StackLang.HolProg 64 :=
.seq NamedBody169_74 NamedBody169_75

def NamedBody169_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody169_76 NamedBody169_77

def NamedBody169_79 : StackLang.HolProg 64 :=
.seq NamedBody169_73 NamedBody169_78

def NamedBody169_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody169_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody169_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 5

def NamedBody169_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody169_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody169_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody169_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody169_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody169_89 : StackLang.HolProg 64 :=
.seq NamedBody169_87 NamedBody169_88

def NamedBody169_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody169_91 : StackLang.HolProg 64 :=
.seq NamedBody169_89 NamedBody169_90

def NamedBody169_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody169_93 : StackLang.HolProg 64 :=
.seq NamedBody169_91 NamedBody169_92

def NamedBody169_94 : StackLang.HolProg 64 :=
.seq NamedBody169_86 NamedBody169_93

def NamedBody169_95 : StackLang.HolProg 64 :=
.seq NamedBody169_85 NamedBody169_94

def NamedBody169_96 : StackLang.HolProg 64 :=
.seq NamedBody169_84 NamedBody169_95

def NamedBody169_97 : StackLang.HolProg 64 :=
.seq NamedBody169_83 NamedBody169_96

def NamedBody169_98 : StackLang.HolProg 64 :=
.seq NamedBody169_82 NamedBody169_97

def NamedBody169_99 : StackLang.HolProg 64 :=
.seq NamedBody169_81 NamedBody169_98

def NamedBody169_100 : StackLang.HolProg 64 :=
.seq NamedBody169_80 NamedBody169_99

def NamedBody169_101 : StackLang.HolProg 64 :=
.seq NamedBody169_79 NamedBody169_100

def NamedBody169_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody169_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody169_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody169_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody169_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody169_111 : StackLang.HolProg 64 :=
.seq NamedBody169_109 NamedBody169_110

def NamedBody169_112 : StackLang.HolProg 64 :=
.seq NamedBody169_108 NamedBody169_111

def NamedBody169_113 : StackLang.HolProg 64 :=
.seq NamedBody169_107 NamedBody169_112

def NamedBody169_114 : StackLang.HolProg 64 :=
.seq NamedBody169_106 NamedBody169_113

def NamedBody169_115 : StackLang.HolProg 64 :=
.seq NamedBody169_105 NamedBody169_114

def NamedBody169_116 : StackLang.HolProg 64 :=
.seq NamedBody169_104 NamedBody169_115

def NamedBody169_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody169_119 : StackLang.HolProg 64 :=
.seq NamedBody169_117 NamedBody169_118

def NamedBody169_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody169_121 : StackLang.HolProg 64 :=
.seq NamedBody169_119 NamedBody169_120

def NamedBody169_122 : StackLang.HolProg 64 :=
.call (some (NamedBody169_116, 1, 169, 4)) (Sum.inl 68) (some (NamedBody169_121, 169, 5))

def NamedBody169_123 : StackLang.HolProg 64 :=
.seq NamedBody169_103 NamedBody169_122

def NamedBody169_124 : StackLang.HolProg 64 :=
.seq NamedBody169_102 NamedBody169_123

def NamedBody169_125 : StackLang.HolProg 64 :=
.seq NamedBody169_101 NamedBody169_124

def NamedBody169_126 : StackLang.HolProg 64 :=
.seq NamedBody169_72 NamedBody169_125

def NamedBody169_127 : StackLang.HolProg 64 :=
.seq NamedBody169_69 NamedBody169_126

def NamedBody169_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody169_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody169_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody169_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody169_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody169_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody169_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody169_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody169_139 : StackLang.HolProg 64 :=
.seq NamedBody169_137 NamedBody169_138

def NamedBody169_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody169_142 : StackLang.HolProg 64 :=
.seq NamedBody169_140 NamedBody169_141

def NamedBody169_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody169_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody169_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody169_147 : StackLang.HolProg 64 :=
.seq NamedBody169_145 NamedBody169_146

def NamedBody169_148 : StackLang.HolProg 64 :=
.seq NamedBody169_144 NamedBody169_147

def NamedBody169_149 : StackLang.HolProg 64 :=
.seq NamedBody169_143 NamedBody169_148

def NamedBody169_150 : StackLang.HolProg 64 :=
.seq NamedBody169_142 NamedBody169_149

def NamedBody169_151 : StackLang.HolProg 64 :=
.seq NamedBody169_139 NamedBody169_150

def NamedBody169_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 189#64)

def NamedBody169_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody169_155 : StackLang.HolProg 64 :=
.seq NamedBody169_153 NamedBody169_154

def NamedBody169_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody169_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody169_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody169_159 : StackLang.HolProg 64 :=
.seq NamedBody169_157 NamedBody169_158

def NamedBody169_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody169_159 NamedBody169_160

def NamedBody169_162 : StackLang.HolProg 64 :=
.seq NamedBody169_156 NamedBody169_161

def NamedBody169_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody169_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody169_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 7

def NamedBody169_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody169_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody169_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody169_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody169_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody169_172 : StackLang.HolProg 64 :=
.seq NamedBody169_170 NamedBody169_171

def NamedBody169_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody169_174 : StackLang.HolProg 64 :=
.seq NamedBody169_172 NamedBody169_173

def NamedBody169_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody169_176 : StackLang.HolProg 64 :=
.seq NamedBody169_174 NamedBody169_175

def NamedBody169_177 : StackLang.HolProg 64 :=
.seq NamedBody169_169 NamedBody169_176

def NamedBody169_178 : StackLang.HolProg 64 :=
.seq NamedBody169_168 NamedBody169_177

def NamedBody169_179 : StackLang.HolProg 64 :=
.seq NamedBody169_167 NamedBody169_178

def NamedBody169_180 : StackLang.HolProg 64 :=
.seq NamedBody169_166 NamedBody169_179

def NamedBody169_181 : StackLang.HolProg 64 :=
.seq NamedBody169_165 NamedBody169_180

def NamedBody169_182 : StackLang.HolProg 64 :=
.seq NamedBody169_164 NamedBody169_181

def NamedBody169_183 : StackLang.HolProg 64 :=
.seq NamedBody169_163 NamedBody169_182

def NamedBody169_184 : StackLang.HolProg 64 :=
.seq NamedBody169_162 NamedBody169_183

def NamedBody169_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody169_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody169_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody169_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody169_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody169_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody169_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody169_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody169_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody169_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody169_199 : StackLang.HolProg 64 :=
.seq NamedBody169_197 NamedBody169_198

def NamedBody169_200 : StackLang.HolProg 64 :=
.seq NamedBody169_196 NamedBody169_199

def NamedBody169_201 : StackLang.HolProg 64 :=
.seq NamedBody169_195 NamedBody169_200

def NamedBody169_202 : StackLang.HolProg 64 :=
.seq NamedBody169_194 NamedBody169_201

def NamedBody169_203 : StackLang.HolProg 64 :=
.seq NamedBody169_193 NamedBody169_202

def NamedBody169_204 : StackLang.HolProg 64 :=
.seq NamedBody169_192 NamedBody169_203

def NamedBody169_205 : StackLang.HolProg 64 :=
.seq NamedBody169_191 NamedBody169_204

def NamedBody169_206 : StackLang.HolProg 64 :=
.seq NamedBody169_190 NamedBody169_205

def NamedBody169_207 : StackLang.HolProg 64 :=
.seq NamedBody169_189 NamedBody169_206

def NamedBody169_208 : StackLang.HolProg 64 :=
.seq NamedBody169_188 NamedBody169_207

def NamedBody169_209 : StackLang.HolProg 64 :=
.seq NamedBody169_187 NamedBody169_208

def NamedBody169_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody169_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody169_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody169_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody169_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody169_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody169_217 : StackLang.HolProg 64 :=
.seq NamedBody169_215 NamedBody169_216

def NamedBody169_218 : StackLang.HolProg 64 :=
.seq NamedBody169_214 NamedBody169_217

def NamedBody169_219 : StackLang.HolProg 64 :=
.seq NamedBody169_213 NamedBody169_218

def NamedBody169_220 : StackLang.HolProg 64 :=
.seq NamedBody169_212 NamedBody169_219

def NamedBody169_221 : StackLang.HolProg 64 :=
.seq NamedBody169_211 NamedBody169_220

def NamedBody169_222 : StackLang.HolProg 64 :=
.seq NamedBody169_210 NamedBody169_221

def NamedBody169_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody169_224 : StackLang.HolProg 64 :=
.seq NamedBody169_222 NamedBody169_223

def NamedBody169_225 : StackLang.HolProg 64 :=
.call (some (NamedBody169_209, 1, 169, 6)) (Sum.inl 168) (some (NamedBody169_224, 169, 7))

def NamedBody169_226 : StackLang.HolProg 64 :=
.seq NamedBody169_186 NamedBody169_225

def NamedBody169_227 : StackLang.HolProg 64 :=
.seq NamedBody169_185 NamedBody169_226

def NamedBody169_228 : StackLang.HolProg 64 :=
.seq NamedBody169_184 NamedBody169_227

def NamedBody169_229 : StackLang.HolProg 64 :=
.seq NamedBody169_155 NamedBody169_228

def NamedBody169_230 : StackLang.HolProg 64 :=
.seq NamedBody169_152 NamedBody169_229

def NamedBody169_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody169_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody169_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody169_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody169_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody169_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody169_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody169_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody169_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody169_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody169_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody169_251 : StackLang.HolProg 64 :=
.seq NamedBody169_249 NamedBody169_250

def NamedBody169_252 : StackLang.HolProg 64 :=
.seq NamedBody169_248 NamedBody169_251

def NamedBody169_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody169_254 : StackLang.HolProg 64 :=
.seq NamedBody169_252 NamedBody169_253

def NamedBody169_255 : StackLang.HolProg 64 :=
.seq NamedBody169_247 NamedBody169_254

def NamedBody169_256 : StackLang.HolProg 64 :=
.seq NamedBody169_246 NamedBody169_255

def NamedBody169_257 : StackLang.HolProg 64 :=
.seq NamedBody169_245 NamedBody169_256

def NamedBody169_258 : StackLang.HolProg 64 :=
.seq NamedBody169_244 NamedBody169_257

def NamedBody169_259 : StackLang.HolProg 64 :=
.seq NamedBody169_243 NamedBody169_258

def NamedBody169_260 : StackLang.HolProg 64 :=
.seq NamedBody169_242 NamedBody169_259

def NamedBody169_261 : StackLang.HolProg 64 :=
.seq NamedBody169_241 NamedBody169_260

def NamedBody169_262 : StackLang.HolProg 64 :=
.seq NamedBody169_240 NamedBody169_261

def NamedBody169_263 : StackLang.HolProg 64 :=
.seq NamedBody169_239 NamedBody169_262

def NamedBody169_264 : StackLang.HolProg 64 :=
.seq NamedBody169_238 NamedBody169_263

def NamedBody169_265 : StackLang.HolProg 64 :=
.seq NamedBody169_237 NamedBody169_264

def NamedBody169_266 : StackLang.HolProg 64 :=
.seq NamedBody169_236 NamedBody169_265

def NamedBody169_267 : StackLang.HolProg 64 :=
.seq NamedBody169_235 NamedBody169_266

def NamedBody169_268 : StackLang.HolProg 64 :=
.seq NamedBody169_234 NamedBody169_267

def NamedBody169_269 : StackLang.HolProg 64 :=
.seq NamedBody169_233 NamedBody169_268

def NamedBody169_270 : StackLang.HolProg 64 :=
.seq NamedBody169_232 NamedBody169_269

def NamedBody169_271 : StackLang.HolProg 64 :=
.seq NamedBody169_231 NamedBody169_270

def NamedBody169_272 : StackLang.HolProg 64 :=
.seq NamedBody169_230 NamedBody169_271

def NamedBody169_273 : StackLang.HolProg 64 :=
.seq NamedBody169_151 NamedBody169_272

def NamedBody169_274 : StackLang.HolProg 64 :=
.seq NamedBody169_136 NamedBody169_273

def NamedBody169_275 : StackLang.HolProg 64 :=
.seq NamedBody169_135 NamedBody169_274

def NamedBody169_276 : StackLang.HolProg 64 :=
.seq NamedBody169_134 NamedBody169_275

def NamedBody169_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody169_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody169_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody169_280 : StackLang.HolProg 64 :=
.seq NamedBody169_278 NamedBody169_279

def NamedBody169_281 : StackLang.HolProg 64 :=
.seq NamedBody169_277 NamedBody169_280

def NamedBody169_282 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody169_276 NamedBody169_281

def NamedBody169_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody169_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody169_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody169_287 : StackLang.HolProg 64 :=
.seq NamedBody169_285 NamedBody169_286

def NamedBody169_288 : StackLang.HolProg 64 :=
.seq NamedBody169_284 NamedBody169_287

def NamedBody169_289 : StackLang.HolProg 64 :=
.seq NamedBody169_283 NamedBody169_288

def NamedBody169_290 : StackLang.HolProg 64 :=
.seq NamedBody169_282 NamedBody169_289

def NamedBody169_291 : StackLang.HolProg 64 :=
.seq NamedBody169_133 NamedBody169_290

def NamedBody169_292 : StackLang.HolProg 64 :=
.loop NamedBody169_291

def NamedBody169_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody169_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody169_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody169_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody169_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody169_298 : StackLang.HolProg 64 :=
.seq NamedBody169_296 NamedBody169_297

def NamedBody169_299 : StackLang.HolProg 64 :=
.seq NamedBody169_295 NamedBody169_298

def NamedBody169_300 : StackLang.HolProg 64 :=
.seq NamedBody169_294 NamedBody169_299

def NamedBody169_301 : StackLang.HolProg 64 :=
.seq NamedBody169_293 NamedBody169_300

def NamedBody169_302 : StackLang.HolProg 64 :=
.seq NamedBody169_292 NamedBody169_301

def NamedBody169_303 : StackLang.HolProg 64 :=
.seq NamedBody169_132 NamedBody169_302

def NamedBody169_304 : StackLang.HolProg 64 :=
.seq NamedBody169_131 NamedBody169_303

def NamedBody169_305 : StackLang.HolProg 64 :=
.seq NamedBody169_130 NamedBody169_304

def NamedBody169_306 : StackLang.HolProg 64 :=
.seq NamedBody169_129 NamedBody169_305

def NamedBody169_307 : StackLang.HolProg 64 :=
.seq NamedBody169_128 NamedBody169_306

def NamedBody169_308 : StackLang.HolProg 64 :=
.seq NamedBody169_127 NamedBody169_307

def NamedBody169_309 : StackLang.HolProg 64 :=
.seq NamedBody169_68 NamedBody169_308

def NamedBody169_310 : StackLang.HolProg 64 :=
.seq NamedBody169_67 NamedBody169_309

def NamedBody169_311 : StackLang.HolProg 64 :=
.seq NamedBody169_66 NamedBody169_310

def NamedBody169_312 : StackLang.HolProg 64 :=
.seq NamedBody169_65 NamedBody169_311

def NamedBody169_313 : StackLang.HolProg 64 :=
.seq NamedBody169_64 NamedBody169_312

def NamedBody169_314 : StackLang.HolProg 64 :=
.seq NamedBody169_11 NamedBody169_313

def NamedBody169_315 : StackLang.HolProg 64 :=
.seq NamedBody169_6 NamedBody169_314

def Named169 : Nat × StackLang.HolProg 64 := (169, NamedBody169_315)
theorem Named169_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed169 = Named169 := by
  kernel_rfl
#print axioms Named169_eq
end InitECandidate.Proofs.BackendStages
