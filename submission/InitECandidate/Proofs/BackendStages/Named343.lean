import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed343
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody343_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody343_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody343_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody343_3 : StackLang.HolProg 64 :=
.seq NamedBody343_1 NamedBody343_2

def NamedBody343_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody343_3 NamedBody343_4

def NamedBody343_6 : StackLang.HolProg 64 :=
.seq NamedBody343_0 NamedBody343_5

def NamedBody343_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody343_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody343_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody343_10 : StackLang.HolProg 64 :=
.seq NamedBody343_8 NamedBody343_9

def NamedBody343_11 : StackLang.HolProg 64 :=
.seq NamedBody343_7 NamedBody343_10

def NamedBody343_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 986#64)

def NamedBody343_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody343_15 : StackLang.HolProg 64 :=
.seq NamedBody343_13 NamedBody343_14

def NamedBody343_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody343_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody343_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody343_19 : StackLang.HolProg 64 :=
.seq NamedBody343_17 NamedBody343_18

def NamedBody343_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody343_19 NamedBody343_20

def NamedBody343_22 : StackLang.HolProg 64 :=
.seq NamedBody343_16 NamedBody343_21

def NamedBody343_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody343_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody343_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 3

def NamedBody343_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody343_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody343_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody343_32 : StackLang.HolProg 64 :=
.seq NamedBody343_30 NamedBody343_31

def NamedBody343_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody343_34 : StackLang.HolProg 64 :=
.seq NamedBody343_32 NamedBody343_33

def NamedBody343_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_36 : StackLang.HolProg 64 :=
.seq NamedBody343_34 NamedBody343_35

def NamedBody343_37 : StackLang.HolProg 64 :=
.seq NamedBody343_29 NamedBody343_36

def NamedBody343_38 : StackLang.HolProg 64 :=
.seq NamedBody343_28 NamedBody343_37

def NamedBody343_39 : StackLang.HolProg 64 :=
.seq NamedBody343_27 NamedBody343_38

def NamedBody343_40 : StackLang.HolProg 64 :=
.seq NamedBody343_26 NamedBody343_39

def NamedBody343_41 : StackLang.HolProg 64 :=
.seq NamedBody343_25 NamedBody343_40

def NamedBody343_42 : StackLang.HolProg 64 :=
.seq NamedBody343_24 NamedBody343_41

def NamedBody343_43 : StackLang.HolProg 64 :=
.seq NamedBody343_23 NamedBody343_42

def NamedBody343_44 : StackLang.HolProg 64 :=
.seq NamedBody343_22 NamedBody343_43

def NamedBody343_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody343_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody343_52 : StackLang.HolProg 64 :=
.seq NamedBody343_50 NamedBody343_51

def NamedBody343_53 : StackLang.HolProg 64 :=
.seq NamedBody343_49 NamedBody343_52

def NamedBody343_54 : StackLang.HolProg 64 :=
.seq NamedBody343_48 NamedBody343_53

def NamedBody343_55 : StackLang.HolProg 64 :=
.seq NamedBody343_47 NamedBody343_54

def NamedBody343_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody343_58 : StackLang.HolProg 64 :=
.seq NamedBody343_56 NamedBody343_57

def NamedBody343_59 : StackLang.HolProg 64 :=
.call (some (NamedBody343_55, 1, 343, 2)) (Sum.inl 169) (some (NamedBody343_58, 343, 3))

def NamedBody343_60 : StackLang.HolProg 64 :=
.seq NamedBody343_46 NamedBody343_59

def NamedBody343_61 : StackLang.HolProg 64 :=
.seq NamedBody343_45 NamedBody343_60

def NamedBody343_62 : StackLang.HolProg 64 :=
.seq NamedBody343_44 NamedBody343_61

def NamedBody343_63 : StackLang.HolProg 64 :=
.seq NamedBody343_15 NamedBody343_62

def NamedBody343_64 : StackLang.HolProg 64 :=
.seq NamedBody343_12 NamedBody343_63

def NamedBody343_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody343_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody343_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody343_70 : StackLang.HolProg 64 :=
.seq NamedBody343_68 NamedBody343_69

def NamedBody343_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 987#64)

def NamedBody343_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody343_74 : StackLang.HolProg 64 :=
.seq NamedBody343_72 NamedBody343_73

def NamedBody343_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody343_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody343_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody343_78 : StackLang.HolProg 64 :=
.seq NamedBody343_76 NamedBody343_77

def NamedBody343_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody343_78 NamedBody343_79

def NamedBody343_81 : StackLang.HolProg 64 :=
.seq NamedBody343_75 NamedBody343_80

def NamedBody343_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody343_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody343_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 5

def NamedBody343_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody343_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody343_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody343_91 : StackLang.HolProg 64 :=
.seq NamedBody343_89 NamedBody343_90

def NamedBody343_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody343_93 : StackLang.HolProg 64 :=
.seq NamedBody343_91 NamedBody343_92

def NamedBody343_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_95 : StackLang.HolProg 64 :=
.seq NamedBody343_93 NamedBody343_94

def NamedBody343_96 : StackLang.HolProg 64 :=
.seq NamedBody343_88 NamedBody343_95

def NamedBody343_97 : StackLang.HolProg 64 :=
.seq NamedBody343_87 NamedBody343_96

def NamedBody343_98 : StackLang.HolProg 64 :=
.seq NamedBody343_86 NamedBody343_97

def NamedBody343_99 : StackLang.HolProg 64 :=
.seq NamedBody343_85 NamedBody343_98

def NamedBody343_100 : StackLang.HolProg 64 :=
.seq NamedBody343_84 NamedBody343_99

def NamedBody343_101 : StackLang.HolProg 64 :=
.seq NamedBody343_83 NamedBody343_100

def NamedBody343_102 : StackLang.HolProg 64 :=
.seq NamedBody343_82 NamedBody343_101

def NamedBody343_103 : StackLang.HolProg 64 :=
.seq NamedBody343_81 NamedBody343_102

def NamedBody343_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody343_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody343_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody343_113 : StackLang.HolProg 64 :=
.seq NamedBody343_111 NamedBody343_112

def NamedBody343_114 : StackLang.HolProg 64 :=
.seq NamedBody343_110 NamedBody343_113

def NamedBody343_115 : StackLang.HolProg 64 :=
.seq NamedBody343_109 NamedBody343_114

def NamedBody343_116 : StackLang.HolProg 64 :=
.seq NamedBody343_108 NamedBody343_115

def NamedBody343_117 : StackLang.HolProg 64 :=
.seq NamedBody343_107 NamedBody343_116

def NamedBody343_118 : StackLang.HolProg 64 :=
.seq NamedBody343_106 NamedBody343_117

def NamedBody343_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody343_121 : StackLang.HolProg 64 :=
.seq NamedBody343_119 NamedBody343_120

def NamedBody343_122 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody343_123 : StackLang.HolProg 64 :=
.seq NamedBody343_121 NamedBody343_122

def NamedBody343_124 : StackLang.HolProg 64 :=
.call (some (NamedBody343_118, 1, 343, 4)) (Sum.inl 68) (some (NamedBody343_123, 343, 5))

def NamedBody343_125 : StackLang.HolProg 64 :=
.seq NamedBody343_105 NamedBody343_124

def NamedBody343_126 : StackLang.HolProg 64 :=
.seq NamedBody343_104 NamedBody343_125

def NamedBody343_127 : StackLang.HolProg 64 :=
.seq NamedBody343_103 NamedBody343_126

def NamedBody343_128 : StackLang.HolProg 64 :=
.seq NamedBody343_74 NamedBody343_127

def NamedBody343_129 : StackLang.HolProg 64 :=
.seq NamedBody343_71 NamedBody343_128

def NamedBody343_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody343_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody343_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody343_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody343_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody343_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody343_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody343_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_140 : StackLang.HolProg 64 :=
.seq NamedBody343_138 NamedBody343_139

def NamedBody343_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody343_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody343_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody343_144 : StackLang.HolProg 64 :=
.seq NamedBody343_142 NamedBody343_143

def NamedBody343_145 : StackLang.HolProg 64 :=
.seq NamedBody343_141 NamedBody343_144

def NamedBody343_146 : StackLang.HolProg 64 :=
.seq NamedBody343_140 NamedBody343_145

def NamedBody343_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 988#64)

def NamedBody343_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody343_150 : StackLang.HolProg 64 :=
.seq NamedBody343_148 NamedBody343_149

def NamedBody343_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody343_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody343_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody343_154 : StackLang.HolProg 64 :=
.seq NamedBody343_152 NamedBody343_153

def NamedBody343_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_156 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody343_154 NamedBody343_155

def NamedBody343_157 : StackLang.HolProg 64 :=
.seq NamedBody343_151 NamedBody343_156

def NamedBody343_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody343_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody343_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 7

def NamedBody343_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody343_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody343_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody343_167 : StackLang.HolProg 64 :=
.seq NamedBody343_165 NamedBody343_166

def NamedBody343_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody343_169 : StackLang.HolProg 64 :=
.seq NamedBody343_167 NamedBody343_168

def NamedBody343_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_171 : StackLang.HolProg 64 :=
.seq NamedBody343_169 NamedBody343_170

def NamedBody343_172 : StackLang.HolProg 64 :=
.seq NamedBody343_164 NamedBody343_171

def NamedBody343_173 : StackLang.HolProg 64 :=
.seq NamedBody343_163 NamedBody343_172

def NamedBody343_174 : StackLang.HolProg 64 :=
.seq NamedBody343_162 NamedBody343_173

def NamedBody343_175 : StackLang.HolProg 64 :=
.seq NamedBody343_161 NamedBody343_174

def NamedBody343_176 : StackLang.HolProg 64 :=
.seq NamedBody343_160 NamedBody343_175

def NamedBody343_177 : StackLang.HolProg 64 :=
.seq NamedBody343_159 NamedBody343_176

def NamedBody343_178 : StackLang.HolProg 64 :=
.seq NamedBody343_158 NamedBody343_177

def NamedBody343_179 : StackLang.HolProg 64 :=
.seq NamedBody343_157 NamedBody343_178

def NamedBody343_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody343_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody343_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody343_189 : StackLang.HolProg 64 :=
.seq NamedBody343_187 NamedBody343_188

def NamedBody343_190 : StackLang.HolProg 64 :=
.seq NamedBody343_186 NamedBody343_189

def NamedBody343_191 : StackLang.HolProg 64 :=
.seq NamedBody343_185 NamedBody343_190

def NamedBody343_192 : StackLang.HolProg 64 :=
.seq NamedBody343_184 NamedBody343_191

def NamedBody343_193 : StackLang.HolProg 64 :=
.seq NamedBody343_183 NamedBody343_192

def NamedBody343_194 : StackLang.HolProg 64 :=
.seq NamedBody343_182 NamedBody343_193

def NamedBody343_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody343_197 : StackLang.HolProg 64 :=
.seq NamedBody343_195 NamedBody343_196

def NamedBody343_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody343_199 : StackLang.HolProg 64 :=
.seq NamedBody343_197 NamedBody343_198

def NamedBody343_200 : StackLang.HolProg 64 :=
.call (some (NamedBody343_194, 1, 343, 6)) (Sum.inl 339) (some (NamedBody343_199, 343, 7))

def NamedBody343_201 : StackLang.HolProg 64 :=
.seq NamedBody343_181 NamedBody343_200

def NamedBody343_202 : StackLang.HolProg 64 :=
.seq NamedBody343_180 NamedBody343_201

def NamedBody343_203 : StackLang.HolProg 64 :=
.seq NamedBody343_179 NamedBody343_202

def NamedBody343_204 : StackLang.HolProg 64 :=
.seq NamedBody343_150 NamedBody343_203

def NamedBody343_205 : StackLang.HolProg 64 :=
.seq NamedBody343_147 NamedBody343_204

def NamedBody343_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody343_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody343_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody343_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody343_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody343_215 : StackLang.HolProg 64 :=
.seq NamedBody343_213 NamedBody343_214

def NamedBody343_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 989#64)

def NamedBody343_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody343_219 : StackLang.HolProg 64 :=
.seq NamedBody343_217 NamedBody343_218

def NamedBody343_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody343_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody343_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody343_223 : StackLang.HolProg 64 :=
.seq NamedBody343_221 NamedBody343_222

def NamedBody343_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_225 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody343_223 NamedBody343_224

def NamedBody343_226 : StackLang.HolProg 64 :=
.seq NamedBody343_220 NamedBody343_225

def NamedBody343_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody343_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody343_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 9

def NamedBody343_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody343_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody343_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody343_236 : StackLang.HolProg 64 :=
.seq NamedBody343_234 NamedBody343_235

def NamedBody343_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody343_238 : StackLang.HolProg 64 :=
.seq NamedBody343_236 NamedBody343_237

def NamedBody343_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_240 : StackLang.HolProg 64 :=
.seq NamedBody343_238 NamedBody343_239

def NamedBody343_241 : StackLang.HolProg 64 :=
.seq NamedBody343_233 NamedBody343_240

def NamedBody343_242 : StackLang.HolProg 64 :=
.seq NamedBody343_232 NamedBody343_241

def NamedBody343_243 : StackLang.HolProg 64 :=
.seq NamedBody343_231 NamedBody343_242

def NamedBody343_244 : StackLang.HolProg 64 :=
.seq NamedBody343_230 NamedBody343_243

def NamedBody343_245 : StackLang.HolProg 64 :=
.seq NamedBody343_229 NamedBody343_244

def NamedBody343_246 : StackLang.HolProg 64 :=
.seq NamedBody343_228 NamedBody343_245

def NamedBody343_247 : StackLang.HolProg 64 :=
.seq NamedBody343_227 NamedBody343_246

def NamedBody343_248 : StackLang.HolProg 64 :=
.seq NamedBody343_226 NamedBody343_247

def NamedBody343_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody343_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody343_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody343_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody343_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody343_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody343_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody343_262 : StackLang.HolProg 64 :=
.seq NamedBody343_260 NamedBody343_261

def NamedBody343_263 : StackLang.HolProg 64 :=
.seq NamedBody343_259 NamedBody343_262

def NamedBody343_264 : StackLang.HolProg 64 :=
.seq NamedBody343_258 NamedBody343_263

def NamedBody343_265 : StackLang.HolProg 64 :=
.seq NamedBody343_257 NamedBody343_264

def NamedBody343_266 : StackLang.HolProg 64 :=
.seq NamedBody343_256 NamedBody343_265

def NamedBody343_267 : StackLang.HolProg 64 :=
.seq NamedBody343_255 NamedBody343_266

def NamedBody343_268 : StackLang.HolProg 64 :=
.seq NamedBody343_254 NamedBody343_267

def NamedBody343_269 : StackLang.HolProg 64 :=
.seq NamedBody343_253 NamedBody343_268

def NamedBody343_270 : StackLang.HolProg 64 :=
.seq NamedBody343_252 NamedBody343_269

def NamedBody343_271 : StackLang.HolProg 64 :=
.seq NamedBody343_251 NamedBody343_270

def NamedBody343_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody343_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody343_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody343_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody343_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody343_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody343_279 : StackLang.HolProg 64 :=
.seq NamedBody343_277 NamedBody343_278

def NamedBody343_280 : StackLang.HolProg 64 :=
.seq NamedBody343_276 NamedBody343_279

def NamedBody343_281 : StackLang.HolProg 64 :=
.seq NamedBody343_275 NamedBody343_280

def NamedBody343_282 : StackLang.HolProg 64 :=
.seq NamedBody343_274 NamedBody343_281

def NamedBody343_283 : StackLang.HolProg 64 :=
.seq NamedBody343_273 NamedBody343_282

def NamedBody343_284 : StackLang.HolProg 64 :=
.seq NamedBody343_272 NamedBody343_283

def NamedBody343_285 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody343_286 : StackLang.HolProg 64 :=
.seq NamedBody343_284 NamedBody343_285

def NamedBody343_287 : StackLang.HolProg 64 :=
.call (some (NamedBody343_271, 1, 343, 8)) (Sum.inl 77) (some (NamedBody343_286, 343, 9))

def NamedBody343_288 : StackLang.HolProg 64 :=
.seq NamedBody343_250 NamedBody343_287

def NamedBody343_289 : StackLang.HolProg 64 :=
.seq NamedBody343_249 NamedBody343_288

def NamedBody343_290 : StackLang.HolProg 64 :=
.seq NamedBody343_248 NamedBody343_289

def NamedBody343_291 : StackLang.HolProg 64 :=
.seq NamedBody343_219 NamedBody343_290

def NamedBody343_292 : StackLang.HolProg 64 :=
.seq NamedBody343_216 NamedBody343_291

def NamedBody343_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody343_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody343_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody343_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody343_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody343_300 : StackLang.HolProg 64 :=
.seq NamedBody343_298 NamedBody343_299

def NamedBody343_301 : StackLang.HolProg 64 :=
.seq NamedBody343_297 NamedBody343_300

def NamedBody343_302 : StackLang.HolProg 64 :=
.seq NamedBody343_296 NamedBody343_301

def NamedBody343_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody343_304 : StackLang.HolProg 64 :=
.seq NamedBody343_302 NamedBody343_303

def NamedBody343_305 : StackLang.HolProg 64 :=
.seq NamedBody343_295 NamedBody343_304

def NamedBody343_306 : StackLang.HolProg 64 :=
.seq NamedBody343_294 NamedBody343_305

def NamedBody343_307 : StackLang.HolProg 64 :=
.seq NamedBody343_293 NamedBody343_306

def NamedBody343_308 : StackLang.HolProg 64 :=
.seq NamedBody343_292 NamedBody343_307

def NamedBody343_309 : StackLang.HolProg 64 :=
.seq NamedBody343_215 NamedBody343_308

def NamedBody343_310 : StackLang.HolProg 64 :=
.seq NamedBody343_212 NamedBody343_309

def NamedBody343_311 : StackLang.HolProg 64 :=
.seq NamedBody343_211 NamedBody343_310

def NamedBody343_312 : StackLang.HolProg 64 :=
.seq NamedBody343_210 NamedBody343_311

def NamedBody343_313 : StackLang.HolProg 64 :=
.seq NamedBody343_209 NamedBody343_312

def NamedBody343_314 : StackLang.HolProg 64 :=
.seq NamedBody343_208 NamedBody343_313

def NamedBody343_315 : StackLang.HolProg 64 :=
.seq NamedBody343_207 NamedBody343_314

def NamedBody343_316 : StackLang.HolProg 64 :=
.seq NamedBody343_206 NamedBody343_315

def NamedBody343_317 : StackLang.HolProg 64 :=
.seq NamedBody343_205 NamedBody343_316

def NamedBody343_318 : StackLang.HolProg 64 :=
.seq NamedBody343_146 NamedBody343_317

def NamedBody343_319 : StackLang.HolProg 64 :=
.seq NamedBody343_137 NamedBody343_318

def NamedBody343_320 : StackLang.HolProg 64 :=
.seq NamedBody343_136 NamedBody343_319

def NamedBody343_321 : StackLang.HolProg 64 :=
.seq NamedBody343_135 NamedBody343_320

def NamedBody343_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody343_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody343_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody343_325 : StackLang.HolProg 64 :=
.seq NamedBody343_323 NamedBody343_324

def NamedBody343_326 : StackLang.HolProg 64 :=
.seq NamedBody343_322 NamedBody343_325

def NamedBody343_327 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody343_321 NamedBody343_326

def NamedBody343_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody343_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody343_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody343_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody343_333 : StackLang.HolProg 64 :=
.seq NamedBody343_331 NamedBody343_332

def NamedBody343_334 : StackLang.HolProg 64 :=
.seq NamedBody343_330 NamedBody343_333

def NamedBody343_335 : StackLang.HolProg 64 :=
.seq NamedBody343_329 NamedBody343_334

def NamedBody343_336 : StackLang.HolProg 64 :=
.seq NamedBody343_328 NamedBody343_335

def NamedBody343_337 : StackLang.HolProg 64 :=
.seq NamedBody343_327 NamedBody343_336

def NamedBody343_338 : StackLang.HolProg 64 :=
.seq NamedBody343_134 NamedBody343_337

def NamedBody343_339 : StackLang.HolProg 64 :=
.loop NamedBody343_338

def NamedBody343_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody343_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody343_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody343_343 : StackLang.HolProg 64 :=
.seq NamedBody343_341 NamedBody343_342

def NamedBody343_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody343_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody343_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody343_347 : StackLang.HolProg 64 :=
.seq NamedBody343_345 NamedBody343_346

def NamedBody343_348 : StackLang.HolProg 64 :=
.seq NamedBody343_344 NamedBody343_347

def NamedBody343_349 : StackLang.HolProg 64 :=
.seq NamedBody343_343 NamedBody343_348

def NamedBody343_350 : StackLang.HolProg 64 :=
.seq NamedBody343_340 NamedBody343_349

def NamedBody343_351 : StackLang.HolProg 64 :=
.seq NamedBody343_339 NamedBody343_350

def NamedBody343_352 : StackLang.HolProg 64 :=
.seq NamedBody343_133 NamedBody343_351

def NamedBody343_353 : StackLang.HolProg 64 :=
.seq NamedBody343_132 NamedBody343_352

def NamedBody343_354 : StackLang.HolProg 64 :=
.seq NamedBody343_131 NamedBody343_353

def NamedBody343_355 : StackLang.HolProg 64 :=
.seq NamedBody343_130 NamedBody343_354

def NamedBody343_356 : StackLang.HolProg 64 :=
.seq NamedBody343_129 NamedBody343_355

def NamedBody343_357 : StackLang.HolProg 64 :=
.seq NamedBody343_70 NamedBody343_356

def NamedBody343_358 : StackLang.HolProg 64 :=
.seq NamedBody343_67 NamedBody343_357

def NamedBody343_359 : StackLang.HolProg 64 :=
.seq NamedBody343_66 NamedBody343_358

def NamedBody343_360 : StackLang.HolProg 64 :=
.seq NamedBody343_65 NamedBody343_359

def NamedBody343_361 : StackLang.HolProg 64 :=
.seq NamedBody343_64 NamedBody343_360

def NamedBody343_362 : StackLang.HolProg 64 :=
.seq NamedBody343_11 NamedBody343_361

def NamedBody343_363 : StackLang.HolProg 64 :=
.seq NamedBody343_6 NamedBody343_362

def Named343 : Nat × StackLang.HolProg 64 := (343, NamedBody343_363)
theorem Named343_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed343 = Named343 := by
  kernel_rfl
#print axioms Named343_eq
end InitECandidate.Proofs.BackendStages
