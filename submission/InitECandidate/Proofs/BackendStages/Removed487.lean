import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc487
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody487_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody487_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody487_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody487_3 : StackLang.HolProg 64 :=
.seq RemovedBody487_1 RemovedBody487_2

def RemovedBody487_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody487_3 RemovedBody487_4

def RemovedBody487_6 : StackLang.HolProg 64 :=
.seq RemovedBody487_0 RemovedBody487_5

def RemovedBody487_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 176#64)

def RemovedBody487_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody487_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1525#64)

def RemovedBody487_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody487_13 : StackLang.HolProg 64 :=
.seq RemovedBody487_11 RemovedBody487_12

def RemovedBody487_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody487_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody487_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody487_17 : StackLang.HolProg 64 :=
.seq RemovedBody487_15 RemovedBody487_16

def RemovedBody487_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody487_17 RemovedBody487_18

def RemovedBody487_20 : StackLang.HolProg 64 :=
.seq RemovedBody487_14 RemovedBody487_19

def RemovedBody487_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody487_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody487_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 487 3

def RemovedBody487_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody487_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody487_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody487_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody487_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody487_30 : StackLang.HolProg 64 :=
.seq RemovedBody487_28 RemovedBody487_29

def RemovedBody487_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody487_32 : StackLang.HolProg 64 :=
.seq RemovedBody487_30 RemovedBody487_31

def RemovedBody487_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody487_34 : StackLang.HolProg 64 :=
.seq RemovedBody487_32 RemovedBody487_33

def RemovedBody487_35 : StackLang.HolProg 64 :=
.seq RemovedBody487_27 RemovedBody487_34

def RemovedBody487_36 : StackLang.HolProg 64 :=
.seq RemovedBody487_26 RemovedBody487_35

def RemovedBody487_37 : StackLang.HolProg 64 :=
.seq RemovedBody487_25 RemovedBody487_36

def RemovedBody487_38 : StackLang.HolProg 64 :=
.seq RemovedBody487_24 RemovedBody487_37

def RemovedBody487_39 : StackLang.HolProg 64 :=
.seq RemovedBody487_23 RemovedBody487_38

def RemovedBody487_40 : StackLang.HolProg 64 :=
.seq RemovedBody487_22 RemovedBody487_39

def RemovedBody487_41 : StackLang.HolProg 64 :=
.seq RemovedBody487_21 RemovedBody487_40

def RemovedBody487_42 : StackLang.HolProg 64 :=
.seq RemovedBody487_20 RemovedBody487_41

def RemovedBody487_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody487_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody487_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody487_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody487_50 : StackLang.HolProg 64 :=
.seq RemovedBody487_48 RemovedBody487_49

def RemovedBody487_51 : StackLang.HolProg 64 :=
.seq RemovedBody487_47 RemovedBody487_50

def RemovedBody487_52 : StackLang.HolProg 64 :=
.seq RemovedBody487_46 RemovedBody487_51

def RemovedBody487_53 : StackLang.HolProg 64 :=
.seq RemovedBody487_45 RemovedBody487_52

def RemovedBody487_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody487_56 : StackLang.HolProg 64 :=
.seq RemovedBody487_54 RemovedBody487_55

def RemovedBody487_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody487_53, 0, 487, 2)) (Sum.inl 68) (some (RemovedBody487_56, 487, 3))

def RemovedBody487_58 : StackLang.HolProg 64 :=
.seq RemovedBody487_44 RemovedBody487_57

def RemovedBody487_59 : StackLang.HolProg 64 :=
.seq RemovedBody487_43 RemovedBody487_58

def RemovedBody487_60 : StackLang.HolProg 64 :=
.seq RemovedBody487_42 RemovedBody487_59

def RemovedBody487_61 : StackLang.HolProg 64 :=
.seq RemovedBody487_13 RemovedBody487_60

def RemovedBody487_62 : StackLang.HolProg 64 :=
.seq RemovedBody487_10 RemovedBody487_61

def RemovedBody487_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody487_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody487_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 176#64)

def RemovedBody487_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody487_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1526#64)

def RemovedBody487_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody487_70 : StackLang.HolProg 64 :=
.seq RemovedBody487_68 RemovedBody487_69

def RemovedBody487_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody487_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody487_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody487_74 : StackLang.HolProg 64 :=
.seq RemovedBody487_72 RemovedBody487_73

def RemovedBody487_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody487_74 RemovedBody487_75

def RemovedBody487_77 : StackLang.HolProg 64 :=
.seq RemovedBody487_71 RemovedBody487_76

def RemovedBody487_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody487_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody487_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 487 5

def RemovedBody487_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody487_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody487_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody487_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody487_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody487_87 : StackLang.HolProg 64 :=
.seq RemovedBody487_85 RemovedBody487_86

def RemovedBody487_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody487_89 : StackLang.HolProg 64 :=
.seq RemovedBody487_87 RemovedBody487_88

def RemovedBody487_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody487_91 : StackLang.HolProg 64 :=
.seq RemovedBody487_89 RemovedBody487_90

def RemovedBody487_92 : StackLang.HolProg 64 :=
.seq RemovedBody487_84 RemovedBody487_91

def RemovedBody487_93 : StackLang.HolProg 64 :=
.seq RemovedBody487_83 RemovedBody487_92

def RemovedBody487_94 : StackLang.HolProg 64 :=
.seq RemovedBody487_82 RemovedBody487_93

def RemovedBody487_95 : StackLang.HolProg 64 :=
.seq RemovedBody487_81 RemovedBody487_94

def RemovedBody487_96 : StackLang.HolProg 64 :=
.seq RemovedBody487_80 RemovedBody487_95

def RemovedBody487_97 : StackLang.HolProg 64 :=
.seq RemovedBody487_79 RemovedBody487_96

def RemovedBody487_98 : StackLang.HolProg 64 :=
.seq RemovedBody487_78 RemovedBody487_97

def RemovedBody487_99 : StackLang.HolProg 64 :=
.seq RemovedBody487_77 RemovedBody487_98

def RemovedBody487_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody487_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody487_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody487_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody487_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody487_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody487_108 : StackLang.HolProg 64 :=
.seq RemovedBody487_106 RemovedBody487_107

def RemovedBody487_109 : StackLang.HolProg 64 :=
.seq RemovedBody487_105 RemovedBody487_108

def RemovedBody487_110 : StackLang.HolProg 64 :=
.seq RemovedBody487_104 RemovedBody487_109

def RemovedBody487_111 : StackLang.HolProg 64 :=
.seq RemovedBody487_103 RemovedBody487_110

def RemovedBody487_112 : StackLang.HolProg 64 :=
.seq RemovedBody487_102 RemovedBody487_111

def RemovedBody487_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody487_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody487_115 : StackLang.HolProg 64 :=
.seq RemovedBody487_113 RemovedBody487_114

def RemovedBody487_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody487_117 : StackLang.HolProg 64 :=
.seq RemovedBody487_115 RemovedBody487_116

def RemovedBody487_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody487_112, 0, 487, 4)) (Sum.inl 78) (some (RemovedBody487_117, 487, 5))

def RemovedBody487_119 : StackLang.HolProg 64 :=
.seq RemovedBody487_101 RemovedBody487_118

def RemovedBody487_120 : StackLang.HolProg 64 :=
.seq RemovedBody487_100 RemovedBody487_119

def RemovedBody487_121 : StackLang.HolProg 64 :=
.seq RemovedBody487_99 RemovedBody487_120

def RemovedBody487_122 : StackLang.HolProg 64 :=
.seq RemovedBody487_70 RemovedBody487_121

def RemovedBody487_123 : StackLang.HolProg 64 :=
.seq RemovedBody487_67 RemovedBody487_122

def RemovedBody487_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody487_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody487_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody487_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody487_128 : StackLang.HolProg 64 :=
.seq RemovedBody487_126 RemovedBody487_127

def RemovedBody487_129 : StackLang.HolProg 64 :=
.seq RemovedBody487_125 RemovedBody487_128

def RemovedBody487_130 : StackLang.HolProg 64 :=
.seq RemovedBody487_124 RemovedBody487_129

def RemovedBody487_131 : StackLang.HolProg 64 :=
.seq RemovedBody487_123 RemovedBody487_130

def RemovedBody487_132 : StackLang.HolProg 64 :=
.seq RemovedBody487_66 RemovedBody487_131

def RemovedBody487_133 : StackLang.HolProg 64 :=
.seq RemovedBody487_65 RemovedBody487_132

def RemovedBody487_134 : StackLang.HolProg 64 :=
.seq RemovedBody487_64 RemovedBody487_133

def RemovedBody487_135 : StackLang.HolProg 64 :=
.seq RemovedBody487_63 RemovedBody487_134

def RemovedBody487_136 : StackLang.HolProg 64 :=
.seq RemovedBody487_62 RemovedBody487_135

def RemovedBody487_137 : StackLang.HolProg 64 :=
.seq RemovedBody487_9 RemovedBody487_136

def RemovedBody487_138 : StackLang.HolProg 64 :=
.seq RemovedBody487_8 RemovedBody487_137

def RemovedBody487_139 : StackLang.HolProg 64 :=
.seq RemovedBody487_7 RemovedBody487_138

def RemovedBody487_140 : StackLang.HolProg 64 :=
.seq RemovedBody487_6 RemovedBody487_139

def Removed487 : Nat × StackLang.HolProg 64 := (487, RemovedBody487_140)
theorem Removed487_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc487 = Removed487 := by
  kernel_rfl
#print axioms Removed487_eq
end InitECandidate.Proofs.BackendStages
