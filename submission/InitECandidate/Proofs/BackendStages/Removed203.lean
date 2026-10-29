import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc203
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody203_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody203_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody203_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody203_3 : StackLang.HolProg 64 :=
.seq RemovedBody203_1 RemovedBody203_2

def RemovedBody203_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody203_3 RemovedBody203_4

def RemovedBody203_6 : StackLang.HolProg 64 :=
.seq RemovedBody203_0 RemovedBody203_5

def RemovedBody203_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody203_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody203_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody203_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody203_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody203_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody203_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody203_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody203_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody203_16 : StackLang.HolProg 64 :=
.seq RemovedBody203_14 RemovedBody203_15

def RemovedBody203_17 : StackLang.HolProg 64 :=
.seq RemovedBody203_13 RemovedBody203_16

def RemovedBody203_18 : StackLang.HolProg 64 :=
.seq RemovedBody203_12 RemovedBody203_17

def RemovedBody203_19 : StackLang.HolProg 64 :=
.seq RemovedBody203_11 RemovedBody203_18

def RemovedBody203_20 : StackLang.HolProg 64 :=
.seq RemovedBody203_10 RemovedBody203_19

def RemovedBody203_21 : StackLang.HolProg 64 :=
.seq RemovedBody203_9 RemovedBody203_20

def RemovedBody203_22 : StackLang.HolProg 64 :=
.seq RemovedBody203_8 RemovedBody203_21

def RemovedBody203_23 : StackLang.HolProg 64 :=
.seq RemovedBody203_7 RemovedBody203_22

def RemovedBody203_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 254#64)

def RemovedBody203_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody203_27 : StackLang.HolProg 64 :=
.seq RemovedBody203_25 RemovedBody203_26

def RemovedBody203_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody203_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody203_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody203_31 : StackLang.HolProg 64 :=
.seq RemovedBody203_29 RemovedBody203_30

def RemovedBody203_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody203_31 RemovedBody203_32

def RemovedBody203_34 : StackLang.HolProg 64 :=
.seq RemovedBody203_28 RemovedBody203_33

def RemovedBody203_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody203_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody203_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 3

def RemovedBody203_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody203_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody203_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody203_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody203_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody203_44 : StackLang.HolProg 64 :=
.seq RemovedBody203_42 RemovedBody203_43

def RemovedBody203_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody203_46 : StackLang.HolProg 64 :=
.seq RemovedBody203_44 RemovedBody203_45

def RemovedBody203_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody203_48 : StackLang.HolProg 64 :=
.seq RemovedBody203_46 RemovedBody203_47

def RemovedBody203_49 : StackLang.HolProg 64 :=
.seq RemovedBody203_41 RemovedBody203_48

def RemovedBody203_50 : StackLang.HolProg 64 :=
.seq RemovedBody203_40 RemovedBody203_49

def RemovedBody203_51 : StackLang.HolProg 64 :=
.seq RemovedBody203_39 RemovedBody203_50

def RemovedBody203_52 : StackLang.HolProg 64 :=
.seq RemovedBody203_38 RemovedBody203_51

def RemovedBody203_53 : StackLang.HolProg 64 :=
.seq RemovedBody203_37 RemovedBody203_52

def RemovedBody203_54 : StackLang.HolProg 64 :=
.seq RemovedBody203_36 RemovedBody203_53

def RemovedBody203_55 : StackLang.HolProg 64 :=
.seq RemovedBody203_35 RemovedBody203_54

def RemovedBody203_56 : StackLang.HolProg 64 :=
.seq RemovedBody203_34 RemovedBody203_55

def RemovedBody203_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody203_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody203_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody203_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody203_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody203_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody203_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody203_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody203_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody203_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody203_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody203_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody203_72 : StackLang.HolProg 64 :=
.seq RemovedBody203_70 RemovedBody203_71

def RemovedBody203_73 : StackLang.HolProg 64 :=
.seq RemovedBody203_69 RemovedBody203_72

def RemovedBody203_74 : StackLang.HolProg 64 :=
.seq RemovedBody203_68 RemovedBody203_73

def RemovedBody203_75 : StackLang.HolProg 64 :=
.seq RemovedBody203_67 RemovedBody203_74

def RemovedBody203_76 : StackLang.HolProg 64 :=
.seq RemovedBody203_66 RemovedBody203_75

def RemovedBody203_77 : StackLang.HolProg 64 :=
.seq RemovedBody203_65 RemovedBody203_76

def RemovedBody203_78 : StackLang.HolProg 64 :=
.seq RemovedBody203_64 RemovedBody203_77

def RemovedBody203_79 : StackLang.HolProg 64 :=
.seq RemovedBody203_63 RemovedBody203_78

def RemovedBody203_80 : StackLang.HolProg 64 :=
.seq RemovedBody203_62 RemovedBody203_79

def RemovedBody203_81 : StackLang.HolProg 64 :=
.seq RemovedBody203_61 RemovedBody203_80

def RemovedBody203_82 : StackLang.HolProg 64 :=
.seq RemovedBody203_60 RemovedBody203_81

def RemovedBody203_83 : StackLang.HolProg 64 :=
.seq RemovedBody203_59 RemovedBody203_82

def RemovedBody203_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody203_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody203_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody203_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody203_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody203_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody203_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody203_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody203_92 : StackLang.HolProg 64 :=
.seq RemovedBody203_90 RemovedBody203_91

def RemovedBody203_93 : StackLang.HolProg 64 :=
.seq RemovedBody203_89 RemovedBody203_92

def RemovedBody203_94 : StackLang.HolProg 64 :=
.seq RemovedBody203_88 RemovedBody203_93

def RemovedBody203_95 : StackLang.HolProg 64 :=
.seq RemovedBody203_87 RemovedBody203_94

def RemovedBody203_96 : StackLang.HolProg 64 :=
.seq RemovedBody203_86 RemovedBody203_95

def RemovedBody203_97 : StackLang.HolProg 64 :=
.seq RemovedBody203_85 RemovedBody203_96

def RemovedBody203_98 : StackLang.HolProg 64 :=
.seq RemovedBody203_84 RemovedBody203_97

def RemovedBody203_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody203_100 : StackLang.HolProg 64 :=
.seq RemovedBody203_98 RemovedBody203_99

def RemovedBody203_101 : StackLang.HolProg 64 :=
.call (some (RemovedBody203_83, 0, 203, 2)) (Sum.inl 106) (some (RemovedBody203_100, 203, 3))

def RemovedBody203_102 : StackLang.HolProg 64 :=
.seq RemovedBody203_58 RemovedBody203_101

def RemovedBody203_103 : StackLang.HolProg 64 :=
.seq RemovedBody203_57 RemovedBody203_102

def RemovedBody203_104 : StackLang.HolProg 64 :=
.seq RemovedBody203_56 RemovedBody203_103

def RemovedBody203_105 : StackLang.HolProg 64 :=
.seq RemovedBody203_27 RemovedBody203_104

def RemovedBody203_106 : StackLang.HolProg 64 :=
.seq RemovedBody203_24 RemovedBody203_105

def RemovedBody203_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody203_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody203_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody203_110 : StackLang.HolProg 64 :=
.seq RemovedBody203_108 RemovedBody203_109

def RemovedBody203_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 255#64)

def RemovedBody203_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody203_114 : StackLang.HolProg 64 :=
.seq RemovedBody203_112 RemovedBody203_113

def RemovedBody203_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody203_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody203_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody203_118 : StackLang.HolProg 64 :=
.seq RemovedBody203_116 RemovedBody203_117

def RemovedBody203_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody203_118 RemovedBody203_119

def RemovedBody203_121 : StackLang.HolProg 64 :=
.seq RemovedBody203_115 RemovedBody203_120

def RemovedBody203_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody203_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody203_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 5

def RemovedBody203_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody203_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody203_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody203_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody203_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody203_131 : StackLang.HolProg 64 :=
.seq RemovedBody203_129 RemovedBody203_130

def RemovedBody203_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody203_133 : StackLang.HolProg 64 :=
.seq RemovedBody203_131 RemovedBody203_132

def RemovedBody203_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody203_135 : StackLang.HolProg 64 :=
.seq RemovedBody203_133 RemovedBody203_134

def RemovedBody203_136 : StackLang.HolProg 64 :=
.seq RemovedBody203_128 RemovedBody203_135

def RemovedBody203_137 : StackLang.HolProg 64 :=
.seq RemovedBody203_127 RemovedBody203_136

def RemovedBody203_138 : StackLang.HolProg 64 :=
.seq RemovedBody203_126 RemovedBody203_137

def RemovedBody203_139 : StackLang.HolProg 64 :=
.seq RemovedBody203_125 RemovedBody203_138

def RemovedBody203_140 : StackLang.HolProg 64 :=
.seq RemovedBody203_124 RemovedBody203_139

def RemovedBody203_141 : StackLang.HolProg 64 :=
.seq RemovedBody203_123 RemovedBody203_140

def RemovedBody203_142 : StackLang.HolProg 64 :=
.seq RemovedBody203_122 RemovedBody203_141

def RemovedBody203_143 : StackLang.HolProg 64 :=
.seq RemovedBody203_121 RemovedBody203_142

def RemovedBody203_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody203_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody203_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody203_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody203_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody203_152 : StackLang.HolProg 64 :=
.seq RemovedBody203_150 RemovedBody203_151

def RemovedBody203_153 : StackLang.HolProg 64 :=
.seq RemovedBody203_149 RemovedBody203_152

def RemovedBody203_154 : StackLang.HolProg 64 :=
.seq RemovedBody203_148 RemovedBody203_153

def RemovedBody203_155 : StackLang.HolProg 64 :=
.seq RemovedBody203_147 RemovedBody203_154

def RemovedBody203_156 : StackLang.HolProg 64 :=
.seq RemovedBody203_146 RemovedBody203_155

def RemovedBody203_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody203_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody203_159 : StackLang.HolProg 64 :=
.seq RemovedBody203_157 RemovedBody203_158

def RemovedBody203_160 : StackLang.HolProg 64 :=
.call (some (RemovedBody203_156, 0, 203, 4)) (Sum.inl 117) (some (RemovedBody203_159, 203, 5))

def RemovedBody203_161 : StackLang.HolProg 64 :=
.seq RemovedBody203_145 RemovedBody203_160

def RemovedBody203_162 : StackLang.HolProg 64 :=
.seq RemovedBody203_144 RemovedBody203_161

def RemovedBody203_163 : StackLang.HolProg 64 :=
.seq RemovedBody203_143 RemovedBody203_162

def RemovedBody203_164 : StackLang.HolProg 64 :=
.seq RemovedBody203_114 RemovedBody203_163

def RemovedBody203_165 : StackLang.HolProg 64 :=
.seq RemovedBody203_111 RemovedBody203_164

def RemovedBody203_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody203_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody203_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody203_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody203_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody203_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody203_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody203_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def RemovedBody203_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 256#64)

def RemovedBody203_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody203_179 : StackLang.HolProg 64 :=
.seq RemovedBody203_177 RemovedBody203_178

def RemovedBody203_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody203_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody203_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody203_183 : StackLang.HolProg 64 :=
.seq RemovedBody203_181 RemovedBody203_182

def RemovedBody203_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_185 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody203_183 RemovedBody203_184

def RemovedBody203_186 : StackLang.HolProg 64 :=
.seq RemovedBody203_180 RemovedBody203_185

def RemovedBody203_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody203_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody203_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 7

def RemovedBody203_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody203_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody203_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody203_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody203_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody203_196 : StackLang.HolProg 64 :=
.seq RemovedBody203_194 RemovedBody203_195

def RemovedBody203_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody203_198 : StackLang.HolProg 64 :=
.seq RemovedBody203_196 RemovedBody203_197

def RemovedBody203_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody203_200 : StackLang.HolProg 64 :=
.seq RemovedBody203_198 RemovedBody203_199

def RemovedBody203_201 : StackLang.HolProg 64 :=
.seq RemovedBody203_193 RemovedBody203_200

def RemovedBody203_202 : StackLang.HolProg 64 :=
.seq RemovedBody203_192 RemovedBody203_201

def RemovedBody203_203 : StackLang.HolProg 64 :=
.seq RemovedBody203_191 RemovedBody203_202

def RemovedBody203_204 : StackLang.HolProg 64 :=
.seq RemovedBody203_190 RemovedBody203_203

def RemovedBody203_205 : StackLang.HolProg 64 :=
.seq RemovedBody203_189 RemovedBody203_204

def RemovedBody203_206 : StackLang.HolProg 64 :=
.seq RemovedBody203_188 RemovedBody203_205

def RemovedBody203_207 : StackLang.HolProg 64 :=
.seq RemovedBody203_187 RemovedBody203_206

def RemovedBody203_208 : StackLang.HolProg 64 :=
.seq RemovedBody203_186 RemovedBody203_207

def RemovedBody203_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody203_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody203_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody203_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody203_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody203_217 : StackLang.HolProg 64 :=
.seq RemovedBody203_215 RemovedBody203_216

def RemovedBody203_218 : StackLang.HolProg 64 :=
.seq RemovedBody203_214 RemovedBody203_217

def RemovedBody203_219 : StackLang.HolProg 64 :=
.seq RemovedBody203_213 RemovedBody203_218

def RemovedBody203_220 : StackLang.HolProg 64 :=
.seq RemovedBody203_212 RemovedBody203_219

def RemovedBody203_221 : StackLang.HolProg 64 :=
.seq RemovedBody203_211 RemovedBody203_220

def RemovedBody203_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody203_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody203_224 : StackLang.HolProg 64 :=
.seq RemovedBody203_222 RemovedBody203_223

def RemovedBody203_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody203_221, 0, 203, 6)) (Sum.inl 116) (some (RemovedBody203_224, 203, 7))

def RemovedBody203_226 : StackLang.HolProg 64 :=
.seq RemovedBody203_210 RemovedBody203_225

def RemovedBody203_227 : StackLang.HolProg 64 :=
.seq RemovedBody203_209 RemovedBody203_226

def RemovedBody203_228 : StackLang.HolProg 64 :=
.seq RemovedBody203_208 RemovedBody203_227

def RemovedBody203_229 : StackLang.HolProg 64 :=
.seq RemovedBody203_179 RemovedBody203_228

def RemovedBody203_230 : StackLang.HolProg 64 :=
.seq RemovedBody203_176 RemovedBody203_229

def RemovedBody203_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody203_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody203_233 : StackLang.HolProg 64 :=
.seq RemovedBody203_231 RemovedBody203_232

def RemovedBody203_234 : StackLang.HolProg 64 :=
.seq RemovedBody203_230 RemovedBody203_233

def RemovedBody203_235 : StackLang.HolProg 64 :=
.seq RemovedBody203_175 RemovedBody203_234

def RemovedBody203_236 : StackLang.HolProg 64 :=
.seq RemovedBody203_174 RemovedBody203_235

def RemovedBody203_237 : StackLang.HolProg 64 :=
.seq RemovedBody203_173 RemovedBody203_236

def RemovedBody203_238 : StackLang.HolProg 64 :=
.seq RemovedBody203_172 RemovedBody203_237

def RemovedBody203_239 : StackLang.HolProg 64 :=
.seq RemovedBody203_171 RemovedBody203_238

def RemovedBody203_240 : StackLang.HolProg 64 :=
.seq RemovedBody203_170 RemovedBody203_239

def RemovedBody203_241 : StackLang.HolProg 64 :=
.seq RemovedBody203_169 RemovedBody203_240

def RemovedBody203_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody203_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody203_244 : StackLang.HolProg 64 :=
.seq RemovedBody203_242 RemovedBody203_243

def RemovedBody203_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody203_241 RemovedBody203_244

def RemovedBody203_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody203_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody203_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody203_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody203_250 : StackLang.HolProg 64 :=
.seq RemovedBody203_248 RemovedBody203_249

def RemovedBody203_251 : StackLang.HolProg 64 :=
.seq RemovedBody203_247 RemovedBody203_250

def RemovedBody203_252 : StackLang.HolProg 64 :=
.seq RemovedBody203_246 RemovedBody203_251

def RemovedBody203_253 : StackLang.HolProg 64 :=
.seq RemovedBody203_245 RemovedBody203_252

def RemovedBody203_254 : StackLang.HolProg 64 :=
.seq RemovedBody203_168 RemovedBody203_253

def RemovedBody203_255 : StackLang.HolProg 64 :=
.seq RemovedBody203_167 RemovedBody203_254

def RemovedBody203_256 : StackLang.HolProg 64 :=
.seq RemovedBody203_166 RemovedBody203_255

def RemovedBody203_257 : StackLang.HolProg 64 :=
.seq RemovedBody203_165 RemovedBody203_256

def RemovedBody203_258 : StackLang.HolProg 64 :=
.seq RemovedBody203_110 RemovedBody203_257

def RemovedBody203_259 : StackLang.HolProg 64 :=
.seq RemovedBody203_107 RemovedBody203_258

def RemovedBody203_260 : StackLang.HolProg 64 :=
.seq RemovedBody203_106 RemovedBody203_259

def RemovedBody203_261 : StackLang.HolProg 64 :=
.seq RemovedBody203_23 RemovedBody203_260

def RemovedBody203_262 : StackLang.HolProg 64 :=
.seq RemovedBody203_6 RemovedBody203_261

def Removed203 : Nat × StackLang.HolProg 64 := (203, RemovedBody203_262)
theorem Removed203_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc203 = Removed203 := by
  kernel_rfl
#print axioms Removed203_eq
end InitECandidate.Proofs.BackendStages
