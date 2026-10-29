import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed300
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody300_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody300_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody300_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody300_3 : StackLang.HolProg 64 :=
.seq NamedBody300_1 NamedBody300_2

def NamedBody300_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody300_3 NamedBody300_4

def NamedBody300_6 : StackLang.HolProg 64 :=
.seq NamedBody300_0 NamedBody300_5

def NamedBody300_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody300_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody300_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody300_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody300_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody300_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody300_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody300_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody300_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody300_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody300_20 : StackLang.HolProg 64 :=
.seq NamedBody300_18 NamedBody300_19

def NamedBody300_21 : StackLang.HolProg 64 :=
.seq NamedBody300_17 NamedBody300_20

def NamedBody300_22 : StackLang.HolProg 64 :=
.seq NamedBody300_16 NamedBody300_21

def NamedBody300_23 : StackLang.HolProg 64 :=
.seq NamedBody300_15 NamedBody300_22

def NamedBody300_24 : StackLang.HolProg 64 :=
.seq NamedBody300_14 NamedBody300_23

def NamedBody300_25 : StackLang.HolProg 64 :=
.seq NamedBody300_13 NamedBody300_24

def NamedBody300_26 : StackLang.HolProg 64 :=
.seq NamedBody300_12 NamedBody300_25

def NamedBody300_27 : StackLang.HolProg 64 :=
.seq NamedBody300_11 NamedBody300_26

def NamedBody300_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 806#64)

def NamedBody300_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_31 : StackLang.HolProg 64 :=
.seq NamedBody300_29 NamedBody300_30

def NamedBody300_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody300_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody300_35 : StackLang.HolProg 64 :=
.seq NamedBody300_33 NamedBody300_34

def NamedBody300_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody300_35 NamedBody300_36

def NamedBody300_38 : StackLang.HolProg 64 :=
.seq NamedBody300_32 NamedBody300_37

def NamedBody300_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody300_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 5

def NamedBody300_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody300_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody300_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody300_48 : StackLang.HolProg 64 :=
.seq NamedBody300_46 NamedBody300_47

def NamedBody300_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody300_50 : StackLang.HolProg 64 :=
.seq NamedBody300_48 NamedBody300_49

def NamedBody300_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_52 : StackLang.HolProg 64 :=
.seq NamedBody300_50 NamedBody300_51

def NamedBody300_53 : StackLang.HolProg 64 :=
.seq NamedBody300_45 NamedBody300_52

def NamedBody300_54 : StackLang.HolProg 64 :=
.seq NamedBody300_44 NamedBody300_53

def NamedBody300_55 : StackLang.HolProg 64 :=
.seq NamedBody300_43 NamedBody300_54

def NamedBody300_56 : StackLang.HolProg 64 :=
.seq NamedBody300_42 NamedBody300_55

def NamedBody300_57 : StackLang.HolProg 64 :=
.seq NamedBody300_41 NamedBody300_56

def NamedBody300_58 : StackLang.HolProg 64 :=
.seq NamedBody300_40 NamedBody300_57

def NamedBody300_59 : StackLang.HolProg 64 :=
.seq NamedBody300_39 NamedBody300_58

def NamedBody300_60 : StackLang.HolProg 64 :=
.seq NamedBody300_38 NamedBody300_59

def NamedBody300_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody300_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_71 : StackLang.HolProg 64 :=
.seq NamedBody300_69 NamedBody300_70

def NamedBody300_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody300_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody300_75 : StackLang.HolProg 64 :=
.seq NamedBody300_73 NamedBody300_74

def NamedBody300_76 : StackLang.HolProg 64 :=
.seq NamedBody300_72 NamedBody300_75

def NamedBody300_77 : StackLang.HolProg 64 :=
.seq NamedBody300_71 NamedBody300_76

def NamedBody300_78 : StackLang.HolProg 64 :=
.seq NamedBody300_68 NamedBody300_77

def NamedBody300_79 : StackLang.HolProg 64 :=
.seq NamedBody300_67 NamedBody300_78

def NamedBody300_80 : StackLang.HolProg 64 :=
.seq NamedBody300_66 NamedBody300_79

def NamedBody300_81 : StackLang.HolProg 64 :=
.seq NamedBody300_65 NamedBody300_80

def NamedBody300_82 : StackLang.HolProg 64 :=
.seq NamedBody300_64 NamedBody300_81

def NamedBody300_83 : StackLang.HolProg 64 :=
.seq NamedBody300_63 NamedBody300_82

def NamedBody300_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody300_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody300_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody300_87 : StackLang.HolProg 64 :=
.seq NamedBody300_85 NamedBody300_86

def NamedBody300_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody300_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody300_90 : StackLang.HolProg 64 :=
.seq NamedBody300_88 NamedBody300_89

def NamedBody300_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody300_93 : StackLang.HolProg 64 :=
.seq NamedBody300_91 NamedBody300_92

def NamedBody300_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_96 : StackLang.HolProg 64 :=
.seq NamedBody300_94 NamedBody300_95

def NamedBody300_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_98 : StackLang.HolProg 64 :=
.seq NamedBody300_96 NamedBody300_97

def NamedBody300_99 : StackLang.HolProg 64 :=
.seq NamedBody300_93 NamedBody300_98

def NamedBody300_100 : StackLang.HolProg 64 :=
.seq NamedBody300_90 NamedBody300_99

def NamedBody300_101 : StackLang.HolProg 64 :=
.seq NamedBody300_87 NamedBody300_100

def NamedBody300_102 : StackLang.HolProg 64 :=
.seq NamedBody300_84 NamedBody300_101

def NamedBody300_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_104 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody300_105 : StackLang.HolProg 64 :=
.seq NamedBody300_103 NamedBody300_104

def NamedBody300_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody300_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody300_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_110 : StackLang.HolProg 64 :=
.seq NamedBody300_108 NamedBody300_109

def NamedBody300_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody300_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody300_113 : StackLang.HolProg 64 :=
.seq NamedBody300_111 NamedBody300_112

def NamedBody300_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody300_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody300_116 : StackLang.HolProg 64 :=
.seq NamedBody300_114 NamedBody300_115

def NamedBody300_117 : StackLang.HolProg 64 :=
.seq NamedBody300_113 NamedBody300_116

def NamedBody300_118 : StackLang.HolProg 64 :=
.seq NamedBody300_110 NamedBody300_117

def NamedBody300_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 807#64)

def NamedBody300_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_122 : StackLang.HolProg 64 :=
.seq NamedBody300_120 NamedBody300_121

def NamedBody300_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody300_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody300_126 : StackLang.HolProg 64 :=
.seq NamedBody300_124 NamedBody300_125

def NamedBody300_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_128 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody300_126 NamedBody300_127

def NamedBody300_129 : StackLang.HolProg 64 :=
.seq NamedBody300_123 NamedBody300_128

def NamedBody300_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody300_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 4

def NamedBody300_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody300_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody300_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody300_139 : StackLang.HolProg 64 :=
.seq NamedBody300_137 NamedBody300_138

def NamedBody300_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody300_141 : StackLang.HolProg 64 :=
.seq NamedBody300_139 NamedBody300_140

def NamedBody300_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_143 : StackLang.HolProg 64 :=
.seq NamedBody300_141 NamedBody300_142

def NamedBody300_144 : StackLang.HolProg 64 :=
.seq NamedBody300_136 NamedBody300_143

def NamedBody300_145 : StackLang.HolProg 64 :=
.seq NamedBody300_135 NamedBody300_144

def NamedBody300_146 : StackLang.HolProg 64 :=
.seq NamedBody300_134 NamedBody300_145

def NamedBody300_147 : StackLang.HolProg 64 :=
.seq NamedBody300_133 NamedBody300_146

def NamedBody300_148 : StackLang.HolProg 64 :=
.seq NamedBody300_132 NamedBody300_147

def NamedBody300_149 : StackLang.HolProg 64 :=
.seq NamedBody300_131 NamedBody300_148

def NamedBody300_150 : StackLang.HolProg 64 :=
.seq NamedBody300_130 NamedBody300_149

def NamedBody300_151 : StackLang.HolProg 64 :=
.seq NamedBody300_129 NamedBody300_150

def NamedBody300_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody300_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody300_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody300_163 : StackLang.HolProg 64 :=
.seq NamedBody300_161 NamedBody300_162

def NamedBody300_164 : StackLang.HolProg 64 :=
.seq NamedBody300_160 NamedBody300_163

def NamedBody300_165 : StackLang.HolProg 64 :=
.seq NamedBody300_159 NamedBody300_164

def NamedBody300_166 : StackLang.HolProg 64 :=
.seq NamedBody300_158 NamedBody300_165

def NamedBody300_167 : StackLang.HolProg 64 :=
.seq NamedBody300_157 NamedBody300_166

def NamedBody300_168 : StackLang.HolProg 64 :=
.seq NamedBody300_156 NamedBody300_167

def NamedBody300_169 : StackLang.HolProg 64 :=
.seq NamedBody300_155 NamedBody300_168

def NamedBody300_170 : StackLang.HolProg 64 :=
.seq NamedBody300_154 NamedBody300_169

def NamedBody300_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody300_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody300_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody300_176 : StackLang.HolProg 64 :=
.seq NamedBody300_174 NamedBody300_175

def NamedBody300_177 : StackLang.HolProg 64 :=
.seq NamedBody300_173 NamedBody300_176

def NamedBody300_178 : StackLang.HolProg 64 :=
.seq NamedBody300_172 NamedBody300_177

def NamedBody300_179 : StackLang.HolProg 64 :=
.seq NamedBody300_171 NamedBody300_178

def NamedBody300_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody300_181 : StackLang.HolProg 64 :=
.seq NamedBody300_179 NamedBody300_180

def NamedBody300_182 : StackLang.HolProg 64 :=
.call (some (NamedBody300_170, 1, 300, 3)) (Sum.inl 286) (some (NamedBody300_181, 300, 4))

def NamedBody300_183 : StackLang.HolProg 64 :=
.seq NamedBody300_153 NamedBody300_182

def NamedBody300_184 : StackLang.HolProg 64 :=
.seq NamedBody300_152 NamedBody300_183

def NamedBody300_185 : StackLang.HolProg 64 :=
.seq NamedBody300_151 NamedBody300_184

def NamedBody300_186 : StackLang.HolProg 64 :=
.seq NamedBody300_122 NamedBody300_185

def NamedBody300_187 : StackLang.HolProg 64 :=
.seq NamedBody300_119 NamedBody300_186

def NamedBody300_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_190 : StackLang.HolProg 64 :=
.seq NamedBody300_188 NamedBody300_189

def NamedBody300_191 : StackLang.HolProg 64 :=
.seq NamedBody300_187 NamedBody300_190

def NamedBody300_192 : StackLang.HolProg 64 :=
.seq NamedBody300_118 NamedBody300_191

def NamedBody300_193 : StackLang.HolProg 64 :=
.seq NamedBody300_107 NamedBody300_192

def NamedBody300_194 : StackLang.HolProg 64 :=
.seq NamedBody300_106 NamedBody300_193

def NamedBody300_195 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) NamedBody300_105 NamedBody300_194

def NamedBody300_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_199 : StackLang.HolProg 64 :=
.seq NamedBody300_197 NamedBody300_198

def NamedBody300_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody300_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_202 : StackLang.HolProg 64 :=
.seq NamedBody300_200 NamedBody300_201

def NamedBody300_203 : StackLang.HolProg 64 :=
.seq NamedBody300_199 NamedBody300_202

def NamedBody300_204 : StackLang.HolProg 64 :=
.seq NamedBody300_196 NamedBody300_203

def NamedBody300_205 : StackLang.HolProg 64 :=
.seq NamedBody300_195 NamedBody300_204

def NamedBody300_206 : StackLang.HolProg 64 :=
.seq NamedBody300_102 NamedBody300_205

def NamedBody300_207 : StackLang.HolProg 64 :=
.call (some (NamedBody300_83, 1, 300, 2)) (Sum.inl 161) (some (NamedBody300_206, 300, 5))

def NamedBody300_208 : StackLang.HolProg 64 :=
.seq NamedBody300_62 NamedBody300_207

def NamedBody300_209 : StackLang.HolProg 64 :=
.seq NamedBody300_61 NamedBody300_208

def NamedBody300_210 : StackLang.HolProg 64 :=
.seq NamedBody300_60 NamedBody300_209

def NamedBody300_211 : StackLang.HolProg 64 :=
.seq NamedBody300_31 NamedBody300_210

def NamedBody300_212 : StackLang.HolProg 64 :=
.seq NamedBody300_28 NamedBody300_211

def NamedBody300_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody300_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody300_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody300_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody300_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody300_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody300_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody300_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody300_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def NamedBody300_227 : StackLang.HolProg 64 :=
.seq NamedBody300_225 NamedBody300_226

def NamedBody300_228 : StackLang.HolProg 64 :=
.seq NamedBody300_224 NamedBody300_227

def NamedBody300_229 : StackLang.HolProg 64 :=
.seq NamedBody300_223 NamedBody300_228

def NamedBody300_230 : StackLang.HolProg 64 :=
.seq NamedBody300_222 NamedBody300_229

def NamedBody300_231 : StackLang.HolProg 64 :=
.seq NamedBody300_221 NamedBody300_230

def NamedBody300_232 : StackLang.HolProg 64 :=
.seq NamedBody300_220 NamedBody300_231

def NamedBody300_233 : StackLang.HolProg 64 :=
.seq NamedBody300_219 NamedBody300_232

def NamedBody300_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_235 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody300_233 NamedBody300_234

def NamedBody300_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody300_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 10#64)

def NamedBody300_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody300_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 808#64)

def NamedBody300_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_246 : StackLang.HolProg 64 :=
.seq NamedBody300_244 NamedBody300_245

def NamedBody300_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody300_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody300_250 : StackLang.HolProg 64 :=
.seq NamedBody300_248 NamedBody300_249

def NamedBody300_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_252 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody300_250 NamedBody300_251

def NamedBody300_253 : StackLang.HolProg 64 :=
.seq NamedBody300_247 NamedBody300_252

def NamedBody300_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody300_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 7

def NamedBody300_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody300_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody300_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody300_263 : StackLang.HolProg 64 :=
.seq NamedBody300_261 NamedBody300_262

def NamedBody300_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody300_265 : StackLang.HolProg 64 :=
.seq NamedBody300_263 NamedBody300_264

def NamedBody300_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_267 : StackLang.HolProg 64 :=
.seq NamedBody300_265 NamedBody300_266

def NamedBody300_268 : StackLang.HolProg 64 :=
.seq NamedBody300_260 NamedBody300_267

def NamedBody300_269 : StackLang.HolProg 64 :=
.seq NamedBody300_259 NamedBody300_268

def NamedBody300_270 : StackLang.HolProg 64 :=
.seq NamedBody300_258 NamedBody300_269

def NamedBody300_271 : StackLang.HolProg 64 :=
.seq NamedBody300_257 NamedBody300_270

def NamedBody300_272 : StackLang.HolProg 64 :=
.seq NamedBody300_256 NamedBody300_271

def NamedBody300_273 : StackLang.HolProg 64 :=
.seq NamedBody300_255 NamedBody300_272

def NamedBody300_274 : StackLang.HolProg 64 :=
.seq NamedBody300_254 NamedBody300_273

def NamedBody300_275 : StackLang.HolProg 64 :=
.seq NamedBody300_253 NamedBody300_274

def NamedBody300_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_284 : StackLang.HolProg 64 :=
.seq NamedBody300_282 NamedBody300_283

def NamedBody300_285 : StackLang.HolProg 64 :=
.seq NamedBody300_281 NamedBody300_284

def NamedBody300_286 : StackLang.HolProg 64 :=
.seq NamedBody300_280 NamedBody300_285

def NamedBody300_287 : StackLang.HolProg 64 :=
.seq NamedBody300_279 NamedBody300_286

def NamedBody300_288 : StackLang.HolProg 64 :=
.seq NamedBody300_278 NamedBody300_287

def NamedBody300_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_291 : StackLang.HolProg 64 :=
.seq NamedBody300_289 NamedBody300_290

def NamedBody300_292 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody300_293 : StackLang.HolProg 64 :=
.seq NamedBody300_291 NamedBody300_292

def NamedBody300_294 : StackLang.HolProg 64 :=
.call (some (NamedBody300_288, 1, 300, 6)) (Sum.inl 286) (some (NamedBody300_293, 300, 7))

def NamedBody300_295 : StackLang.HolProg 64 :=
.seq NamedBody300_277 NamedBody300_294

def NamedBody300_296 : StackLang.HolProg 64 :=
.seq NamedBody300_276 NamedBody300_295

def NamedBody300_297 : StackLang.HolProg 64 :=
.seq NamedBody300_275 NamedBody300_296

def NamedBody300_298 : StackLang.HolProg 64 :=
.seq NamedBody300_246 NamedBody300_297

def NamedBody300_299 : StackLang.HolProg 64 :=
.seq NamedBody300_243 NamedBody300_298

def NamedBody300_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_302 : StackLang.HolProg 64 :=
.seq NamedBody300_300 NamedBody300_301

def NamedBody300_303 : StackLang.HolProg 64 :=
.seq NamedBody300_299 NamedBody300_302

def NamedBody300_304 : StackLang.HolProg 64 :=
.seq NamedBody300_242 NamedBody300_303

def NamedBody300_305 : StackLang.HolProg 64 :=
.seq NamedBody300_241 NamedBody300_304

def NamedBody300_306 : StackLang.HolProg 64 :=
.seq NamedBody300_240 NamedBody300_305

def NamedBody300_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody300_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody300_311 : StackLang.HolProg 64 :=
.seq NamedBody300_309 NamedBody300_310

def NamedBody300_312 : StackLang.HolProg 64 :=
.seq NamedBody300_308 NamedBody300_311

def NamedBody300_313 : StackLang.HolProg 64 :=
.seq NamedBody300_307 NamedBody300_312

def NamedBody300_314 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody300_306 NamedBody300_313

def NamedBody300_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody300_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_318 : StackLang.HolProg 64 :=
.seq NamedBody300_316 NamedBody300_317

def NamedBody300_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 809#64)

def NamedBody300_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_322 : StackLang.HolProg 64 :=
.seq NamedBody300_320 NamedBody300_321

def NamedBody300_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody300_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody300_326 : StackLang.HolProg 64 :=
.seq NamedBody300_324 NamedBody300_325

def NamedBody300_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_328 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody300_326 NamedBody300_327

def NamedBody300_329 : StackLang.HolProg 64 :=
.seq NamedBody300_323 NamedBody300_328

def NamedBody300_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody300_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 9

def NamedBody300_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody300_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody300_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody300_339 : StackLang.HolProg 64 :=
.seq NamedBody300_337 NamedBody300_338

def NamedBody300_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody300_341 : StackLang.HolProg 64 :=
.seq NamedBody300_339 NamedBody300_340

def NamedBody300_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_343 : StackLang.HolProg 64 :=
.seq NamedBody300_341 NamedBody300_342

def NamedBody300_344 : StackLang.HolProg 64 :=
.seq NamedBody300_336 NamedBody300_343

def NamedBody300_345 : StackLang.HolProg 64 :=
.seq NamedBody300_335 NamedBody300_344

def NamedBody300_346 : StackLang.HolProg 64 :=
.seq NamedBody300_334 NamedBody300_345

def NamedBody300_347 : StackLang.HolProg 64 :=
.seq NamedBody300_333 NamedBody300_346

def NamedBody300_348 : StackLang.HolProg 64 :=
.seq NamedBody300_332 NamedBody300_347

def NamedBody300_349 : StackLang.HolProg 64 :=
.seq NamedBody300_331 NamedBody300_348

def NamedBody300_350 : StackLang.HolProg 64 :=
.seq NamedBody300_330 NamedBody300_349

def NamedBody300_351 : StackLang.HolProg 64 :=
.seq NamedBody300_329 NamedBody300_350

def NamedBody300_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody300_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody300_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody300_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_362 : StackLang.HolProg 64 :=
.seq NamedBody300_360 NamedBody300_361

def NamedBody300_363 : StackLang.HolProg 64 :=
.seq NamedBody300_359 NamedBody300_362

def NamedBody300_364 : StackLang.HolProg 64 :=
.seq NamedBody300_358 NamedBody300_363

def NamedBody300_365 : StackLang.HolProg 64 :=
.seq NamedBody300_357 NamedBody300_364

def NamedBody300_366 : StackLang.HolProg 64 :=
.seq NamedBody300_356 NamedBody300_365

def NamedBody300_367 : StackLang.HolProg 64 :=
.seq NamedBody300_355 NamedBody300_366

def NamedBody300_368 : StackLang.HolProg 64 :=
.seq NamedBody300_354 NamedBody300_367

def NamedBody300_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody300_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody300_371 : StackLang.HolProg 64 :=
.seq NamedBody300_369 NamedBody300_370

def NamedBody300_372 : StackLang.HolProg 64 :=
.call (some (NamedBody300_368, 1, 300, 8)) (Sum.inl 294) (some (NamedBody300_371, 300, 9))

def NamedBody300_373 : StackLang.HolProg 64 :=
.seq NamedBody300_353 NamedBody300_372

def NamedBody300_374 : StackLang.HolProg 64 :=
.seq NamedBody300_352 NamedBody300_373

def NamedBody300_375 : StackLang.HolProg 64 :=
.seq NamedBody300_351 NamedBody300_374

def NamedBody300_376 : StackLang.HolProg 64 :=
.seq NamedBody300_322 NamedBody300_375

def NamedBody300_377 : StackLang.HolProg 64 :=
.seq NamedBody300_319 NamedBody300_376

def NamedBody300_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody300_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody300_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 810#64)

def NamedBody300_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_386 : StackLang.HolProg 64 :=
.seq NamedBody300_384 NamedBody300_385

def NamedBody300_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody300_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody300_390 : StackLang.HolProg 64 :=
.seq NamedBody300_388 NamedBody300_389

def NamedBody300_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_392 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody300_390 NamedBody300_391

def NamedBody300_393 : StackLang.HolProg 64 :=
.seq NamedBody300_387 NamedBody300_392

def NamedBody300_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody300_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody300_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 11

def NamedBody300_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody300_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody300_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody300_403 : StackLang.HolProg 64 :=
.seq NamedBody300_401 NamedBody300_402

def NamedBody300_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody300_405 : StackLang.HolProg 64 :=
.seq NamedBody300_403 NamedBody300_404

def NamedBody300_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_407 : StackLang.HolProg 64 :=
.seq NamedBody300_405 NamedBody300_406

def NamedBody300_408 : StackLang.HolProg 64 :=
.seq NamedBody300_400 NamedBody300_407

def NamedBody300_409 : StackLang.HolProg 64 :=
.seq NamedBody300_399 NamedBody300_408

def NamedBody300_410 : StackLang.HolProg 64 :=
.seq NamedBody300_398 NamedBody300_409

def NamedBody300_411 : StackLang.HolProg 64 :=
.seq NamedBody300_397 NamedBody300_410

def NamedBody300_412 : StackLang.HolProg 64 :=
.seq NamedBody300_396 NamedBody300_411

def NamedBody300_413 : StackLang.HolProg 64 :=
.seq NamedBody300_395 NamedBody300_412

def NamedBody300_414 : StackLang.HolProg 64 :=
.seq NamedBody300_394 NamedBody300_413

def NamedBody300_415 : StackLang.HolProg 64 :=
.seq NamedBody300_393 NamedBody300_414

def NamedBody300_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody300_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody300_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody300_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody300_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody300_424 : StackLang.HolProg 64 :=
.seq NamedBody300_422 NamedBody300_423

def NamedBody300_425 : StackLang.HolProg 64 :=
.seq NamedBody300_421 NamedBody300_424

def NamedBody300_426 : StackLang.HolProg 64 :=
.seq NamedBody300_420 NamedBody300_425

def NamedBody300_427 : StackLang.HolProg 64 :=
.seq NamedBody300_419 NamedBody300_426

def NamedBody300_428 : StackLang.HolProg 64 :=
.seq NamedBody300_418 NamedBody300_427

def NamedBody300_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody300_430 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody300_431 : StackLang.HolProg 64 :=
.seq NamedBody300_429 NamedBody300_430

def NamedBody300_432 : StackLang.HolProg 64 :=
.call (some (NamedBody300_428, 1, 300, 10)) (Sum.inl 295) (some (NamedBody300_431, 300, 11))

def NamedBody300_433 : StackLang.HolProg 64 :=
.seq NamedBody300_417 NamedBody300_432

def NamedBody300_434 : StackLang.HolProg 64 :=
.seq NamedBody300_416 NamedBody300_433

def NamedBody300_435 : StackLang.HolProg 64 :=
.seq NamedBody300_415 NamedBody300_434

def NamedBody300_436 : StackLang.HolProg 64 :=
.seq NamedBody300_386 NamedBody300_435

def NamedBody300_437 : StackLang.HolProg 64 :=
.seq NamedBody300_383 NamedBody300_436

def NamedBody300_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody300_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody300_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody300_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody300_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 28

def NamedBody300_446 : StackLang.HolProg 64 :=
.seq NamedBody300_444 NamedBody300_445

def NamedBody300_447 : StackLang.HolProg 64 :=
.seq NamedBody300_443 NamedBody300_446

def NamedBody300_448 : StackLang.HolProg 64 :=
.seq NamedBody300_442 NamedBody300_447

def NamedBody300_449 : StackLang.HolProg 64 :=
.seq NamedBody300_441 NamedBody300_448

def NamedBody300_450 : StackLang.HolProg 64 :=
.seq NamedBody300_440 NamedBody300_449

def NamedBody300_451 : StackLang.HolProg 64 :=
.seq NamedBody300_439 NamedBody300_450

def NamedBody300_452 : StackLang.HolProg 64 :=
.seq NamedBody300_438 NamedBody300_451

def NamedBody300_453 : StackLang.HolProg 64 :=
.seq NamedBody300_437 NamedBody300_452

def NamedBody300_454 : StackLang.HolProg 64 :=
.seq NamedBody300_382 NamedBody300_453

def NamedBody300_455 : StackLang.HolProg 64 :=
.seq NamedBody300_381 NamedBody300_454

def NamedBody300_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody300_457 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody300_455 NamedBody300_456

def NamedBody300_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody300_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody300_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody300_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody300_464 : StackLang.HolProg 64 :=
.seq NamedBody300_462 NamedBody300_463

def NamedBody300_465 : StackLang.HolProg 64 :=
.seq NamedBody300_461 NamedBody300_464

def NamedBody300_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody300_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 27

def NamedBody300_468 : StackLang.HolProg 64 :=
.seq NamedBody300_466 NamedBody300_467

def NamedBody300_469 : StackLang.HolProg 64 :=
.seq NamedBody300_465 NamedBody300_468

def NamedBody300_470 : StackLang.HolProg 64 :=
.seq NamedBody300_460 NamedBody300_469

def NamedBody300_471 : StackLang.HolProg 64 :=
.seq NamedBody300_459 NamedBody300_470

def NamedBody300_472 : StackLang.HolProg 64 :=
.seq NamedBody300_458 NamedBody300_471

def NamedBody300_473 : StackLang.HolProg 64 :=
.seq NamedBody300_457 NamedBody300_472

def NamedBody300_474 : StackLang.HolProg 64 :=
.seq NamedBody300_380 NamedBody300_473

def NamedBody300_475 : StackLang.HolProg 64 :=
.seq NamedBody300_379 NamedBody300_474

def NamedBody300_476 : StackLang.HolProg 64 :=
.seq NamedBody300_378 NamedBody300_475

def NamedBody300_477 : StackLang.HolProg 64 :=
.seq NamedBody300_377 NamedBody300_476

def NamedBody300_478 : StackLang.HolProg 64 :=
.seq NamedBody300_318 NamedBody300_477

def NamedBody300_479 : StackLang.HolProg 64 :=
.seq NamedBody300_315 NamedBody300_478

def NamedBody300_480 : StackLang.HolProg 64 :=
.seq NamedBody300_314 NamedBody300_479

def NamedBody300_481 : StackLang.HolProg 64 :=
.seq NamedBody300_239 NamedBody300_480

def NamedBody300_482 : StackLang.HolProg 64 :=
.seq NamedBody300_238 NamedBody300_481

def NamedBody300_483 : StackLang.HolProg 64 :=
.seq NamedBody300_237 NamedBody300_482

def NamedBody300_484 : StackLang.HolProg 64 :=
.seq NamedBody300_236 NamedBody300_483

def NamedBody300_485 : StackLang.HolProg 64 :=
.seq NamedBody300_235 NamedBody300_484

def NamedBody300_486 : StackLang.HolProg 64 :=
.seq NamedBody300_218 NamedBody300_485

def NamedBody300_487 : StackLang.HolProg 64 :=
.seq NamedBody300_217 NamedBody300_486

def NamedBody300_488 : StackLang.HolProg 64 :=
.seq NamedBody300_216 NamedBody300_487

def NamedBody300_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_490 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody300_488 NamedBody300_489

def NamedBody300_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody300_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody300_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody300_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody300_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody300_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody300_498 : StackLang.HolProg 64 :=
.seq NamedBody300_496 NamedBody300_497

def NamedBody300_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody300_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def NamedBody300_501 : StackLang.HolProg 64 :=
.seq NamedBody300_499 NamedBody300_500

def NamedBody300_502 : StackLang.HolProg 64 :=
.seq NamedBody300_498 NamedBody300_501

def NamedBody300_503 : StackLang.HolProg 64 :=
.seq NamedBody300_495 NamedBody300_502

def NamedBody300_504 : StackLang.HolProg 64 :=
.seq NamedBody300_494 NamedBody300_503

def NamedBody300_505 : StackLang.HolProg 64 :=
.seq NamedBody300_493 NamedBody300_504

def NamedBody300_506 : StackLang.HolProg 64 :=
.seq NamedBody300_492 NamedBody300_505

def NamedBody300_507 : StackLang.HolProg 64 :=
.seq NamedBody300_491 NamedBody300_506

def NamedBody300_508 : StackLang.HolProg 64 :=
.seq NamedBody300_490 NamedBody300_507

def NamedBody300_509 : StackLang.HolProg 64 :=
.seq NamedBody300_215 NamedBody300_508

def NamedBody300_510 : StackLang.HolProg 64 :=
.seq NamedBody300_214 NamedBody300_509

def NamedBody300_511 : StackLang.HolProg 64 :=
.seq NamedBody300_213 NamedBody300_510

def NamedBody300_512 : StackLang.HolProg 64 :=
.seq NamedBody300_212 NamedBody300_511

def NamedBody300_513 : StackLang.HolProg 64 :=
.seq NamedBody300_27 NamedBody300_512

def NamedBody300_514 : StackLang.HolProg 64 :=
.seq NamedBody300_10 NamedBody300_513

def NamedBody300_515 : StackLang.HolProg 64 :=
.seq NamedBody300_9 NamedBody300_514

def NamedBody300_516 : StackLang.HolProg 64 :=
.seq NamedBody300_8 NamedBody300_515

def NamedBody300_517 : StackLang.HolProg 64 :=
.seq NamedBody300_7 NamedBody300_516

def NamedBody300_518 : StackLang.HolProg 64 :=
.seq NamedBody300_6 NamedBody300_517

def Named300 : Nat × StackLang.HolProg 64 := (300, NamedBody300_518)
theorem Named300_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed300 = Named300 := by
  kernel_rfl
#print axioms Named300_eq
end InitECandidate.Proofs.BackendStages
