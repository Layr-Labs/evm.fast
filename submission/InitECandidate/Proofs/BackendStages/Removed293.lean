import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc293
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody293_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody293_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody293_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody293_3 : StackLang.HolProg 64 :=
.seq RemovedBody293_1 RemovedBody293_2

def RemovedBody293_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody293_3 RemovedBody293_4

def RemovedBody293_6 : StackLang.HolProg 64 :=
.seq RemovedBody293_0 RemovedBody293_5

def RemovedBody293_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4#64)

def RemovedBody293_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody293_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody293_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody293_14 : StackLang.HolProg 64 :=
.seq RemovedBody293_12 RemovedBody293_13

def RemovedBody293_15 : StackLang.HolProg 64 :=
.seq RemovedBody293_11 RemovedBody293_14

def RemovedBody293_16 : StackLang.HolProg 64 :=
.seq RemovedBody293_10 RemovedBody293_15

def RemovedBody293_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody293_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody293_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody293_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody293_25 : StackLang.HolProg 64 :=
.seq RemovedBody293_23 RemovedBody293_24

def RemovedBody293_26 : StackLang.HolProg 64 :=
.seq RemovedBody293_22 RemovedBody293_25

def RemovedBody293_27 : StackLang.HolProg 64 :=
.seq RemovedBody293_21 RemovedBody293_26

def RemovedBody293_28 : StackLang.HolProg 64 :=
.seq RemovedBody293_20 RemovedBody293_27

def RemovedBody293_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody293_32 : StackLang.HolProg 64 :=
.seq RemovedBody293_30 RemovedBody293_31

def RemovedBody293_33 : StackLang.HolProg 64 :=
.seq RemovedBody293_29 RemovedBody293_32

def RemovedBody293_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody293_28 RemovedBody293_33

def RemovedBody293_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_37 : StackLang.HolProg 64 :=
.seq RemovedBody293_35 RemovedBody293_36

def RemovedBody293_38 : StackLang.HolProg 64 :=
.seq RemovedBody293_34 RemovedBody293_37

def RemovedBody293_39 : StackLang.HolProg 64 :=
.seq RemovedBody293_19 RemovedBody293_38

def RemovedBody293_40 : StackLang.HolProg 64 :=
.seq RemovedBody293_18 RemovedBody293_39

def RemovedBody293_41 : StackLang.HolProg 64 :=
.seq RemovedBody293_17 RemovedBody293_40

def RemovedBody293_42 : StackLang.HolProg 64 :=
.loop RemovedBody293_41

def RemovedBody293_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody293_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 797#64)

def RemovedBody293_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody293_50 : StackLang.HolProg 64 :=
.seq RemovedBody293_48 RemovedBody293_49

def RemovedBody293_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody293_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody293_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody293_54 : StackLang.HolProg 64 :=
.seq RemovedBody293_52 RemovedBody293_53

def RemovedBody293_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody293_54 RemovedBody293_55

def RemovedBody293_57 : StackLang.HolProg 64 :=
.seq RemovedBody293_51 RemovedBody293_56

def RemovedBody293_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody293_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody293_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 293 3

def RemovedBody293_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody293_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody293_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody293_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody293_67 : StackLang.HolProg 64 :=
.seq RemovedBody293_65 RemovedBody293_66

def RemovedBody293_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody293_69 : StackLang.HolProg 64 :=
.seq RemovedBody293_67 RemovedBody293_68

def RemovedBody293_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody293_71 : StackLang.HolProg 64 :=
.seq RemovedBody293_69 RemovedBody293_70

def RemovedBody293_72 : StackLang.HolProg 64 :=
.seq RemovedBody293_64 RemovedBody293_71

def RemovedBody293_73 : StackLang.HolProg 64 :=
.seq RemovedBody293_63 RemovedBody293_72

def RemovedBody293_74 : StackLang.HolProg 64 :=
.seq RemovedBody293_62 RemovedBody293_73

def RemovedBody293_75 : StackLang.HolProg 64 :=
.seq RemovedBody293_61 RemovedBody293_74

def RemovedBody293_76 : StackLang.HolProg 64 :=
.seq RemovedBody293_60 RemovedBody293_75

def RemovedBody293_77 : StackLang.HolProg 64 :=
.seq RemovedBody293_59 RemovedBody293_76

def RemovedBody293_78 : StackLang.HolProg 64 :=
.seq RemovedBody293_58 RemovedBody293_77

def RemovedBody293_79 : StackLang.HolProg 64 :=
.seq RemovedBody293_57 RemovedBody293_78

def RemovedBody293_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody293_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody293_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody293_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody293_89 : StackLang.HolProg 64 :=
.seq RemovedBody293_87 RemovedBody293_88

def RemovedBody293_90 : StackLang.HolProg 64 :=
.seq RemovedBody293_86 RemovedBody293_89

def RemovedBody293_91 : StackLang.HolProg 64 :=
.seq RemovedBody293_85 RemovedBody293_90

def RemovedBody293_92 : StackLang.HolProg 64 :=
.seq RemovedBody293_84 RemovedBody293_91

def RemovedBody293_93 : StackLang.HolProg 64 :=
.seq RemovedBody293_83 RemovedBody293_92

def RemovedBody293_94 : StackLang.HolProg 64 :=
.seq RemovedBody293_82 RemovedBody293_93

def RemovedBody293_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody293_97 : StackLang.HolProg 64 :=
.seq RemovedBody293_95 RemovedBody293_96

def RemovedBody293_98 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody293_99 : StackLang.HolProg 64 :=
.seq RemovedBody293_97 RemovedBody293_98

def RemovedBody293_100 : StackLang.HolProg 64 :=
.call (some (RemovedBody293_94, 0, 293, 2)) (Sum.inl 182) (some (RemovedBody293_99, 293, 3))

def RemovedBody293_101 : StackLang.HolProg 64 :=
.seq RemovedBody293_81 RemovedBody293_100

def RemovedBody293_102 : StackLang.HolProg 64 :=
.seq RemovedBody293_80 RemovedBody293_101

def RemovedBody293_103 : StackLang.HolProg 64 :=
.seq RemovedBody293_79 RemovedBody293_102

def RemovedBody293_104 : StackLang.HolProg 64 :=
.seq RemovedBody293_50 RemovedBody293_103

def RemovedBody293_105 : StackLang.HolProg 64 :=
.seq RemovedBody293_47 RemovedBody293_104

def RemovedBody293_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody293_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody293_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody293_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody293_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody293_119 : StackLang.HolProg 64 :=
.seq RemovedBody293_117 RemovedBody293_118

def RemovedBody293_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody293_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody293_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody293_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody293_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551464#64))

def RemovedBody293_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_128 : StackLang.HolProg 64 :=
.seq RemovedBody293_126 RemovedBody293_127

def RemovedBody293_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody293_131 : StackLang.HolProg 64 :=
.seq RemovedBody293_129 RemovedBody293_130

def RemovedBody293_132 : StackLang.HolProg 64 :=
.seq RemovedBody293_128 RemovedBody293_131

def RemovedBody293_133 : StackLang.HolProg 64 :=
.seq RemovedBody293_125 RemovedBody293_132

def RemovedBody293_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 798#64)

def RemovedBody293_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody293_137 : StackLang.HolProg 64 :=
.seq RemovedBody293_135 RemovedBody293_136

def RemovedBody293_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody293_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody293_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody293_141 : StackLang.HolProg 64 :=
.seq RemovedBody293_139 RemovedBody293_140

def RemovedBody293_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_143 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody293_141 RemovedBody293_142

def RemovedBody293_144 : StackLang.HolProg 64 :=
.seq RemovedBody293_138 RemovedBody293_143

def RemovedBody293_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody293_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody293_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 293 5

def RemovedBody293_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody293_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody293_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody293_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody293_154 : StackLang.HolProg 64 :=
.seq RemovedBody293_152 RemovedBody293_153

def RemovedBody293_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody293_156 : StackLang.HolProg 64 :=
.seq RemovedBody293_154 RemovedBody293_155

def RemovedBody293_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody293_158 : StackLang.HolProg 64 :=
.seq RemovedBody293_156 RemovedBody293_157

def RemovedBody293_159 : StackLang.HolProg 64 :=
.seq RemovedBody293_151 RemovedBody293_158

def RemovedBody293_160 : StackLang.HolProg 64 :=
.seq RemovedBody293_150 RemovedBody293_159

def RemovedBody293_161 : StackLang.HolProg 64 :=
.seq RemovedBody293_149 RemovedBody293_160

def RemovedBody293_162 : StackLang.HolProg 64 :=
.seq RemovedBody293_148 RemovedBody293_161

def RemovedBody293_163 : StackLang.HolProg 64 :=
.seq RemovedBody293_147 RemovedBody293_162

def RemovedBody293_164 : StackLang.HolProg 64 :=
.seq RemovedBody293_146 RemovedBody293_163

def RemovedBody293_165 : StackLang.HolProg 64 :=
.seq RemovedBody293_145 RemovedBody293_164

def RemovedBody293_166 : StackLang.HolProg 64 :=
.seq RemovedBody293_144 RemovedBody293_165

def RemovedBody293_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody293_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody293_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody293_176 : StackLang.HolProg 64 :=
.seq RemovedBody293_174 RemovedBody293_175

def RemovedBody293_177 : StackLang.HolProg 64 :=
.seq RemovedBody293_173 RemovedBody293_176

def RemovedBody293_178 : StackLang.HolProg 64 :=
.seq RemovedBody293_172 RemovedBody293_177

def RemovedBody293_179 : StackLang.HolProg 64 :=
.seq RemovedBody293_171 RemovedBody293_178

def RemovedBody293_180 : StackLang.HolProg 64 :=
.seq RemovedBody293_170 RemovedBody293_179

def RemovedBody293_181 : StackLang.HolProg 64 :=
.seq RemovedBody293_169 RemovedBody293_180

def RemovedBody293_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody293_185 : StackLang.HolProg 64 :=
.seq RemovedBody293_183 RemovedBody293_184

def RemovedBody293_186 : StackLang.HolProg 64 :=
.seq RemovedBody293_182 RemovedBody293_185

def RemovedBody293_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody293_188 : StackLang.HolProg 64 :=
.seq RemovedBody293_186 RemovedBody293_187

def RemovedBody293_189 : StackLang.HolProg 64 :=
.call (some (RemovedBody293_181, 0, 293, 4)) (Sum.inl 158) (some (RemovedBody293_188, 293, 5))

def RemovedBody293_190 : StackLang.HolProg 64 :=
.seq RemovedBody293_168 RemovedBody293_189

def RemovedBody293_191 : StackLang.HolProg 64 :=
.seq RemovedBody293_167 RemovedBody293_190

def RemovedBody293_192 : StackLang.HolProg 64 :=
.seq RemovedBody293_166 RemovedBody293_191

def RemovedBody293_193 : StackLang.HolProg 64 :=
.seq RemovedBody293_137 RemovedBody293_192

def RemovedBody293_194 : StackLang.HolProg 64 :=
.seq RemovedBody293_134 RemovedBody293_193

def RemovedBody293_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody293_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody293_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody293_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody293_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551464#64))

def RemovedBody293_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody293_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody293_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody293_208 : StackLang.HolProg 64 :=
.seq RemovedBody293_206 RemovedBody293_207

def RemovedBody293_209 : StackLang.HolProg 64 :=
.seq RemovedBody293_205 RemovedBody293_208

def RemovedBody293_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 799#64)

def RemovedBody293_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody293_213 : StackLang.HolProg 64 :=
.seq RemovedBody293_211 RemovedBody293_212

def RemovedBody293_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody293_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody293_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody293_217 : StackLang.HolProg 64 :=
.seq RemovedBody293_215 RemovedBody293_216

def RemovedBody293_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_219 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody293_217 RemovedBody293_218

def RemovedBody293_220 : StackLang.HolProg 64 :=
.seq RemovedBody293_214 RemovedBody293_219

def RemovedBody293_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody293_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody293_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 293 7

def RemovedBody293_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody293_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody293_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody293_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody293_230 : StackLang.HolProg 64 :=
.seq RemovedBody293_228 RemovedBody293_229

def RemovedBody293_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody293_232 : StackLang.HolProg 64 :=
.seq RemovedBody293_230 RemovedBody293_231

def RemovedBody293_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody293_234 : StackLang.HolProg 64 :=
.seq RemovedBody293_232 RemovedBody293_233

def RemovedBody293_235 : StackLang.HolProg 64 :=
.seq RemovedBody293_227 RemovedBody293_234

def RemovedBody293_236 : StackLang.HolProg 64 :=
.seq RemovedBody293_226 RemovedBody293_235

def RemovedBody293_237 : StackLang.HolProg 64 :=
.seq RemovedBody293_225 RemovedBody293_236

def RemovedBody293_238 : StackLang.HolProg 64 :=
.seq RemovedBody293_224 RemovedBody293_237

def RemovedBody293_239 : StackLang.HolProg 64 :=
.seq RemovedBody293_223 RemovedBody293_238

def RemovedBody293_240 : StackLang.HolProg 64 :=
.seq RemovedBody293_222 RemovedBody293_239

def RemovedBody293_241 : StackLang.HolProg 64 :=
.seq RemovedBody293_221 RemovedBody293_240

def RemovedBody293_242 : StackLang.HolProg 64 :=
.seq RemovedBody293_220 RemovedBody293_241

def RemovedBody293_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody293_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody293_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody293_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody293_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody293_255 : StackLang.HolProg 64 :=
.seq RemovedBody293_253 RemovedBody293_254

def RemovedBody293_256 : StackLang.HolProg 64 :=
.seq RemovedBody293_252 RemovedBody293_255

def RemovedBody293_257 : StackLang.HolProg 64 :=
.seq RemovedBody293_251 RemovedBody293_256

def RemovedBody293_258 : StackLang.HolProg 64 :=
.seq RemovedBody293_250 RemovedBody293_257

def RemovedBody293_259 : StackLang.HolProg 64 :=
.seq RemovedBody293_249 RemovedBody293_258

def RemovedBody293_260 : StackLang.HolProg 64 :=
.seq RemovedBody293_248 RemovedBody293_259

def RemovedBody293_261 : StackLang.HolProg 64 :=
.seq RemovedBody293_247 RemovedBody293_260

def RemovedBody293_262 : StackLang.HolProg 64 :=
.seq RemovedBody293_246 RemovedBody293_261

def RemovedBody293_263 : StackLang.HolProg 64 :=
.seq RemovedBody293_245 RemovedBody293_262

def RemovedBody293_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody293_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody293_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody293_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody293_270 : StackLang.HolProg 64 :=
.seq RemovedBody293_268 RemovedBody293_269

def RemovedBody293_271 : StackLang.HolProg 64 :=
.seq RemovedBody293_267 RemovedBody293_270

def RemovedBody293_272 : StackLang.HolProg 64 :=
.seq RemovedBody293_266 RemovedBody293_271

def RemovedBody293_273 : StackLang.HolProg 64 :=
.seq RemovedBody293_265 RemovedBody293_272

def RemovedBody293_274 : StackLang.HolProg 64 :=
.seq RemovedBody293_264 RemovedBody293_273

def RemovedBody293_275 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody293_276 : StackLang.HolProg 64 :=
.seq RemovedBody293_274 RemovedBody293_275

def RemovedBody293_277 : StackLang.HolProg 64 :=
.call (some (RemovedBody293_263, 0, 293, 6)) (Sum.inl 192) (some (RemovedBody293_276, 293, 7))

def RemovedBody293_278 : StackLang.HolProg 64 :=
.seq RemovedBody293_244 RemovedBody293_277

def RemovedBody293_279 : StackLang.HolProg 64 :=
.seq RemovedBody293_243 RemovedBody293_278

def RemovedBody293_280 : StackLang.HolProg 64 :=
.seq RemovedBody293_242 RemovedBody293_279

def RemovedBody293_281 : StackLang.HolProg 64 :=
.seq RemovedBody293_213 RemovedBody293_280

def RemovedBody293_282 : StackLang.HolProg 64 :=
.seq RemovedBody293_210 RemovedBody293_281

def RemovedBody293_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody293_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody293_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody293_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_289 : StackLang.HolProg 64 :=
.seq RemovedBody293_287 RemovedBody293_288

def RemovedBody293_290 : StackLang.HolProg 64 :=
.seq RemovedBody293_286 RemovedBody293_289

def RemovedBody293_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody293_292 : StackLang.HolProg 64 :=
.seq RemovedBody293_290 RemovedBody293_291

def RemovedBody293_293 : StackLang.HolProg 64 :=
.seq RemovedBody293_285 RemovedBody293_292

def RemovedBody293_294 : StackLang.HolProg 64 :=
.seq RemovedBody293_284 RemovedBody293_293

def RemovedBody293_295 : StackLang.HolProg 64 :=
.seq RemovedBody293_283 RemovedBody293_294

def RemovedBody293_296 : StackLang.HolProg 64 :=
.seq RemovedBody293_282 RemovedBody293_295

def RemovedBody293_297 : StackLang.HolProg 64 :=
.seq RemovedBody293_209 RemovedBody293_296

def RemovedBody293_298 : StackLang.HolProg 64 :=
.seq RemovedBody293_204 RemovedBody293_297

def RemovedBody293_299 : StackLang.HolProg 64 :=
.seq RemovedBody293_203 RemovedBody293_298

def RemovedBody293_300 : StackLang.HolProg 64 :=
.seq RemovedBody293_202 RemovedBody293_299

def RemovedBody293_301 : StackLang.HolProg 64 :=
.seq RemovedBody293_201 RemovedBody293_300

def RemovedBody293_302 : StackLang.HolProg 64 :=
.seq RemovedBody293_200 RemovedBody293_301

def RemovedBody293_303 : StackLang.HolProg 64 :=
.seq RemovedBody293_199 RemovedBody293_302

def RemovedBody293_304 : StackLang.HolProg 64 :=
.seq RemovedBody293_198 RemovedBody293_303

def RemovedBody293_305 : StackLang.HolProg 64 :=
.seq RemovedBody293_197 RemovedBody293_304

def RemovedBody293_306 : StackLang.HolProg 64 :=
.seq RemovedBody293_196 RemovedBody293_305

def RemovedBody293_307 : StackLang.HolProg 64 :=
.seq RemovedBody293_195 RemovedBody293_306

def RemovedBody293_308 : StackLang.HolProg 64 :=
.seq RemovedBody293_194 RemovedBody293_307

def RemovedBody293_309 : StackLang.HolProg 64 :=
.seq RemovedBody293_133 RemovedBody293_308

def RemovedBody293_310 : StackLang.HolProg 64 :=
.seq RemovedBody293_124 RemovedBody293_309

def RemovedBody293_311 : StackLang.HolProg 64 :=
.seq RemovedBody293_123 RemovedBody293_310

def RemovedBody293_312 : StackLang.HolProg 64 :=
.seq RemovedBody293_122 RemovedBody293_311

def RemovedBody293_313 : StackLang.HolProg 64 :=
.seq RemovedBody293_121 RemovedBody293_312

def RemovedBody293_314 : StackLang.HolProg 64 :=
.seq RemovedBody293_120 RemovedBody293_313

def RemovedBody293_315 : StackLang.HolProg 64 :=
.seq RemovedBody293_119 RemovedBody293_314

def RemovedBody293_316 : StackLang.HolProg 64 :=
.seq RemovedBody293_116 RemovedBody293_315

def RemovedBody293_317 : StackLang.HolProg 64 :=
.seq RemovedBody293_115 RemovedBody293_316

def RemovedBody293_318 : StackLang.HolProg 64 :=
.seq RemovedBody293_114 RemovedBody293_317

def RemovedBody293_319 : StackLang.HolProg 64 :=
.seq RemovedBody293_113 RemovedBody293_318

def RemovedBody293_320 : StackLang.HolProg 64 :=
.seq RemovedBody293_112 RemovedBody293_319

def RemovedBody293_321 : StackLang.HolProg 64 :=
.seq RemovedBody293_111 RemovedBody293_320

def RemovedBody293_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody293_324 : StackLang.HolProg 64 :=
.seq RemovedBody293_322 RemovedBody293_323

def RemovedBody293_325 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody293_321 RemovedBody293_324

def RemovedBody293_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody293_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody293_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_330 : StackLang.HolProg 64 :=
.seq RemovedBody293_328 RemovedBody293_329

def RemovedBody293_331 : StackLang.HolProg 64 :=
.seq RemovedBody293_327 RemovedBody293_330

def RemovedBody293_332 : StackLang.HolProg 64 :=
.seq RemovedBody293_326 RemovedBody293_331

def RemovedBody293_333 : StackLang.HolProg 64 :=
.seq RemovedBody293_325 RemovedBody293_332

def RemovedBody293_334 : StackLang.HolProg 64 :=
.seq RemovedBody293_110 RemovedBody293_333

def RemovedBody293_335 : StackLang.HolProg 64 :=
.loop RemovedBody293_334

def RemovedBody293_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody293_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody293_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody293_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody293_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody293_341 : StackLang.HolProg 64 :=
.seq RemovedBody293_339 RemovedBody293_340

def RemovedBody293_342 : StackLang.HolProg 64 :=
.seq RemovedBody293_338 RemovedBody293_341

def RemovedBody293_343 : StackLang.HolProg 64 :=
.seq RemovedBody293_337 RemovedBody293_342

def RemovedBody293_344 : StackLang.HolProg 64 :=
.seq RemovedBody293_336 RemovedBody293_343

def RemovedBody293_345 : StackLang.HolProg 64 :=
.seq RemovedBody293_335 RemovedBody293_344

def RemovedBody293_346 : StackLang.HolProg 64 :=
.seq RemovedBody293_109 RemovedBody293_345

def RemovedBody293_347 : StackLang.HolProg 64 :=
.seq RemovedBody293_108 RemovedBody293_346

def RemovedBody293_348 : StackLang.HolProg 64 :=
.seq RemovedBody293_107 RemovedBody293_347

def RemovedBody293_349 : StackLang.HolProg 64 :=
.seq RemovedBody293_106 RemovedBody293_348

def RemovedBody293_350 : StackLang.HolProg 64 :=
.seq RemovedBody293_105 RemovedBody293_349

def RemovedBody293_351 : StackLang.HolProg 64 :=
.seq RemovedBody293_46 RemovedBody293_350

def RemovedBody293_352 : StackLang.HolProg 64 :=
.seq RemovedBody293_45 RemovedBody293_351

def RemovedBody293_353 : StackLang.HolProg 64 :=
.seq RemovedBody293_44 RemovedBody293_352

def RemovedBody293_354 : StackLang.HolProg 64 :=
.seq RemovedBody293_43 RemovedBody293_353

def RemovedBody293_355 : StackLang.HolProg 64 :=
.seq RemovedBody293_42 RemovedBody293_354

def RemovedBody293_356 : StackLang.HolProg 64 :=
.seq RemovedBody293_16 RemovedBody293_355

def RemovedBody293_357 : StackLang.HolProg 64 :=
.seq RemovedBody293_9 RemovedBody293_356

def RemovedBody293_358 : StackLang.HolProg 64 :=
.seq RemovedBody293_8 RemovedBody293_357

def RemovedBody293_359 : StackLang.HolProg 64 :=
.seq RemovedBody293_7 RemovedBody293_358

def RemovedBody293_360 : StackLang.HolProg 64 :=
.seq RemovedBody293_6 RemovedBody293_359

def Removed293 : Nat × StackLang.HolProg 64 := (293, RemovedBody293_360)
theorem Removed293_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc293 = Removed293 := by
  kernel_rfl
#print axioms Removed293_eq
end InitECandidate.Proofs.BackendStages
