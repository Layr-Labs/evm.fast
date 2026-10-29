import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc422
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody422_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody422_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody422_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody422_3 : StackLang.HolProg 64 :=
.seq RemovedBody422_1 RemovedBody422_2

def RemovedBody422_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody422_3 RemovedBody422_4

def RemovedBody422_6 : StackLang.HolProg 64 :=
.seq RemovedBody422_0 RemovedBody422_5

def RemovedBody422_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody422_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody422_9 : StackLang.HolProg 64 :=
.seq RemovedBody422_7 RemovedBody422_8

def RemovedBody422_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1259#64)

def RemovedBody422_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody422_13 : StackLang.HolProg 64 :=
.seq RemovedBody422_11 RemovedBody422_12

def RemovedBody422_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody422_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody422_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody422_17 : StackLang.HolProg 64 :=
.seq RemovedBody422_15 RemovedBody422_16

def RemovedBody422_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody422_17 RemovedBody422_18

def RemovedBody422_20 : StackLang.HolProg 64 :=
.seq RemovedBody422_14 RemovedBody422_19

def RemovedBody422_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody422_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody422_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 422 3

def RemovedBody422_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody422_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody422_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody422_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody422_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody422_30 : StackLang.HolProg 64 :=
.seq RemovedBody422_28 RemovedBody422_29

def RemovedBody422_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody422_32 : StackLang.HolProg 64 :=
.seq RemovedBody422_30 RemovedBody422_31

def RemovedBody422_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody422_34 : StackLang.HolProg 64 :=
.seq RemovedBody422_32 RemovedBody422_33

def RemovedBody422_35 : StackLang.HolProg 64 :=
.seq RemovedBody422_27 RemovedBody422_34

def RemovedBody422_36 : StackLang.HolProg 64 :=
.seq RemovedBody422_26 RemovedBody422_35

def RemovedBody422_37 : StackLang.HolProg 64 :=
.seq RemovedBody422_25 RemovedBody422_36

def RemovedBody422_38 : StackLang.HolProg 64 :=
.seq RemovedBody422_24 RemovedBody422_37

def RemovedBody422_39 : StackLang.HolProg 64 :=
.seq RemovedBody422_23 RemovedBody422_38

def RemovedBody422_40 : StackLang.HolProg 64 :=
.seq RemovedBody422_22 RemovedBody422_39

def RemovedBody422_41 : StackLang.HolProg 64 :=
.seq RemovedBody422_21 RemovedBody422_40

def RemovedBody422_42 : StackLang.HolProg 64 :=
.seq RemovedBody422_20 RemovedBody422_41

def RemovedBody422_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody422_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody422_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody422_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody422_50 : StackLang.HolProg 64 :=
.seq RemovedBody422_48 RemovedBody422_49

def RemovedBody422_51 : StackLang.HolProg 64 :=
.seq RemovedBody422_47 RemovedBody422_50

def RemovedBody422_52 : StackLang.HolProg 64 :=
.seq RemovedBody422_46 RemovedBody422_51

def RemovedBody422_53 : StackLang.HolProg 64 :=
.seq RemovedBody422_45 RemovedBody422_52

def RemovedBody422_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody422_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody422_56 : StackLang.HolProg 64 :=
.seq RemovedBody422_54 RemovedBody422_55

def RemovedBody422_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody422_53, 0, 422, 2)) (Sum.inl 421) (some (RemovedBody422_56, 422, 3))

def RemovedBody422_58 : StackLang.HolProg 64 :=
.seq RemovedBody422_44 RemovedBody422_57

def RemovedBody422_59 : StackLang.HolProg 64 :=
.seq RemovedBody422_43 RemovedBody422_58

def RemovedBody422_60 : StackLang.HolProg 64 :=
.seq RemovedBody422_42 RemovedBody422_59

def RemovedBody422_61 : StackLang.HolProg 64 :=
.seq RemovedBody422_13 RemovedBody422_60

def RemovedBody422_62 : StackLang.HolProg 64 :=
.seq RemovedBody422_10 RemovedBody422_61

def RemovedBody422_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody422_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody422_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody422_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1260#64)

def RemovedBody422_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody422_70 : StackLang.HolProg 64 :=
.seq RemovedBody422_68 RemovedBody422_69

def RemovedBody422_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody422_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody422_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody422_74 : StackLang.HolProg 64 :=
.seq RemovedBody422_72 RemovedBody422_73

def RemovedBody422_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody422_74 RemovedBody422_75

def RemovedBody422_77 : StackLang.HolProg 64 :=
.seq RemovedBody422_71 RemovedBody422_76

def RemovedBody422_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody422_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody422_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 422 5

def RemovedBody422_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody422_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody422_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody422_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody422_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody422_87 : StackLang.HolProg 64 :=
.seq RemovedBody422_85 RemovedBody422_86

def RemovedBody422_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody422_89 : StackLang.HolProg 64 :=
.seq RemovedBody422_87 RemovedBody422_88

def RemovedBody422_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody422_91 : StackLang.HolProg 64 :=
.seq RemovedBody422_89 RemovedBody422_90

def RemovedBody422_92 : StackLang.HolProg 64 :=
.seq RemovedBody422_84 RemovedBody422_91

def RemovedBody422_93 : StackLang.HolProg 64 :=
.seq RemovedBody422_83 RemovedBody422_92

def RemovedBody422_94 : StackLang.HolProg 64 :=
.seq RemovedBody422_82 RemovedBody422_93

def RemovedBody422_95 : StackLang.HolProg 64 :=
.seq RemovedBody422_81 RemovedBody422_94

def RemovedBody422_96 : StackLang.HolProg 64 :=
.seq RemovedBody422_80 RemovedBody422_95

def RemovedBody422_97 : StackLang.HolProg 64 :=
.seq RemovedBody422_79 RemovedBody422_96

def RemovedBody422_98 : StackLang.HolProg 64 :=
.seq RemovedBody422_78 RemovedBody422_97

def RemovedBody422_99 : StackLang.HolProg 64 :=
.seq RemovedBody422_77 RemovedBody422_98

def RemovedBody422_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody422_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody422_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody422_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody422_107 : StackLang.HolProg 64 :=
.seq RemovedBody422_105 RemovedBody422_106

def RemovedBody422_108 : StackLang.HolProg 64 :=
.seq RemovedBody422_104 RemovedBody422_107

def RemovedBody422_109 : StackLang.HolProg 64 :=
.seq RemovedBody422_103 RemovedBody422_108

def RemovedBody422_110 : StackLang.HolProg 64 :=
.seq RemovedBody422_102 RemovedBody422_109

def RemovedBody422_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody422_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody422_113 : StackLang.HolProg 64 :=
.seq RemovedBody422_111 RemovedBody422_112

def RemovedBody422_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody422_110, 0, 422, 4)) (Sum.inl 419) (some (RemovedBody422_113, 422, 5))

def RemovedBody422_115 : StackLang.HolProg 64 :=
.seq RemovedBody422_101 RemovedBody422_114

def RemovedBody422_116 : StackLang.HolProg 64 :=
.seq RemovedBody422_100 RemovedBody422_115

def RemovedBody422_117 : StackLang.HolProg 64 :=
.seq RemovedBody422_99 RemovedBody422_116

def RemovedBody422_118 : StackLang.HolProg 64 :=
.seq RemovedBody422_70 RemovedBody422_117

def RemovedBody422_119 : StackLang.HolProg 64 :=
.seq RemovedBody422_67 RemovedBody422_118

def RemovedBody422_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody422_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody422_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody422_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody422_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody422_125 : StackLang.HolProg 64 :=
.seq RemovedBody422_123 RemovedBody422_124

def RemovedBody422_126 : StackLang.HolProg 64 :=
.seq RemovedBody422_122 RemovedBody422_125

def RemovedBody422_127 : StackLang.HolProg 64 :=
.seq RemovedBody422_121 RemovedBody422_126

def RemovedBody422_128 : StackLang.HolProg 64 :=
.seq RemovedBody422_120 RemovedBody422_127

def RemovedBody422_129 : StackLang.HolProg 64 :=
.seq RemovedBody422_119 RemovedBody422_128

def RemovedBody422_130 : StackLang.HolProg 64 :=
.seq RemovedBody422_66 RemovedBody422_129

def RemovedBody422_131 : StackLang.HolProg 64 :=
.seq RemovedBody422_65 RemovedBody422_130

def RemovedBody422_132 : StackLang.HolProg 64 :=
.seq RemovedBody422_64 RemovedBody422_131

def RemovedBody422_133 : StackLang.HolProg 64 :=
.seq RemovedBody422_63 RemovedBody422_132

def RemovedBody422_134 : StackLang.HolProg 64 :=
.seq RemovedBody422_62 RemovedBody422_133

def RemovedBody422_135 : StackLang.HolProg 64 :=
.seq RemovedBody422_9 RemovedBody422_134

def RemovedBody422_136 : StackLang.HolProg 64 :=
.seq RemovedBody422_6 RemovedBody422_135

def Removed422 : Nat × StackLang.HolProg 64 := (422, RemovedBody422_136)
theorem Removed422_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc422 = Removed422 := by
  kernel_rfl
#print axioms Removed422_eq
end InitECandidate.Proofs.BackendStages
