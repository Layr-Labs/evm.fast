import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc639
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody639_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody639_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody639_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody639_3 : StackLang.HolProg 64 :=
.seq RemovedBody639_1 RemovedBody639_2

def RemovedBody639_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody639_3 RemovedBody639_4

def RemovedBody639_6 : StackLang.HolProg 64 :=
.seq RemovedBody639_0 RemovedBody639_5

def RemovedBody639_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody639_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody639_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody639_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody639_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody639_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody639_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody639_15 : StackLang.HolProg 64 :=
.seq RemovedBody639_13 RemovedBody639_14

def RemovedBody639_16 : StackLang.HolProg 64 :=
.seq RemovedBody639_12 RemovedBody639_15

def RemovedBody639_17 : StackLang.HolProg 64 :=
.seq RemovedBody639_11 RemovedBody639_16

def RemovedBody639_18 : StackLang.HolProg 64 :=
.seq RemovedBody639_10 RemovedBody639_17

def RemovedBody639_19 : StackLang.HolProg 64 :=
.seq RemovedBody639_9 RemovedBody639_18

def RemovedBody639_20 : StackLang.HolProg 64 :=
.seq RemovedBody639_8 RemovedBody639_19

def RemovedBody639_21 : StackLang.HolProg 64 :=
.seq RemovedBody639_7 RemovedBody639_20

def RemovedBody639_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2589#64)

def RemovedBody639_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody639_25 : StackLang.HolProg 64 :=
.seq RemovedBody639_23 RemovedBody639_24

def RemovedBody639_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody639_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody639_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody639_29 : StackLang.HolProg 64 :=
.seq RemovedBody639_27 RemovedBody639_28

def RemovedBody639_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody639_29 RemovedBody639_30

def RemovedBody639_32 : StackLang.HolProg 64 :=
.seq RemovedBody639_26 RemovedBody639_31

def RemovedBody639_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody639_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody639_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 639 3

def RemovedBody639_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody639_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody639_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody639_42 : StackLang.HolProg 64 :=
.seq RemovedBody639_40 RemovedBody639_41

def RemovedBody639_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody639_44 : StackLang.HolProg 64 :=
.seq RemovedBody639_42 RemovedBody639_43

def RemovedBody639_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_46 : StackLang.HolProg 64 :=
.seq RemovedBody639_44 RemovedBody639_45

def RemovedBody639_47 : StackLang.HolProg 64 :=
.seq RemovedBody639_39 RemovedBody639_46

def RemovedBody639_48 : StackLang.HolProg 64 :=
.seq RemovedBody639_38 RemovedBody639_47

def RemovedBody639_49 : StackLang.HolProg 64 :=
.seq RemovedBody639_37 RemovedBody639_48

def RemovedBody639_50 : StackLang.HolProg 64 :=
.seq RemovedBody639_36 RemovedBody639_49

def RemovedBody639_51 : StackLang.HolProg 64 :=
.seq RemovedBody639_35 RemovedBody639_50

def RemovedBody639_52 : StackLang.HolProg 64 :=
.seq RemovedBody639_34 RemovedBody639_51

def RemovedBody639_53 : StackLang.HolProg 64 :=
.seq RemovedBody639_33 RemovedBody639_52

def RemovedBody639_54 : StackLang.HolProg 64 :=
.seq RemovedBody639_32 RemovedBody639_53

def RemovedBody639_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody639_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody639_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody639_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody639_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody639_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody639_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody639_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody639_69 : StackLang.HolProg 64 :=
.seq RemovedBody639_67 RemovedBody639_68

def RemovedBody639_70 : StackLang.HolProg 64 :=
.seq RemovedBody639_66 RemovedBody639_69

def RemovedBody639_71 : StackLang.HolProg 64 :=
.seq RemovedBody639_65 RemovedBody639_70

def RemovedBody639_72 : StackLang.HolProg 64 :=
.seq RemovedBody639_64 RemovedBody639_71

def RemovedBody639_73 : StackLang.HolProg 64 :=
.seq RemovedBody639_63 RemovedBody639_72

def RemovedBody639_74 : StackLang.HolProg 64 :=
.seq RemovedBody639_62 RemovedBody639_73

def RemovedBody639_75 : StackLang.HolProg 64 :=
.seq RemovedBody639_61 RemovedBody639_74

def RemovedBody639_76 : StackLang.HolProg 64 :=
.seq RemovedBody639_60 RemovedBody639_75

def RemovedBody639_77 : StackLang.HolProg 64 :=
.seq RemovedBody639_59 RemovedBody639_76

def RemovedBody639_78 : StackLang.HolProg 64 :=
.seq RemovedBody639_58 RemovedBody639_77

def RemovedBody639_79 : StackLang.HolProg 64 :=
.seq RemovedBody639_57 RemovedBody639_78

def RemovedBody639_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody639_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody639_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody639_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody639_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody639_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody639_87 : StackLang.HolProg 64 :=
.seq RemovedBody639_85 RemovedBody639_86

def RemovedBody639_88 : StackLang.HolProg 64 :=
.seq RemovedBody639_84 RemovedBody639_87

def RemovedBody639_89 : StackLang.HolProg 64 :=
.seq RemovedBody639_83 RemovedBody639_88

def RemovedBody639_90 : StackLang.HolProg 64 :=
.seq RemovedBody639_82 RemovedBody639_89

def RemovedBody639_91 : StackLang.HolProg 64 :=
.seq RemovedBody639_81 RemovedBody639_90

def RemovedBody639_92 : StackLang.HolProg 64 :=
.seq RemovedBody639_80 RemovedBody639_91

def RemovedBody639_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody639_94 : StackLang.HolProg 64 :=
.seq RemovedBody639_92 RemovedBody639_93

def RemovedBody639_95 : StackLang.HolProg 64 :=
.call (some (RemovedBody639_79, 0, 639, 2)) (Sum.inl 126) (some (RemovedBody639_94, 639, 3))

def RemovedBody639_96 : StackLang.HolProg 64 :=
.seq RemovedBody639_56 RemovedBody639_95

def RemovedBody639_97 : StackLang.HolProg 64 :=
.seq RemovedBody639_55 RemovedBody639_96

def RemovedBody639_98 : StackLang.HolProg 64 :=
.seq RemovedBody639_54 RemovedBody639_97

def RemovedBody639_99 : StackLang.HolProg 64 :=
.seq RemovedBody639_25 RemovedBody639_98

def RemovedBody639_100 : StackLang.HolProg 64 :=
.seq RemovedBody639_22 RemovedBody639_99

def RemovedBody639_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody639_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody639_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody639_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody639_106 : StackLang.HolProg 64 :=
.seq RemovedBody639_104 RemovedBody639_105

def RemovedBody639_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody639_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody639_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody639_110 : StackLang.HolProg 64 :=
.seq RemovedBody639_108 RemovedBody639_109

def RemovedBody639_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody639_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody639_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody639_114 : StackLang.HolProg 64 :=
.seq RemovedBody639_112 RemovedBody639_113

def RemovedBody639_115 : StackLang.HolProg 64 :=
.seq RemovedBody639_111 RemovedBody639_114

def RemovedBody639_116 : StackLang.HolProg 64 :=
.seq RemovedBody639_110 RemovedBody639_115

def RemovedBody639_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2590#64)

def RemovedBody639_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody639_120 : StackLang.HolProg 64 :=
.seq RemovedBody639_118 RemovedBody639_119

def RemovedBody639_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody639_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody639_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody639_124 : StackLang.HolProg 64 :=
.seq RemovedBody639_122 RemovedBody639_123

def RemovedBody639_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody639_124 RemovedBody639_125

def RemovedBody639_127 : StackLang.HolProg 64 :=
.seq RemovedBody639_121 RemovedBody639_126

def RemovedBody639_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody639_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody639_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 639 5

def RemovedBody639_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody639_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody639_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody639_137 : StackLang.HolProg 64 :=
.seq RemovedBody639_135 RemovedBody639_136

def RemovedBody639_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody639_139 : StackLang.HolProg 64 :=
.seq RemovedBody639_137 RemovedBody639_138

def RemovedBody639_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_141 : StackLang.HolProg 64 :=
.seq RemovedBody639_139 RemovedBody639_140

def RemovedBody639_142 : StackLang.HolProg 64 :=
.seq RemovedBody639_134 RemovedBody639_141

def RemovedBody639_143 : StackLang.HolProg 64 :=
.seq RemovedBody639_133 RemovedBody639_142

def RemovedBody639_144 : StackLang.HolProg 64 :=
.seq RemovedBody639_132 RemovedBody639_143

def RemovedBody639_145 : StackLang.HolProg 64 :=
.seq RemovedBody639_131 RemovedBody639_144

def RemovedBody639_146 : StackLang.HolProg 64 :=
.seq RemovedBody639_130 RemovedBody639_145

def RemovedBody639_147 : StackLang.HolProg 64 :=
.seq RemovedBody639_129 RemovedBody639_146

def RemovedBody639_148 : StackLang.HolProg 64 :=
.seq RemovedBody639_128 RemovedBody639_147

def RemovedBody639_149 : StackLang.HolProg 64 :=
.seq RemovedBody639_127 RemovedBody639_148

def RemovedBody639_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody639_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody639_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody639_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody639_159 : StackLang.HolProg 64 :=
.seq RemovedBody639_157 RemovedBody639_158

def RemovedBody639_160 : StackLang.HolProg 64 :=
.seq RemovedBody639_156 RemovedBody639_159

def RemovedBody639_161 : StackLang.HolProg 64 :=
.seq RemovedBody639_155 RemovedBody639_160

def RemovedBody639_162 : StackLang.HolProg 64 :=
.seq RemovedBody639_154 RemovedBody639_161

def RemovedBody639_163 : StackLang.HolProg 64 :=
.seq RemovedBody639_153 RemovedBody639_162

def RemovedBody639_164 : StackLang.HolProg 64 :=
.seq RemovedBody639_152 RemovedBody639_163

def RemovedBody639_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody639_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody639_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody639_168 : StackLang.HolProg 64 :=
.seq RemovedBody639_166 RemovedBody639_167

def RemovedBody639_169 : StackLang.HolProg 64 :=
.seq RemovedBody639_165 RemovedBody639_168

def RemovedBody639_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody639_171 : StackLang.HolProg 64 :=
.seq RemovedBody639_169 RemovedBody639_170

def RemovedBody639_172 : StackLang.HolProg 64 :=
.call (some (RemovedBody639_164, 0, 639, 4)) (Sum.inl 77) (some (RemovedBody639_171, 639, 5))

def RemovedBody639_173 : StackLang.HolProg 64 :=
.seq RemovedBody639_151 RemovedBody639_172

def RemovedBody639_174 : StackLang.HolProg 64 :=
.seq RemovedBody639_150 RemovedBody639_173

def RemovedBody639_175 : StackLang.HolProg 64 :=
.seq RemovedBody639_149 RemovedBody639_174

def RemovedBody639_176 : StackLang.HolProg 64 :=
.seq RemovedBody639_120 RemovedBody639_175

def RemovedBody639_177 : StackLang.HolProg 64 :=
.seq RemovedBody639_117 RemovedBody639_176

def RemovedBody639_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody639_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody639_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody639_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody639_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody639_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2591#64)

def RemovedBody639_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody639_190 : StackLang.HolProg 64 :=
.seq RemovedBody639_188 RemovedBody639_189

def RemovedBody639_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody639_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody639_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody639_194 : StackLang.HolProg 64 :=
.seq RemovedBody639_192 RemovedBody639_193

def RemovedBody639_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody639_194 RemovedBody639_195

def RemovedBody639_197 : StackLang.HolProg 64 :=
.seq RemovedBody639_191 RemovedBody639_196

def RemovedBody639_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody639_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody639_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 639 7

def RemovedBody639_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody639_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody639_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody639_207 : StackLang.HolProg 64 :=
.seq RemovedBody639_205 RemovedBody639_206

def RemovedBody639_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody639_209 : StackLang.HolProg 64 :=
.seq RemovedBody639_207 RemovedBody639_208

def RemovedBody639_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_211 : StackLang.HolProg 64 :=
.seq RemovedBody639_209 RemovedBody639_210

def RemovedBody639_212 : StackLang.HolProg 64 :=
.seq RemovedBody639_204 RemovedBody639_211

def RemovedBody639_213 : StackLang.HolProg 64 :=
.seq RemovedBody639_203 RemovedBody639_212

def RemovedBody639_214 : StackLang.HolProg 64 :=
.seq RemovedBody639_202 RemovedBody639_213

def RemovedBody639_215 : StackLang.HolProg 64 :=
.seq RemovedBody639_201 RemovedBody639_214

def RemovedBody639_216 : StackLang.HolProg 64 :=
.seq RemovedBody639_200 RemovedBody639_215

def RemovedBody639_217 : StackLang.HolProg 64 :=
.seq RemovedBody639_199 RemovedBody639_216

def RemovedBody639_218 : StackLang.HolProg 64 :=
.seq RemovedBody639_198 RemovedBody639_217

def RemovedBody639_219 : StackLang.HolProg 64 :=
.seq RemovedBody639_197 RemovedBody639_218

def RemovedBody639_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody639_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody639_227 : StackLang.HolProg 64 :=
.seq RemovedBody639_225 RemovedBody639_226

def RemovedBody639_228 : StackLang.HolProg 64 :=
.seq RemovedBody639_224 RemovedBody639_227

def RemovedBody639_229 : StackLang.HolProg 64 :=
.seq RemovedBody639_223 RemovedBody639_228

def RemovedBody639_230 : StackLang.HolProg 64 :=
.seq RemovedBody639_222 RemovedBody639_229

def RemovedBody639_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody639_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody639_233 : StackLang.HolProg 64 :=
.seq RemovedBody639_231 RemovedBody639_232

def RemovedBody639_234 : StackLang.HolProg 64 :=
.call (some (RemovedBody639_230, 0, 639, 6)) (Sum.inl 78) (some (RemovedBody639_233, 639, 7))

def RemovedBody639_235 : StackLang.HolProg 64 :=
.seq RemovedBody639_221 RemovedBody639_234

def RemovedBody639_236 : StackLang.HolProg 64 :=
.seq RemovedBody639_220 RemovedBody639_235

def RemovedBody639_237 : StackLang.HolProg 64 :=
.seq RemovedBody639_219 RemovedBody639_236

def RemovedBody639_238 : StackLang.HolProg 64 :=
.seq RemovedBody639_190 RemovedBody639_237

def RemovedBody639_239 : StackLang.HolProg 64 :=
.seq RemovedBody639_187 RemovedBody639_238

def RemovedBody639_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody639_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody639_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody639_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def RemovedBody639_245 : StackLang.HolProg 64 :=
.seq RemovedBody639_243 RemovedBody639_244

def RemovedBody639_246 : StackLang.HolProg 64 :=
.seq RemovedBody639_242 RemovedBody639_245

def RemovedBody639_247 : StackLang.HolProg 64 :=
.seq RemovedBody639_241 RemovedBody639_246

def RemovedBody639_248 : StackLang.HolProg 64 :=
.seq RemovedBody639_240 RemovedBody639_247

def RemovedBody639_249 : StackLang.HolProg 64 :=
.seq RemovedBody639_239 RemovedBody639_248

def RemovedBody639_250 : StackLang.HolProg 64 :=
.seq RemovedBody639_186 RemovedBody639_249

def RemovedBody639_251 : StackLang.HolProg 64 :=
.seq RemovedBody639_185 RemovedBody639_250

def RemovedBody639_252 : StackLang.HolProg 64 :=
.seq RemovedBody639_184 RemovedBody639_251

def RemovedBody639_253 : StackLang.HolProg 64 :=
.seq RemovedBody639_183 RemovedBody639_252

def RemovedBody639_254 : StackLang.HolProg 64 :=
.seq RemovedBody639_182 RemovedBody639_253

def RemovedBody639_255 : StackLang.HolProg 64 :=
.seq RemovedBody639_181 RemovedBody639_254

def RemovedBody639_256 : StackLang.HolProg 64 :=
.seq RemovedBody639_180 RemovedBody639_255

def RemovedBody639_257 : StackLang.HolProg 64 :=
.seq RemovedBody639_179 RemovedBody639_256

def RemovedBody639_258 : StackLang.HolProg 64 :=
.seq RemovedBody639_178 RemovedBody639_257

def RemovedBody639_259 : StackLang.HolProg 64 :=
.seq RemovedBody639_177 RemovedBody639_258

def RemovedBody639_260 : StackLang.HolProg 64 :=
.seq RemovedBody639_116 RemovedBody639_259

def RemovedBody639_261 : StackLang.HolProg 64 :=
.seq RemovedBody639_107 RemovedBody639_260

def RemovedBody639_262 : StackLang.HolProg 64 :=
.seq RemovedBody639_106 RemovedBody639_261

def RemovedBody639_263 : StackLang.HolProg 64 :=
.seq RemovedBody639_103 RemovedBody639_262

def RemovedBody639_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody639_263 RemovedBody639_264

def RemovedBody639_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody639_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody639_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody639_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2592#64)

def RemovedBody639_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody639_272 : StackLang.HolProg 64 :=
.seq RemovedBody639_270 RemovedBody639_271

def RemovedBody639_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody639_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody639_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody639_276 : StackLang.HolProg 64 :=
.seq RemovedBody639_274 RemovedBody639_275

def RemovedBody639_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody639_276 RemovedBody639_277

def RemovedBody639_279 : StackLang.HolProg 64 :=
.seq RemovedBody639_273 RemovedBody639_278

def RemovedBody639_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody639_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody639_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 639 9

def RemovedBody639_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody639_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody639_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody639_289 : StackLang.HolProg 64 :=
.seq RemovedBody639_287 RemovedBody639_288

def RemovedBody639_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody639_291 : StackLang.HolProg 64 :=
.seq RemovedBody639_289 RemovedBody639_290

def RemovedBody639_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_293 : StackLang.HolProg 64 :=
.seq RemovedBody639_291 RemovedBody639_292

def RemovedBody639_294 : StackLang.HolProg 64 :=
.seq RemovedBody639_286 RemovedBody639_293

def RemovedBody639_295 : StackLang.HolProg 64 :=
.seq RemovedBody639_285 RemovedBody639_294

def RemovedBody639_296 : StackLang.HolProg 64 :=
.seq RemovedBody639_284 RemovedBody639_295

def RemovedBody639_297 : StackLang.HolProg 64 :=
.seq RemovedBody639_283 RemovedBody639_296

def RemovedBody639_298 : StackLang.HolProg 64 :=
.seq RemovedBody639_282 RemovedBody639_297

def RemovedBody639_299 : StackLang.HolProg 64 :=
.seq RemovedBody639_281 RemovedBody639_298

def RemovedBody639_300 : StackLang.HolProg 64 :=
.seq RemovedBody639_280 RemovedBody639_299

def RemovedBody639_301 : StackLang.HolProg 64 :=
.seq RemovedBody639_279 RemovedBody639_300

def RemovedBody639_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody639_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody639_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody639_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody639_309 : StackLang.HolProg 64 :=
.seq RemovedBody639_307 RemovedBody639_308

def RemovedBody639_310 : StackLang.HolProg 64 :=
.seq RemovedBody639_306 RemovedBody639_309

def RemovedBody639_311 : StackLang.HolProg 64 :=
.seq RemovedBody639_305 RemovedBody639_310

def RemovedBody639_312 : StackLang.HolProg 64 :=
.seq RemovedBody639_304 RemovedBody639_311

def RemovedBody639_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody639_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody639_315 : StackLang.HolProg 64 :=
.seq RemovedBody639_313 RemovedBody639_314

def RemovedBody639_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody639_312, 0, 639, 8)) (Sum.inl 638) (some (RemovedBody639_315, 639, 9))

def RemovedBody639_317 : StackLang.HolProg 64 :=
.seq RemovedBody639_303 RemovedBody639_316

def RemovedBody639_318 : StackLang.HolProg 64 :=
.seq RemovedBody639_302 RemovedBody639_317

def RemovedBody639_319 : StackLang.HolProg 64 :=
.seq RemovedBody639_301 RemovedBody639_318

def RemovedBody639_320 : StackLang.HolProg 64 :=
.seq RemovedBody639_272 RemovedBody639_319

def RemovedBody639_321 : StackLang.HolProg 64 :=
.seq RemovedBody639_269 RemovedBody639_320

def RemovedBody639_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody639_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody639_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody639_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody639_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody639_327 : StackLang.HolProg 64 :=
.seq RemovedBody639_325 RemovedBody639_326

def RemovedBody639_328 : StackLang.HolProg 64 :=
.seq RemovedBody639_324 RemovedBody639_327

def RemovedBody639_329 : StackLang.HolProg 64 :=
.seq RemovedBody639_323 RemovedBody639_328

def RemovedBody639_330 : StackLang.HolProg 64 :=
.seq RemovedBody639_322 RemovedBody639_329

def RemovedBody639_331 : StackLang.HolProg 64 :=
.seq RemovedBody639_321 RemovedBody639_330

def RemovedBody639_332 : StackLang.HolProg 64 :=
.seq RemovedBody639_268 RemovedBody639_331

def RemovedBody639_333 : StackLang.HolProg 64 :=
.seq RemovedBody639_267 RemovedBody639_332

def RemovedBody639_334 : StackLang.HolProg 64 :=
.seq RemovedBody639_266 RemovedBody639_333

def RemovedBody639_335 : StackLang.HolProg 64 :=
.seq RemovedBody639_265 RemovedBody639_334

def RemovedBody639_336 : StackLang.HolProg 64 :=
.seq RemovedBody639_102 RemovedBody639_335

def RemovedBody639_337 : StackLang.HolProg 64 :=
.seq RemovedBody639_101 RemovedBody639_336

def RemovedBody639_338 : StackLang.HolProg 64 :=
.seq RemovedBody639_100 RemovedBody639_337

def RemovedBody639_339 : StackLang.HolProg 64 :=
.seq RemovedBody639_21 RemovedBody639_338

def RemovedBody639_340 : StackLang.HolProg 64 :=
.seq RemovedBody639_6 RemovedBody639_339

def Removed639 : Nat × StackLang.HolProg 64 := (639, RemovedBody639_340)
theorem Removed639_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc639 = Removed639 := by
  kernel_rfl
#print axioms Removed639_eq
end InitECandidate.Proofs.BackendStages
