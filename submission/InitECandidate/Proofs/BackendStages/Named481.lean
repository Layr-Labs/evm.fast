import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed481
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody481_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody481_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody481_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody481_3 : StackLang.HolProg 64 :=
.seq NamedBody481_1 NamedBody481_2

def NamedBody481_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody481_3 NamedBody481_4

def NamedBody481_6 : StackLang.HolProg 64 :=
.seq NamedBody481_0 NamedBody481_5

def NamedBody481_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody481_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody481_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody481_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody481_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody481_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody481_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody481_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody481_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody481_16 : StackLang.HolProg 64 :=
.seq NamedBody481_14 NamedBody481_15

def NamedBody481_17 : StackLang.HolProg 64 :=
.seq NamedBody481_13 NamedBody481_16

def NamedBody481_18 : StackLang.HolProg 64 :=
.seq NamedBody481_12 NamedBody481_17

def NamedBody481_19 : StackLang.HolProg 64 :=
.seq NamedBody481_11 NamedBody481_18

def NamedBody481_20 : StackLang.HolProg 64 :=
.seq NamedBody481_10 NamedBody481_19

def NamedBody481_21 : StackLang.HolProg 64 :=
.seq NamedBody481_9 NamedBody481_20

def NamedBody481_22 : StackLang.HolProg 64 :=
.seq NamedBody481_8 NamedBody481_21

def NamedBody481_23 : StackLang.HolProg 64 :=
.seq NamedBody481_7 NamedBody481_22

def NamedBody481_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1512#64)

def NamedBody481_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody481_27 : StackLang.HolProg 64 :=
.seq NamedBody481_25 NamedBody481_26

def NamedBody481_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody481_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody481_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody481_31 : StackLang.HolProg 64 :=
.seq NamedBody481_29 NamedBody481_30

def NamedBody481_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody481_31 NamedBody481_32

def NamedBody481_34 : StackLang.HolProg 64 :=
.seq NamedBody481_28 NamedBody481_33

def NamedBody481_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody481_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody481_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 481 3

def NamedBody481_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody481_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody481_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody481_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody481_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody481_44 : StackLang.HolProg 64 :=
.seq NamedBody481_42 NamedBody481_43

def NamedBody481_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody481_46 : StackLang.HolProg 64 :=
.seq NamedBody481_44 NamedBody481_45

def NamedBody481_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody481_48 : StackLang.HolProg 64 :=
.seq NamedBody481_46 NamedBody481_47

def NamedBody481_49 : StackLang.HolProg 64 :=
.seq NamedBody481_41 NamedBody481_48

def NamedBody481_50 : StackLang.HolProg 64 :=
.seq NamedBody481_40 NamedBody481_49

def NamedBody481_51 : StackLang.HolProg 64 :=
.seq NamedBody481_39 NamedBody481_50

def NamedBody481_52 : StackLang.HolProg 64 :=
.seq NamedBody481_38 NamedBody481_51

def NamedBody481_53 : StackLang.HolProg 64 :=
.seq NamedBody481_37 NamedBody481_52

def NamedBody481_54 : StackLang.HolProg 64 :=
.seq NamedBody481_36 NamedBody481_53

def NamedBody481_55 : StackLang.HolProg 64 :=
.seq NamedBody481_35 NamedBody481_54

def NamedBody481_56 : StackLang.HolProg 64 :=
.seq NamedBody481_34 NamedBody481_55

def NamedBody481_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody481_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody481_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody481_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody481_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody481_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody481_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody481_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody481_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody481_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody481_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody481_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody481_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody481_73 : StackLang.HolProg 64 :=
.seq NamedBody481_71 NamedBody481_72

def NamedBody481_74 : StackLang.HolProg 64 :=
.seq NamedBody481_70 NamedBody481_73

def NamedBody481_75 : StackLang.HolProg 64 :=
.seq NamedBody481_69 NamedBody481_74

def NamedBody481_76 : StackLang.HolProg 64 :=
.seq NamedBody481_68 NamedBody481_75

def NamedBody481_77 : StackLang.HolProg 64 :=
.seq NamedBody481_67 NamedBody481_76

def NamedBody481_78 : StackLang.HolProg 64 :=
.seq NamedBody481_66 NamedBody481_77

def NamedBody481_79 : StackLang.HolProg 64 :=
.seq NamedBody481_65 NamedBody481_78

def NamedBody481_80 : StackLang.HolProg 64 :=
.seq NamedBody481_64 NamedBody481_79

def NamedBody481_81 : StackLang.HolProg 64 :=
.seq NamedBody481_63 NamedBody481_80

def NamedBody481_82 : StackLang.HolProg 64 :=
.seq NamedBody481_62 NamedBody481_81

def NamedBody481_83 : StackLang.HolProg 64 :=
.seq NamedBody481_61 NamedBody481_82

def NamedBody481_84 : StackLang.HolProg 64 :=
.seq NamedBody481_60 NamedBody481_83

def NamedBody481_85 : StackLang.HolProg 64 :=
.seq NamedBody481_59 NamedBody481_84

def NamedBody481_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody481_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody481_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody481_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody481_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody481_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody481_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody481_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody481_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody481_95 : StackLang.HolProg 64 :=
.seq NamedBody481_93 NamedBody481_94

def NamedBody481_96 : StackLang.HolProg 64 :=
.seq NamedBody481_92 NamedBody481_95

def NamedBody481_97 : StackLang.HolProg 64 :=
.seq NamedBody481_91 NamedBody481_96

def NamedBody481_98 : StackLang.HolProg 64 :=
.seq NamedBody481_90 NamedBody481_97

def NamedBody481_99 : StackLang.HolProg 64 :=
.seq NamedBody481_89 NamedBody481_98

def NamedBody481_100 : StackLang.HolProg 64 :=
.seq NamedBody481_88 NamedBody481_99

def NamedBody481_101 : StackLang.HolProg 64 :=
.seq NamedBody481_87 NamedBody481_100

def NamedBody481_102 : StackLang.HolProg 64 :=
.seq NamedBody481_86 NamedBody481_101

def NamedBody481_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody481_104 : StackLang.HolProg 64 :=
.seq NamedBody481_102 NamedBody481_103

def NamedBody481_105 : StackLang.HolProg 64 :=
.call (some (NamedBody481_85, 1, 481, 2)) (Sum.inl 480) (some (NamedBody481_104, 481, 3))

def NamedBody481_106 : StackLang.HolProg 64 :=
.seq NamedBody481_58 NamedBody481_105

def NamedBody481_107 : StackLang.HolProg 64 :=
.seq NamedBody481_57 NamedBody481_106

def NamedBody481_108 : StackLang.HolProg 64 :=
.seq NamedBody481_56 NamedBody481_107

def NamedBody481_109 : StackLang.HolProg 64 :=
.seq NamedBody481_27 NamedBody481_108

def NamedBody481_110 : StackLang.HolProg 64 :=
.seq NamedBody481_24 NamedBody481_109

def NamedBody481_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody481_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody481_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody481_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody481_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody481_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 27

def NamedBody481_118 : StackLang.HolProg 64 :=
.seq NamedBody481_116 NamedBody481_117

def NamedBody481_119 : StackLang.HolProg 64 :=
.seq NamedBody481_115 NamedBody481_118

def NamedBody481_120 : StackLang.HolProg 64 :=
.seq NamedBody481_114 NamedBody481_119

def NamedBody481_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody481_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody481_123 : StackLang.HolProg 64 :=
.seq NamedBody481_121 NamedBody481_122

def NamedBody481_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody481_120 NamedBody481_123

def NamedBody481_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody481_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody481_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody481_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody481_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody481_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody481_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 32#64))

def NamedBody481_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody481_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody481_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def NamedBody481_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody481_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29)))

def NamedBody481_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody481_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody481_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody481_143 : StackLang.HolProg 64 :=
.seq NamedBody481_141 NamedBody481_142

def NamedBody481_144 : StackLang.HolProg 64 :=
.seq NamedBody481_140 NamedBody481_143

def NamedBody481_145 : StackLang.HolProg 64 :=
.seq NamedBody481_139 NamedBody481_144

def NamedBody481_146 : StackLang.HolProg 64 :=
.seq NamedBody481_138 NamedBody481_145

def NamedBody481_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1513#64)

def NamedBody481_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody481_150 : StackLang.HolProg 64 :=
.seq NamedBody481_148 NamedBody481_149

def NamedBody481_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody481_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody481_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody481_154 : StackLang.HolProg 64 :=
.seq NamedBody481_152 NamedBody481_153

def NamedBody481_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_156 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody481_154 NamedBody481_155

def NamedBody481_157 : StackLang.HolProg 64 :=
.seq NamedBody481_151 NamedBody481_156

def NamedBody481_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody481_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody481_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 481 5

def NamedBody481_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody481_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody481_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody481_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody481_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody481_167 : StackLang.HolProg 64 :=
.seq NamedBody481_165 NamedBody481_166

def NamedBody481_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody481_169 : StackLang.HolProg 64 :=
.seq NamedBody481_167 NamedBody481_168

def NamedBody481_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody481_171 : StackLang.HolProg 64 :=
.seq NamedBody481_169 NamedBody481_170

def NamedBody481_172 : StackLang.HolProg 64 :=
.seq NamedBody481_164 NamedBody481_171

def NamedBody481_173 : StackLang.HolProg 64 :=
.seq NamedBody481_163 NamedBody481_172

def NamedBody481_174 : StackLang.HolProg 64 :=
.seq NamedBody481_162 NamedBody481_173

def NamedBody481_175 : StackLang.HolProg 64 :=
.seq NamedBody481_161 NamedBody481_174

def NamedBody481_176 : StackLang.HolProg 64 :=
.seq NamedBody481_160 NamedBody481_175

def NamedBody481_177 : StackLang.HolProg 64 :=
.seq NamedBody481_159 NamedBody481_176

def NamedBody481_178 : StackLang.HolProg 64 :=
.seq NamedBody481_158 NamedBody481_177

def NamedBody481_179 : StackLang.HolProg 64 :=
.seq NamedBody481_157 NamedBody481_178

def NamedBody481_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody481_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody481_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody481_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody481_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody481_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody481_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody481_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody481_191 : StackLang.HolProg 64 :=
.seq NamedBody481_189 NamedBody481_190

def NamedBody481_192 : StackLang.HolProg 64 :=
.seq NamedBody481_188 NamedBody481_191

def NamedBody481_193 : StackLang.HolProg 64 :=
.seq NamedBody481_187 NamedBody481_192

def NamedBody481_194 : StackLang.HolProg 64 :=
.seq NamedBody481_186 NamedBody481_193

def NamedBody481_195 : StackLang.HolProg 64 :=
.seq NamedBody481_185 NamedBody481_194

def NamedBody481_196 : StackLang.HolProg 64 :=
.seq NamedBody481_184 NamedBody481_195

def NamedBody481_197 : StackLang.HolProg 64 :=
.seq NamedBody481_183 NamedBody481_196

def NamedBody481_198 : StackLang.HolProg 64 :=
.seq NamedBody481_182 NamedBody481_197

def NamedBody481_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody481_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody481_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody481_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody481_203 : StackLang.HolProg 64 :=
.seq NamedBody481_201 NamedBody481_202

def NamedBody481_204 : StackLang.HolProg 64 :=
.seq NamedBody481_200 NamedBody481_203

def NamedBody481_205 : StackLang.HolProg 64 :=
.seq NamedBody481_199 NamedBody481_204

def NamedBody481_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody481_207 : StackLang.HolProg 64 :=
.seq NamedBody481_205 NamedBody481_206

def NamedBody481_208 : StackLang.HolProg 64 :=
.call (some (NamedBody481_198, 1, 481, 4)) (Sum.inl 480) (some (NamedBody481_207, 481, 5))

def NamedBody481_209 : StackLang.HolProg 64 :=
.seq NamedBody481_181 NamedBody481_208

def NamedBody481_210 : StackLang.HolProg 64 :=
.seq NamedBody481_180 NamedBody481_209

def NamedBody481_211 : StackLang.HolProg 64 :=
.seq NamedBody481_179 NamedBody481_210

def NamedBody481_212 : StackLang.HolProg 64 :=
.seq NamedBody481_150 NamedBody481_211

def NamedBody481_213 : StackLang.HolProg 64 :=
.seq NamedBody481_147 NamedBody481_212

def NamedBody481_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody481_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody481_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody481_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody481_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody481_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody481_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody481_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody481_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody481_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody481_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody481_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def NamedBody481_228 : StackLang.HolProg 64 :=
.seq NamedBody481_226 NamedBody481_227

def NamedBody481_229 : StackLang.HolProg 64 :=
.seq NamedBody481_225 NamedBody481_228

def NamedBody481_230 : StackLang.HolProg 64 :=
.seq NamedBody481_224 NamedBody481_229

def NamedBody481_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody481_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody481_233 : StackLang.HolProg 64 :=
.seq NamedBody481_231 NamedBody481_232

def NamedBody481_234 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody481_230 NamedBody481_233

def NamedBody481_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody481_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody481_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody481_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody481_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody481_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody481_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def NamedBody481_244 : StackLang.HolProg 64 :=
.seq NamedBody481_242 NamedBody481_243

def NamedBody481_245 : StackLang.HolProg 64 :=
.seq NamedBody481_241 NamedBody481_244

def NamedBody481_246 : StackLang.HolProg 64 :=
.seq NamedBody481_240 NamedBody481_245

def NamedBody481_247 : StackLang.HolProg 64 :=
.seq NamedBody481_239 NamedBody481_246

def NamedBody481_248 : StackLang.HolProg 64 :=
.seq NamedBody481_238 NamedBody481_247

def NamedBody481_249 : StackLang.HolProg 64 :=
.seq NamedBody481_237 NamedBody481_248

def NamedBody481_250 : StackLang.HolProg 64 :=
.seq NamedBody481_236 NamedBody481_249

def NamedBody481_251 : StackLang.HolProg 64 :=
.seq NamedBody481_235 NamedBody481_250

def NamedBody481_252 : StackLang.HolProg 64 :=
.seq NamedBody481_234 NamedBody481_251

def NamedBody481_253 : StackLang.HolProg 64 :=
.seq NamedBody481_223 NamedBody481_252

def NamedBody481_254 : StackLang.HolProg 64 :=
.seq NamedBody481_222 NamedBody481_253

def NamedBody481_255 : StackLang.HolProg 64 :=
.seq NamedBody481_221 NamedBody481_254

def NamedBody481_256 : StackLang.HolProg 64 :=
.seq NamedBody481_220 NamedBody481_255

def NamedBody481_257 : StackLang.HolProg 64 :=
.seq NamedBody481_219 NamedBody481_256

def NamedBody481_258 : StackLang.HolProg 64 :=
.seq NamedBody481_218 NamedBody481_257

def NamedBody481_259 : StackLang.HolProg 64 :=
.seq NamedBody481_217 NamedBody481_258

def NamedBody481_260 : StackLang.HolProg 64 :=
.seq NamedBody481_216 NamedBody481_259

def NamedBody481_261 : StackLang.HolProg 64 :=
.seq NamedBody481_215 NamedBody481_260

def NamedBody481_262 : StackLang.HolProg 64 :=
.seq NamedBody481_214 NamedBody481_261

def NamedBody481_263 : StackLang.HolProg 64 :=
.seq NamedBody481_213 NamedBody481_262

def NamedBody481_264 : StackLang.HolProg 64 :=
.seq NamedBody481_146 NamedBody481_263

def NamedBody481_265 : StackLang.HolProg 64 :=
.seq NamedBody481_137 NamedBody481_264

def NamedBody481_266 : StackLang.HolProg 64 :=
.seq NamedBody481_136 NamedBody481_265

def NamedBody481_267 : StackLang.HolProg 64 :=
.seq NamedBody481_135 NamedBody481_266

def NamedBody481_268 : StackLang.HolProg 64 :=
.seq NamedBody481_134 NamedBody481_267

def NamedBody481_269 : StackLang.HolProg 64 :=
.seq NamedBody481_133 NamedBody481_268

def NamedBody481_270 : StackLang.HolProg 64 :=
.seq NamedBody481_132 NamedBody481_269

def NamedBody481_271 : StackLang.HolProg 64 :=
.seq NamedBody481_131 NamedBody481_270

def NamedBody481_272 : StackLang.HolProg 64 :=
.seq NamedBody481_130 NamedBody481_271

def NamedBody481_273 : StackLang.HolProg 64 :=
.seq NamedBody481_129 NamedBody481_272

def NamedBody481_274 : StackLang.HolProg 64 :=
.seq NamedBody481_128 NamedBody481_273

def NamedBody481_275 : StackLang.HolProg 64 :=
.seq NamedBody481_127 NamedBody481_274

def NamedBody481_276 : StackLang.HolProg 64 :=
.seq NamedBody481_126 NamedBody481_275

def NamedBody481_277 : StackLang.HolProg 64 :=
.seq NamedBody481_125 NamedBody481_276

def NamedBody481_278 : StackLang.HolProg 64 :=
.seq NamedBody481_124 NamedBody481_277

def NamedBody481_279 : StackLang.HolProg 64 :=
.seq NamedBody481_113 NamedBody481_278

def NamedBody481_280 : StackLang.HolProg 64 :=
.seq NamedBody481_112 NamedBody481_279

def NamedBody481_281 : StackLang.HolProg 64 :=
.seq NamedBody481_111 NamedBody481_280

def NamedBody481_282 : StackLang.HolProg 64 :=
.seq NamedBody481_110 NamedBody481_281

def NamedBody481_283 : StackLang.HolProg 64 :=
.seq NamedBody481_23 NamedBody481_282

def NamedBody481_284 : StackLang.HolProg 64 :=
.seq NamedBody481_6 NamedBody481_283

def Named481 : Nat × StackLang.HolProg 64 := (481, NamedBody481_284)
theorem Named481_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed481 = Named481 := by
  kernel_rfl
#print axioms Named481_eq
end InitECandidate.Proofs.BackendStages
