import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc307
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody307_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody307_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody307_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody307_3 : StackLang.HolProg 64 :=
.seq RemovedBody307_1 RemovedBody307_2

def RemovedBody307_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody307_3 RemovedBody307_4

def RemovedBody307_6 : StackLang.HolProg 64 :=
.seq RemovedBody307_0 RemovedBody307_5

def RemovedBody307_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody307_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody307_9 : StackLang.HolProg 64 :=
.seq RemovedBody307_7 RemovedBody307_8

def RemovedBody307_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody307_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody307_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody307_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551472#64))

def RemovedBody307_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody307_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody307_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody307_17 : StackLang.HolProg 64 :=
.seq RemovedBody307_15 RemovedBody307_16

def RemovedBody307_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 848#64)

def RemovedBody307_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody307_21 : StackLang.HolProg 64 :=
.seq RemovedBody307_19 RemovedBody307_20

def RemovedBody307_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody307_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody307_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody307_25 : StackLang.HolProg 64 :=
.seq RemovedBody307_23 RemovedBody307_24

def RemovedBody307_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody307_25 RemovedBody307_26

def RemovedBody307_28 : StackLang.HolProg 64 :=
.seq RemovedBody307_22 RemovedBody307_27

def RemovedBody307_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody307_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody307_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 307 3

def RemovedBody307_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody307_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody307_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody307_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody307_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody307_38 : StackLang.HolProg 64 :=
.seq RemovedBody307_36 RemovedBody307_37

def RemovedBody307_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody307_40 : StackLang.HolProg 64 :=
.seq RemovedBody307_38 RemovedBody307_39

def RemovedBody307_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody307_42 : StackLang.HolProg 64 :=
.seq RemovedBody307_40 RemovedBody307_41

def RemovedBody307_43 : StackLang.HolProg 64 :=
.seq RemovedBody307_35 RemovedBody307_42

def RemovedBody307_44 : StackLang.HolProg 64 :=
.seq RemovedBody307_34 RemovedBody307_43

def RemovedBody307_45 : StackLang.HolProg 64 :=
.seq RemovedBody307_33 RemovedBody307_44

def RemovedBody307_46 : StackLang.HolProg 64 :=
.seq RemovedBody307_32 RemovedBody307_45

def RemovedBody307_47 : StackLang.HolProg 64 :=
.seq RemovedBody307_31 RemovedBody307_46

def RemovedBody307_48 : StackLang.HolProg 64 :=
.seq RemovedBody307_30 RemovedBody307_47

def RemovedBody307_49 : StackLang.HolProg 64 :=
.seq RemovedBody307_29 RemovedBody307_48

def RemovedBody307_50 : StackLang.HolProg 64 :=
.seq RemovedBody307_28 RemovedBody307_49

def RemovedBody307_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody307_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody307_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody307_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody307_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody307_59 : StackLang.HolProg 64 :=
.seq RemovedBody307_57 RemovedBody307_58

def RemovedBody307_60 : StackLang.HolProg 64 :=
.seq RemovedBody307_56 RemovedBody307_59

def RemovedBody307_61 : StackLang.HolProg 64 :=
.seq RemovedBody307_55 RemovedBody307_60

def RemovedBody307_62 : StackLang.HolProg 64 :=
.seq RemovedBody307_54 RemovedBody307_61

def RemovedBody307_63 : StackLang.HolProg 64 :=
.seq RemovedBody307_53 RemovedBody307_62

def RemovedBody307_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody307_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody307_66 : StackLang.HolProg 64 :=
.seq RemovedBody307_64 RemovedBody307_65

def RemovedBody307_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody307_68 : StackLang.HolProg 64 :=
.seq RemovedBody307_66 RemovedBody307_67

def RemovedBody307_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody307_63, 0, 307, 2)) (Sum.inl 288) (some (RemovedBody307_68, 307, 3))

def RemovedBody307_70 : StackLang.HolProg 64 :=
.seq RemovedBody307_52 RemovedBody307_69

def RemovedBody307_71 : StackLang.HolProg 64 :=
.seq RemovedBody307_51 RemovedBody307_70

def RemovedBody307_72 : StackLang.HolProg 64 :=
.seq RemovedBody307_50 RemovedBody307_71

def RemovedBody307_73 : StackLang.HolProg 64 :=
.seq RemovedBody307_21 RemovedBody307_72

def RemovedBody307_74 : StackLang.HolProg 64 :=
.seq RemovedBody307_18 RemovedBody307_73

def RemovedBody307_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody307_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody307_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody307_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody307_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody307_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551472#64))

def RemovedBody307_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 64#64)

def RemovedBody307_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody307_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody307_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody307_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody307_88 : StackLang.HolProg 64 :=
.seq RemovedBody307_86 RemovedBody307_87

def RemovedBody307_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody307_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody307_88 RemovedBody307_89

def RemovedBody307_91 : StackLang.HolProg 64 :=
.seq RemovedBody307_85 RemovedBody307_90

def RemovedBody307_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 306

def RemovedBody307_93 : StackLang.HolProg 64 :=
.seq RemovedBody307_91 RemovedBody307_92

def RemovedBody307_94 : StackLang.HolProg 64 :=
.seq RemovedBody307_84 RemovedBody307_93

def RemovedBody307_95 : StackLang.HolProg 64 :=
.seq RemovedBody307_83 RemovedBody307_94

def RemovedBody307_96 : StackLang.HolProg 64 :=
.seq RemovedBody307_82 RemovedBody307_95

def RemovedBody307_97 : StackLang.HolProg 64 :=
.seq RemovedBody307_81 RemovedBody307_96

def RemovedBody307_98 : StackLang.HolProg 64 :=
.seq RemovedBody307_80 RemovedBody307_97

def RemovedBody307_99 : StackLang.HolProg 64 :=
.seq RemovedBody307_79 RemovedBody307_98

def RemovedBody307_100 : StackLang.HolProg 64 :=
.seq RemovedBody307_78 RemovedBody307_99

def RemovedBody307_101 : StackLang.HolProg 64 :=
.seq RemovedBody307_77 RemovedBody307_100

def RemovedBody307_102 : StackLang.HolProg 64 :=
.seq RemovedBody307_76 RemovedBody307_101

def RemovedBody307_103 : StackLang.HolProg 64 :=
.seq RemovedBody307_75 RemovedBody307_102

def RemovedBody307_104 : StackLang.HolProg 64 :=
.seq RemovedBody307_74 RemovedBody307_103

def RemovedBody307_105 : StackLang.HolProg 64 :=
.seq RemovedBody307_17 RemovedBody307_104

def RemovedBody307_106 : StackLang.HolProg 64 :=
.seq RemovedBody307_14 RemovedBody307_105

def RemovedBody307_107 : StackLang.HolProg 64 :=
.seq RemovedBody307_13 RemovedBody307_106

def RemovedBody307_108 : StackLang.HolProg 64 :=
.seq RemovedBody307_12 RemovedBody307_107

def RemovedBody307_109 : StackLang.HolProg 64 :=
.seq RemovedBody307_11 RemovedBody307_108

def RemovedBody307_110 : StackLang.HolProg 64 :=
.seq RemovedBody307_10 RemovedBody307_109

def RemovedBody307_111 : StackLang.HolProg 64 :=
.seq RemovedBody307_9 RemovedBody307_110

def RemovedBody307_112 : StackLang.HolProg 64 :=
.seq RemovedBody307_6 RemovedBody307_111

def Removed307 : Nat × StackLang.HolProg 64 := (307, RemovedBody307_112)
theorem Removed307_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc307 = Removed307 := by
  kernel_rfl
#print axioms Removed307_eq
end InitECandidate.Proofs.BackendStages
