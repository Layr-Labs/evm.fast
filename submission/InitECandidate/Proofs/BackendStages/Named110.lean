import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed110
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody110_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody110_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody110_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody110_3 : StackLang.HolProg 64 :=
.seq NamedBody110_1 NamedBody110_2

def NamedBody110_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody110_3 NamedBody110_4

def NamedBody110_6 : StackLang.HolProg 64 :=
.seq NamedBody110_0 NamedBody110_5

def NamedBody110_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody110_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody110_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody110_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody110_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody110_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody110_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody110_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody110_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody110_16 : StackLang.HolProg 64 :=
.seq NamedBody110_14 NamedBody110_15

def NamedBody110_17 : StackLang.HolProg 64 :=
.seq NamedBody110_13 NamedBody110_16

def NamedBody110_18 : StackLang.HolProg 64 :=
.seq NamedBody110_12 NamedBody110_17

def NamedBody110_19 : StackLang.HolProg 64 :=
.seq NamedBody110_11 NamedBody110_18

def NamedBody110_20 : StackLang.HolProg 64 :=
.seq NamedBody110_10 NamedBody110_19

def NamedBody110_21 : StackLang.HolProg 64 :=
.seq NamedBody110_9 NamedBody110_20

def NamedBody110_22 : StackLang.HolProg 64 :=
.seq NamedBody110_8 NamedBody110_21

def NamedBody110_23 : StackLang.HolProg 64 :=
.seq NamedBody110_7 NamedBody110_22

def NamedBody110_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 45#64)

def NamedBody110_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody110_27 : StackLang.HolProg 64 :=
.seq NamedBody110_25 NamedBody110_26

def NamedBody110_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody110_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody110_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody110_31 : StackLang.HolProg 64 :=
.seq NamedBody110_29 NamedBody110_30

def NamedBody110_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody110_31 NamedBody110_32

def NamedBody110_34 : StackLang.HolProg 64 :=
.seq NamedBody110_28 NamedBody110_33

def NamedBody110_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody110_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody110_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 110 3

def NamedBody110_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody110_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody110_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody110_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody110_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody110_44 : StackLang.HolProg 64 :=
.seq NamedBody110_42 NamedBody110_43

def NamedBody110_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody110_46 : StackLang.HolProg 64 :=
.seq NamedBody110_44 NamedBody110_45

def NamedBody110_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody110_48 : StackLang.HolProg 64 :=
.seq NamedBody110_46 NamedBody110_47

def NamedBody110_49 : StackLang.HolProg 64 :=
.seq NamedBody110_41 NamedBody110_48

def NamedBody110_50 : StackLang.HolProg 64 :=
.seq NamedBody110_40 NamedBody110_49

def NamedBody110_51 : StackLang.HolProg 64 :=
.seq NamedBody110_39 NamedBody110_50

def NamedBody110_52 : StackLang.HolProg 64 :=
.seq NamedBody110_38 NamedBody110_51

def NamedBody110_53 : StackLang.HolProg 64 :=
.seq NamedBody110_37 NamedBody110_52

def NamedBody110_54 : StackLang.HolProg 64 :=
.seq NamedBody110_36 NamedBody110_53

def NamedBody110_55 : StackLang.HolProg 64 :=
.seq NamedBody110_35 NamedBody110_54

def NamedBody110_56 : StackLang.HolProg 64 :=
.seq NamedBody110_34 NamedBody110_55

def NamedBody110_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody110_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody110_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody110_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody110_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody110_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody110_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody110_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody110_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody110_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody110_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody110_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody110_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody110_73 : StackLang.HolProg 64 :=
.seq NamedBody110_71 NamedBody110_72

def NamedBody110_74 : StackLang.HolProg 64 :=
.seq NamedBody110_70 NamedBody110_73

def NamedBody110_75 : StackLang.HolProg 64 :=
.seq NamedBody110_69 NamedBody110_74

def NamedBody110_76 : StackLang.HolProg 64 :=
.seq NamedBody110_68 NamedBody110_75

def NamedBody110_77 : StackLang.HolProg 64 :=
.seq NamedBody110_67 NamedBody110_76

def NamedBody110_78 : StackLang.HolProg 64 :=
.seq NamedBody110_66 NamedBody110_77

def NamedBody110_79 : StackLang.HolProg 64 :=
.seq NamedBody110_65 NamedBody110_78

def NamedBody110_80 : StackLang.HolProg 64 :=
.seq NamedBody110_64 NamedBody110_79

def NamedBody110_81 : StackLang.HolProg 64 :=
.seq NamedBody110_63 NamedBody110_80

def NamedBody110_82 : StackLang.HolProg 64 :=
.seq NamedBody110_62 NamedBody110_81

def NamedBody110_83 : StackLang.HolProg 64 :=
.seq NamedBody110_61 NamedBody110_82

def NamedBody110_84 : StackLang.HolProg 64 :=
.seq NamedBody110_60 NamedBody110_83

def NamedBody110_85 : StackLang.HolProg 64 :=
.seq NamedBody110_59 NamedBody110_84

def NamedBody110_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody110_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody110_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody110_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody110_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody110_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody110_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody110_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody110_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody110_95 : StackLang.HolProg 64 :=
.seq NamedBody110_93 NamedBody110_94

def NamedBody110_96 : StackLang.HolProg 64 :=
.seq NamedBody110_92 NamedBody110_95

def NamedBody110_97 : StackLang.HolProg 64 :=
.seq NamedBody110_91 NamedBody110_96

def NamedBody110_98 : StackLang.HolProg 64 :=
.seq NamedBody110_90 NamedBody110_97

def NamedBody110_99 : StackLang.HolProg 64 :=
.seq NamedBody110_89 NamedBody110_98

def NamedBody110_100 : StackLang.HolProg 64 :=
.seq NamedBody110_88 NamedBody110_99

def NamedBody110_101 : StackLang.HolProg 64 :=
.seq NamedBody110_87 NamedBody110_100

def NamedBody110_102 : StackLang.HolProg 64 :=
.seq NamedBody110_86 NamedBody110_101

def NamedBody110_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody110_104 : StackLang.HolProg 64 :=
.seq NamedBody110_102 NamedBody110_103

def NamedBody110_105 : StackLang.HolProg 64 :=
.call (some (NamedBody110_85, 1, 110, 2)) (Sum.inl 106) (some (NamedBody110_104, 110, 3))

def NamedBody110_106 : StackLang.HolProg 64 :=
.seq NamedBody110_58 NamedBody110_105

def NamedBody110_107 : StackLang.HolProg 64 :=
.seq NamedBody110_57 NamedBody110_106

def NamedBody110_108 : StackLang.HolProg 64 :=
.seq NamedBody110_56 NamedBody110_107

def NamedBody110_109 : StackLang.HolProg 64 :=
.seq NamedBody110_27 NamedBody110_108

def NamedBody110_110 : StackLang.HolProg 64 :=
.seq NamedBody110_24 NamedBody110_109

def NamedBody110_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody110_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody110_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody110_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody110_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody110_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 27

def NamedBody110_119 : StackLang.HolProg 64 :=
.seq NamedBody110_117 NamedBody110_118

def NamedBody110_120 : StackLang.HolProg 64 :=
.seq NamedBody110_116 NamedBody110_119

def NamedBody110_121 : StackLang.HolProg 64 :=
.seq NamedBody110_115 NamedBody110_120

def NamedBody110_122 : StackLang.HolProg 64 :=
.seq NamedBody110_114 NamedBody110_121

def NamedBody110_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody110_122 NamedBody110_123

def NamedBody110_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody110_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody110_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody110_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody110_129 : StackLang.HolProg 64 :=
.seq NamedBody110_127 NamedBody110_128

def NamedBody110_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 46#64)

def NamedBody110_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody110_133 : StackLang.HolProg 64 :=
.seq NamedBody110_131 NamedBody110_132

def NamedBody110_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody110_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody110_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody110_137 : StackLang.HolProg 64 :=
.seq NamedBody110_135 NamedBody110_136

def NamedBody110_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody110_137 NamedBody110_138

def NamedBody110_140 : StackLang.HolProg 64 :=
.seq NamedBody110_134 NamedBody110_139

def NamedBody110_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody110_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody110_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 110 5

def NamedBody110_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody110_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody110_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody110_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody110_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody110_150 : StackLang.HolProg 64 :=
.seq NamedBody110_148 NamedBody110_149

def NamedBody110_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody110_152 : StackLang.HolProg 64 :=
.seq NamedBody110_150 NamedBody110_151

def NamedBody110_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody110_154 : StackLang.HolProg 64 :=
.seq NamedBody110_152 NamedBody110_153

def NamedBody110_155 : StackLang.HolProg 64 :=
.seq NamedBody110_147 NamedBody110_154

def NamedBody110_156 : StackLang.HolProg 64 :=
.seq NamedBody110_146 NamedBody110_155

def NamedBody110_157 : StackLang.HolProg 64 :=
.seq NamedBody110_145 NamedBody110_156

def NamedBody110_158 : StackLang.HolProg 64 :=
.seq NamedBody110_144 NamedBody110_157

def NamedBody110_159 : StackLang.HolProg 64 :=
.seq NamedBody110_143 NamedBody110_158

def NamedBody110_160 : StackLang.HolProg 64 :=
.seq NamedBody110_142 NamedBody110_159

def NamedBody110_161 : StackLang.HolProg 64 :=
.seq NamedBody110_141 NamedBody110_160

def NamedBody110_162 : StackLang.HolProg 64 :=
.seq NamedBody110_140 NamedBody110_161

def NamedBody110_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody110_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody110_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody110_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody110_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody110_171 : StackLang.HolProg 64 :=
.seq NamedBody110_169 NamedBody110_170

def NamedBody110_172 : StackLang.HolProg 64 :=
.seq NamedBody110_168 NamedBody110_171

def NamedBody110_173 : StackLang.HolProg 64 :=
.seq NamedBody110_167 NamedBody110_172

def NamedBody110_174 : StackLang.HolProg 64 :=
.seq NamedBody110_166 NamedBody110_173

def NamedBody110_175 : StackLang.HolProg 64 :=
.seq NamedBody110_165 NamedBody110_174

def NamedBody110_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody110_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody110_178 : StackLang.HolProg 64 :=
.seq NamedBody110_176 NamedBody110_177

def NamedBody110_179 : StackLang.HolProg 64 :=
.call (some (NamedBody110_175, 1, 110, 4)) (Sum.inl 105) (some (NamedBody110_178, 110, 5))

def NamedBody110_180 : StackLang.HolProg 64 :=
.seq NamedBody110_164 NamedBody110_179

def NamedBody110_181 : StackLang.HolProg 64 :=
.seq NamedBody110_163 NamedBody110_180

def NamedBody110_182 : StackLang.HolProg 64 :=
.seq NamedBody110_162 NamedBody110_181

def NamedBody110_183 : StackLang.HolProg 64 :=
.seq NamedBody110_133 NamedBody110_182

def NamedBody110_184 : StackLang.HolProg 64 :=
.seq NamedBody110_130 NamedBody110_183

def NamedBody110_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody110_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody110_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody110_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody110_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody110_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody110_193 : StackLang.HolProg 64 :=
.seq NamedBody110_191 NamedBody110_192

def NamedBody110_194 : StackLang.HolProg 64 :=
.seq NamedBody110_190 NamedBody110_193

def NamedBody110_195 : StackLang.HolProg 64 :=
.seq NamedBody110_189 NamedBody110_194

def NamedBody110_196 : StackLang.HolProg 64 :=
.seq NamedBody110_188 NamedBody110_195

def NamedBody110_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_198 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody110_196 NamedBody110_197

def NamedBody110_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody110_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody110_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody110_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody110_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody110_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody110_205 : StackLang.HolProg 64 :=
.seq NamedBody110_203 NamedBody110_204

def NamedBody110_206 : StackLang.HolProg 64 :=
.seq NamedBody110_202 NamedBody110_205

def NamedBody110_207 : StackLang.HolProg 64 :=
.seq NamedBody110_201 NamedBody110_206

def NamedBody110_208 : StackLang.HolProg 64 :=
.seq NamedBody110_200 NamedBody110_207

def NamedBody110_209 : StackLang.HolProg 64 :=
.seq NamedBody110_199 NamedBody110_208

def NamedBody110_210 : StackLang.HolProg 64 :=
.seq NamedBody110_198 NamedBody110_209

def NamedBody110_211 : StackLang.HolProg 64 :=
.seq NamedBody110_187 NamedBody110_210

def NamedBody110_212 : StackLang.HolProg 64 :=
.seq NamedBody110_186 NamedBody110_211

def NamedBody110_213 : StackLang.HolProg 64 :=
.seq NamedBody110_185 NamedBody110_212

def NamedBody110_214 : StackLang.HolProg 64 :=
.seq NamedBody110_184 NamedBody110_213

def NamedBody110_215 : StackLang.HolProg 64 :=
.seq NamedBody110_129 NamedBody110_214

def NamedBody110_216 : StackLang.HolProg 64 :=
.seq NamedBody110_126 NamedBody110_215

def NamedBody110_217 : StackLang.HolProg 64 :=
.seq NamedBody110_125 NamedBody110_216

def NamedBody110_218 : StackLang.HolProg 64 :=
.seq NamedBody110_124 NamedBody110_217

def NamedBody110_219 : StackLang.HolProg 64 :=
.seq NamedBody110_113 NamedBody110_218

def NamedBody110_220 : StackLang.HolProg 64 :=
.seq NamedBody110_112 NamedBody110_219

def NamedBody110_221 : StackLang.HolProg 64 :=
.seq NamedBody110_111 NamedBody110_220

def NamedBody110_222 : StackLang.HolProg 64 :=
.seq NamedBody110_110 NamedBody110_221

def NamedBody110_223 : StackLang.HolProg 64 :=
.seq NamedBody110_23 NamedBody110_222

def NamedBody110_224 : StackLang.HolProg 64 :=
.seq NamedBody110_6 NamedBody110_223

def Named110 : Nat × StackLang.HolProg 64 := (110, NamedBody110_224)
theorem Named110_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed110 = Named110 := by
  kernel_rfl
#print axioms Named110_eq
end InitECandidate.Proofs.BackendStages
