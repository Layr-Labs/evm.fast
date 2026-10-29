import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed203
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody203_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody203_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody203_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody203_3 : StackLang.HolProg 64 :=
.seq NamedBody203_1 NamedBody203_2

def NamedBody203_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody203_3 NamedBody203_4

def NamedBody203_6 : StackLang.HolProg 64 :=
.seq NamedBody203_0 NamedBody203_5

def NamedBody203_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody203_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody203_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody203_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody203_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody203_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody203_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody203_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody203_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody203_16 : StackLang.HolProg 64 :=
.seq NamedBody203_14 NamedBody203_15

def NamedBody203_17 : StackLang.HolProg 64 :=
.seq NamedBody203_13 NamedBody203_16

def NamedBody203_18 : StackLang.HolProg 64 :=
.seq NamedBody203_12 NamedBody203_17

def NamedBody203_19 : StackLang.HolProg 64 :=
.seq NamedBody203_11 NamedBody203_18

def NamedBody203_20 : StackLang.HolProg 64 :=
.seq NamedBody203_10 NamedBody203_19

def NamedBody203_21 : StackLang.HolProg 64 :=
.seq NamedBody203_9 NamedBody203_20

def NamedBody203_22 : StackLang.HolProg 64 :=
.seq NamedBody203_8 NamedBody203_21

def NamedBody203_23 : StackLang.HolProg 64 :=
.seq NamedBody203_7 NamedBody203_22

def NamedBody203_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 254#64)

def NamedBody203_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody203_27 : StackLang.HolProg 64 :=
.seq NamedBody203_25 NamedBody203_26

def NamedBody203_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody203_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody203_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody203_31 : StackLang.HolProg 64 :=
.seq NamedBody203_29 NamedBody203_30

def NamedBody203_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody203_31 NamedBody203_32

def NamedBody203_34 : StackLang.HolProg 64 :=
.seq NamedBody203_28 NamedBody203_33

def NamedBody203_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody203_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody203_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 3

def NamedBody203_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody203_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody203_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody203_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody203_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody203_44 : StackLang.HolProg 64 :=
.seq NamedBody203_42 NamedBody203_43

def NamedBody203_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody203_46 : StackLang.HolProg 64 :=
.seq NamedBody203_44 NamedBody203_45

def NamedBody203_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody203_48 : StackLang.HolProg 64 :=
.seq NamedBody203_46 NamedBody203_47

def NamedBody203_49 : StackLang.HolProg 64 :=
.seq NamedBody203_41 NamedBody203_48

def NamedBody203_50 : StackLang.HolProg 64 :=
.seq NamedBody203_40 NamedBody203_49

def NamedBody203_51 : StackLang.HolProg 64 :=
.seq NamedBody203_39 NamedBody203_50

def NamedBody203_52 : StackLang.HolProg 64 :=
.seq NamedBody203_38 NamedBody203_51

def NamedBody203_53 : StackLang.HolProg 64 :=
.seq NamedBody203_37 NamedBody203_52

def NamedBody203_54 : StackLang.HolProg 64 :=
.seq NamedBody203_36 NamedBody203_53

def NamedBody203_55 : StackLang.HolProg 64 :=
.seq NamedBody203_35 NamedBody203_54

def NamedBody203_56 : StackLang.HolProg 64 :=
.seq NamedBody203_34 NamedBody203_55

def NamedBody203_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody203_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody203_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody203_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody203_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody203_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody203_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody203_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody203_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody203_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody203_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody203_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody203_72 : StackLang.HolProg 64 :=
.seq NamedBody203_70 NamedBody203_71

def NamedBody203_73 : StackLang.HolProg 64 :=
.seq NamedBody203_69 NamedBody203_72

def NamedBody203_74 : StackLang.HolProg 64 :=
.seq NamedBody203_68 NamedBody203_73

def NamedBody203_75 : StackLang.HolProg 64 :=
.seq NamedBody203_67 NamedBody203_74

def NamedBody203_76 : StackLang.HolProg 64 :=
.seq NamedBody203_66 NamedBody203_75

def NamedBody203_77 : StackLang.HolProg 64 :=
.seq NamedBody203_65 NamedBody203_76

def NamedBody203_78 : StackLang.HolProg 64 :=
.seq NamedBody203_64 NamedBody203_77

def NamedBody203_79 : StackLang.HolProg 64 :=
.seq NamedBody203_63 NamedBody203_78

def NamedBody203_80 : StackLang.HolProg 64 :=
.seq NamedBody203_62 NamedBody203_79

def NamedBody203_81 : StackLang.HolProg 64 :=
.seq NamedBody203_61 NamedBody203_80

def NamedBody203_82 : StackLang.HolProg 64 :=
.seq NamedBody203_60 NamedBody203_81

def NamedBody203_83 : StackLang.HolProg 64 :=
.seq NamedBody203_59 NamedBody203_82

def NamedBody203_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody203_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody203_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody203_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody203_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody203_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody203_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody203_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody203_92 : StackLang.HolProg 64 :=
.seq NamedBody203_90 NamedBody203_91

def NamedBody203_93 : StackLang.HolProg 64 :=
.seq NamedBody203_89 NamedBody203_92

def NamedBody203_94 : StackLang.HolProg 64 :=
.seq NamedBody203_88 NamedBody203_93

def NamedBody203_95 : StackLang.HolProg 64 :=
.seq NamedBody203_87 NamedBody203_94

def NamedBody203_96 : StackLang.HolProg 64 :=
.seq NamedBody203_86 NamedBody203_95

def NamedBody203_97 : StackLang.HolProg 64 :=
.seq NamedBody203_85 NamedBody203_96

def NamedBody203_98 : StackLang.HolProg 64 :=
.seq NamedBody203_84 NamedBody203_97

def NamedBody203_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody203_100 : StackLang.HolProg 64 :=
.seq NamedBody203_98 NamedBody203_99

def NamedBody203_101 : StackLang.HolProg 64 :=
.call (some (NamedBody203_83, 1, 203, 2)) (Sum.inl 106) (some (NamedBody203_100, 203, 3))

def NamedBody203_102 : StackLang.HolProg 64 :=
.seq NamedBody203_58 NamedBody203_101

def NamedBody203_103 : StackLang.HolProg 64 :=
.seq NamedBody203_57 NamedBody203_102

def NamedBody203_104 : StackLang.HolProg 64 :=
.seq NamedBody203_56 NamedBody203_103

def NamedBody203_105 : StackLang.HolProg 64 :=
.seq NamedBody203_27 NamedBody203_104

def NamedBody203_106 : StackLang.HolProg 64 :=
.seq NamedBody203_24 NamedBody203_105

def NamedBody203_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody203_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody203_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody203_110 : StackLang.HolProg 64 :=
.seq NamedBody203_108 NamedBody203_109

def NamedBody203_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 255#64)

def NamedBody203_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody203_114 : StackLang.HolProg 64 :=
.seq NamedBody203_112 NamedBody203_113

def NamedBody203_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody203_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody203_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody203_118 : StackLang.HolProg 64 :=
.seq NamedBody203_116 NamedBody203_117

def NamedBody203_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody203_118 NamedBody203_119

def NamedBody203_121 : StackLang.HolProg 64 :=
.seq NamedBody203_115 NamedBody203_120

def NamedBody203_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody203_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody203_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 5

def NamedBody203_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody203_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody203_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody203_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody203_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody203_131 : StackLang.HolProg 64 :=
.seq NamedBody203_129 NamedBody203_130

def NamedBody203_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody203_133 : StackLang.HolProg 64 :=
.seq NamedBody203_131 NamedBody203_132

def NamedBody203_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody203_135 : StackLang.HolProg 64 :=
.seq NamedBody203_133 NamedBody203_134

def NamedBody203_136 : StackLang.HolProg 64 :=
.seq NamedBody203_128 NamedBody203_135

def NamedBody203_137 : StackLang.HolProg 64 :=
.seq NamedBody203_127 NamedBody203_136

def NamedBody203_138 : StackLang.HolProg 64 :=
.seq NamedBody203_126 NamedBody203_137

def NamedBody203_139 : StackLang.HolProg 64 :=
.seq NamedBody203_125 NamedBody203_138

def NamedBody203_140 : StackLang.HolProg 64 :=
.seq NamedBody203_124 NamedBody203_139

def NamedBody203_141 : StackLang.HolProg 64 :=
.seq NamedBody203_123 NamedBody203_140

def NamedBody203_142 : StackLang.HolProg 64 :=
.seq NamedBody203_122 NamedBody203_141

def NamedBody203_143 : StackLang.HolProg 64 :=
.seq NamedBody203_121 NamedBody203_142

def NamedBody203_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody203_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody203_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody203_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody203_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody203_152 : StackLang.HolProg 64 :=
.seq NamedBody203_150 NamedBody203_151

def NamedBody203_153 : StackLang.HolProg 64 :=
.seq NamedBody203_149 NamedBody203_152

def NamedBody203_154 : StackLang.HolProg 64 :=
.seq NamedBody203_148 NamedBody203_153

def NamedBody203_155 : StackLang.HolProg 64 :=
.seq NamedBody203_147 NamedBody203_154

def NamedBody203_156 : StackLang.HolProg 64 :=
.seq NamedBody203_146 NamedBody203_155

def NamedBody203_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody203_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody203_159 : StackLang.HolProg 64 :=
.seq NamedBody203_157 NamedBody203_158

def NamedBody203_160 : StackLang.HolProg 64 :=
.call (some (NamedBody203_156, 1, 203, 4)) (Sum.inl 117) (some (NamedBody203_159, 203, 5))

def NamedBody203_161 : StackLang.HolProg 64 :=
.seq NamedBody203_145 NamedBody203_160

def NamedBody203_162 : StackLang.HolProg 64 :=
.seq NamedBody203_144 NamedBody203_161

def NamedBody203_163 : StackLang.HolProg 64 :=
.seq NamedBody203_143 NamedBody203_162

def NamedBody203_164 : StackLang.HolProg 64 :=
.seq NamedBody203_114 NamedBody203_163

def NamedBody203_165 : StackLang.HolProg 64 :=
.seq NamedBody203_111 NamedBody203_164

def NamedBody203_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody203_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody203_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody203_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody203_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody203_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody203_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody203_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def NamedBody203_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 256#64)

def NamedBody203_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody203_179 : StackLang.HolProg 64 :=
.seq NamedBody203_177 NamedBody203_178

def NamedBody203_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody203_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody203_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody203_183 : StackLang.HolProg 64 :=
.seq NamedBody203_181 NamedBody203_182

def NamedBody203_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_185 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody203_183 NamedBody203_184

def NamedBody203_186 : StackLang.HolProg 64 :=
.seq NamedBody203_180 NamedBody203_185

def NamedBody203_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody203_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody203_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 7

def NamedBody203_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody203_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody203_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody203_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody203_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody203_196 : StackLang.HolProg 64 :=
.seq NamedBody203_194 NamedBody203_195

def NamedBody203_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody203_198 : StackLang.HolProg 64 :=
.seq NamedBody203_196 NamedBody203_197

def NamedBody203_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody203_200 : StackLang.HolProg 64 :=
.seq NamedBody203_198 NamedBody203_199

def NamedBody203_201 : StackLang.HolProg 64 :=
.seq NamedBody203_193 NamedBody203_200

def NamedBody203_202 : StackLang.HolProg 64 :=
.seq NamedBody203_192 NamedBody203_201

def NamedBody203_203 : StackLang.HolProg 64 :=
.seq NamedBody203_191 NamedBody203_202

def NamedBody203_204 : StackLang.HolProg 64 :=
.seq NamedBody203_190 NamedBody203_203

def NamedBody203_205 : StackLang.HolProg 64 :=
.seq NamedBody203_189 NamedBody203_204

def NamedBody203_206 : StackLang.HolProg 64 :=
.seq NamedBody203_188 NamedBody203_205

def NamedBody203_207 : StackLang.HolProg 64 :=
.seq NamedBody203_187 NamedBody203_206

def NamedBody203_208 : StackLang.HolProg 64 :=
.seq NamedBody203_186 NamedBody203_207

def NamedBody203_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody203_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody203_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody203_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody203_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody203_217 : StackLang.HolProg 64 :=
.seq NamedBody203_215 NamedBody203_216

def NamedBody203_218 : StackLang.HolProg 64 :=
.seq NamedBody203_214 NamedBody203_217

def NamedBody203_219 : StackLang.HolProg 64 :=
.seq NamedBody203_213 NamedBody203_218

def NamedBody203_220 : StackLang.HolProg 64 :=
.seq NamedBody203_212 NamedBody203_219

def NamedBody203_221 : StackLang.HolProg 64 :=
.seq NamedBody203_211 NamedBody203_220

def NamedBody203_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody203_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody203_224 : StackLang.HolProg 64 :=
.seq NamedBody203_222 NamedBody203_223

def NamedBody203_225 : StackLang.HolProg 64 :=
.call (some (NamedBody203_221, 1, 203, 6)) (Sum.inl 116) (some (NamedBody203_224, 203, 7))

def NamedBody203_226 : StackLang.HolProg 64 :=
.seq NamedBody203_210 NamedBody203_225

def NamedBody203_227 : StackLang.HolProg 64 :=
.seq NamedBody203_209 NamedBody203_226

def NamedBody203_228 : StackLang.HolProg 64 :=
.seq NamedBody203_208 NamedBody203_227

def NamedBody203_229 : StackLang.HolProg 64 :=
.seq NamedBody203_179 NamedBody203_228

def NamedBody203_230 : StackLang.HolProg 64 :=
.seq NamedBody203_176 NamedBody203_229

def NamedBody203_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody203_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody203_233 : StackLang.HolProg 64 :=
.seq NamedBody203_231 NamedBody203_232

def NamedBody203_234 : StackLang.HolProg 64 :=
.seq NamedBody203_230 NamedBody203_233

def NamedBody203_235 : StackLang.HolProg 64 :=
.seq NamedBody203_175 NamedBody203_234

def NamedBody203_236 : StackLang.HolProg 64 :=
.seq NamedBody203_174 NamedBody203_235

def NamedBody203_237 : StackLang.HolProg 64 :=
.seq NamedBody203_173 NamedBody203_236

def NamedBody203_238 : StackLang.HolProg 64 :=
.seq NamedBody203_172 NamedBody203_237

def NamedBody203_239 : StackLang.HolProg 64 :=
.seq NamedBody203_171 NamedBody203_238

def NamedBody203_240 : StackLang.HolProg 64 :=
.seq NamedBody203_170 NamedBody203_239

def NamedBody203_241 : StackLang.HolProg 64 :=
.seq NamedBody203_169 NamedBody203_240

def NamedBody203_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody203_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody203_244 : StackLang.HolProg 64 :=
.seq NamedBody203_242 NamedBody203_243

def NamedBody203_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody203_241 NamedBody203_244

def NamedBody203_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody203_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody203_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody203_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody203_250 : StackLang.HolProg 64 :=
.seq NamedBody203_248 NamedBody203_249

def NamedBody203_251 : StackLang.HolProg 64 :=
.seq NamedBody203_247 NamedBody203_250

def NamedBody203_252 : StackLang.HolProg 64 :=
.seq NamedBody203_246 NamedBody203_251

def NamedBody203_253 : StackLang.HolProg 64 :=
.seq NamedBody203_245 NamedBody203_252

def NamedBody203_254 : StackLang.HolProg 64 :=
.seq NamedBody203_168 NamedBody203_253

def NamedBody203_255 : StackLang.HolProg 64 :=
.seq NamedBody203_167 NamedBody203_254

def NamedBody203_256 : StackLang.HolProg 64 :=
.seq NamedBody203_166 NamedBody203_255

def NamedBody203_257 : StackLang.HolProg 64 :=
.seq NamedBody203_165 NamedBody203_256

def NamedBody203_258 : StackLang.HolProg 64 :=
.seq NamedBody203_110 NamedBody203_257

def NamedBody203_259 : StackLang.HolProg 64 :=
.seq NamedBody203_107 NamedBody203_258

def NamedBody203_260 : StackLang.HolProg 64 :=
.seq NamedBody203_106 NamedBody203_259

def NamedBody203_261 : StackLang.HolProg 64 :=
.seq NamedBody203_23 NamedBody203_260

def NamedBody203_262 : StackLang.HolProg 64 :=
.seq NamedBody203_6 NamedBody203_261

def Named203 : Nat × StackLang.HolProg 64 := (203, NamedBody203_262)
theorem Named203_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed203 = Named203 := by
  kernel_rfl
#print axioms Named203_eq
end InitECandidate.Proofs.BackendStages
