import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc778
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody778_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody778_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody778_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody778_3 : StackLang.HolProg 64 :=
.seq RemovedBody778_1 RemovedBody778_2

def RemovedBody778_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody778_3 RemovedBody778_4

def RemovedBody778_6 : StackLang.HolProg 64 :=
.seq RemovedBody778_0 RemovedBody778_5

def RemovedBody778_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody778_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody778_9 : StackLang.HolProg 64 :=
.seq RemovedBody778_7 RemovedBody778_8

def RemovedBody778_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3543#64)

def RemovedBody778_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody778_13 : StackLang.HolProg 64 :=
.seq RemovedBody778_11 RemovedBody778_12

def RemovedBody778_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody778_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody778_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody778_17 : StackLang.HolProg 64 :=
.seq RemovedBody778_15 RemovedBody778_16

def RemovedBody778_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody778_17 RemovedBody778_18

def RemovedBody778_20 : StackLang.HolProg 64 :=
.seq RemovedBody778_14 RemovedBody778_19

def RemovedBody778_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody778_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody778_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 3

def RemovedBody778_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody778_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody778_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody778_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody778_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody778_30 : StackLang.HolProg 64 :=
.seq RemovedBody778_28 RemovedBody778_29

def RemovedBody778_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody778_32 : StackLang.HolProg 64 :=
.seq RemovedBody778_30 RemovedBody778_31

def RemovedBody778_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody778_34 : StackLang.HolProg 64 :=
.seq RemovedBody778_32 RemovedBody778_33

def RemovedBody778_35 : StackLang.HolProg 64 :=
.seq RemovedBody778_27 RemovedBody778_34

def RemovedBody778_36 : StackLang.HolProg 64 :=
.seq RemovedBody778_26 RemovedBody778_35

def RemovedBody778_37 : StackLang.HolProg 64 :=
.seq RemovedBody778_25 RemovedBody778_36

def RemovedBody778_38 : StackLang.HolProg 64 :=
.seq RemovedBody778_24 RemovedBody778_37

def RemovedBody778_39 : StackLang.HolProg 64 :=
.seq RemovedBody778_23 RemovedBody778_38

def RemovedBody778_40 : StackLang.HolProg 64 :=
.seq RemovedBody778_22 RemovedBody778_39

def RemovedBody778_41 : StackLang.HolProg 64 :=
.seq RemovedBody778_21 RemovedBody778_40

def RemovedBody778_42 : StackLang.HolProg 64 :=
.seq RemovedBody778_20 RemovedBody778_41

def RemovedBody778_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody778_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody778_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody778_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody778_50 : StackLang.HolProg 64 :=
.seq RemovedBody778_48 RemovedBody778_49

def RemovedBody778_51 : StackLang.HolProg 64 :=
.seq RemovedBody778_47 RemovedBody778_50

def RemovedBody778_52 : StackLang.HolProg 64 :=
.seq RemovedBody778_46 RemovedBody778_51

def RemovedBody778_53 : StackLang.HolProg 64 :=
.seq RemovedBody778_45 RemovedBody778_52

def RemovedBody778_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody778_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody778_56 : StackLang.HolProg 64 :=
.seq RemovedBody778_54 RemovedBody778_55

def RemovedBody778_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody778_53, 0, 778, 2)) (Sum.inl 731) (some (RemovedBody778_56, 778, 3))

def RemovedBody778_58 : StackLang.HolProg 64 :=
.seq RemovedBody778_44 RemovedBody778_57

def RemovedBody778_59 : StackLang.HolProg 64 :=
.seq RemovedBody778_43 RemovedBody778_58

def RemovedBody778_60 : StackLang.HolProg 64 :=
.seq RemovedBody778_42 RemovedBody778_59

def RemovedBody778_61 : StackLang.HolProg 64 :=
.seq RemovedBody778_13 RemovedBody778_60

def RemovedBody778_62 : StackLang.HolProg 64 :=
.seq RemovedBody778_10 RemovedBody778_61

def RemovedBody778_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody778_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody778_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody778_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3544#64)

def RemovedBody778_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody778_70 : StackLang.HolProg 64 :=
.seq RemovedBody778_68 RemovedBody778_69

def RemovedBody778_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody778_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody778_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody778_74 : StackLang.HolProg 64 :=
.seq RemovedBody778_72 RemovedBody778_73

def RemovedBody778_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody778_74 RemovedBody778_75

def RemovedBody778_77 : StackLang.HolProg 64 :=
.seq RemovedBody778_71 RemovedBody778_76

def RemovedBody778_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody778_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody778_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 5

def RemovedBody778_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody778_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody778_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody778_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody778_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody778_87 : StackLang.HolProg 64 :=
.seq RemovedBody778_85 RemovedBody778_86

def RemovedBody778_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody778_89 : StackLang.HolProg 64 :=
.seq RemovedBody778_87 RemovedBody778_88

def RemovedBody778_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody778_91 : StackLang.HolProg 64 :=
.seq RemovedBody778_89 RemovedBody778_90

def RemovedBody778_92 : StackLang.HolProg 64 :=
.seq RemovedBody778_84 RemovedBody778_91

def RemovedBody778_93 : StackLang.HolProg 64 :=
.seq RemovedBody778_83 RemovedBody778_92

def RemovedBody778_94 : StackLang.HolProg 64 :=
.seq RemovedBody778_82 RemovedBody778_93

def RemovedBody778_95 : StackLang.HolProg 64 :=
.seq RemovedBody778_81 RemovedBody778_94

def RemovedBody778_96 : StackLang.HolProg 64 :=
.seq RemovedBody778_80 RemovedBody778_95

def RemovedBody778_97 : StackLang.HolProg 64 :=
.seq RemovedBody778_79 RemovedBody778_96

def RemovedBody778_98 : StackLang.HolProg 64 :=
.seq RemovedBody778_78 RemovedBody778_97

def RemovedBody778_99 : StackLang.HolProg 64 :=
.seq RemovedBody778_77 RemovedBody778_98

def RemovedBody778_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody778_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody778_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody778_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody778_107 : StackLang.HolProg 64 :=
.seq RemovedBody778_105 RemovedBody778_106

def RemovedBody778_108 : StackLang.HolProg 64 :=
.seq RemovedBody778_104 RemovedBody778_107

def RemovedBody778_109 : StackLang.HolProg 64 :=
.seq RemovedBody778_103 RemovedBody778_108

def RemovedBody778_110 : StackLang.HolProg 64 :=
.seq RemovedBody778_102 RemovedBody778_109

def RemovedBody778_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody778_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody778_113 : StackLang.HolProg 64 :=
.seq RemovedBody778_111 RemovedBody778_112

def RemovedBody778_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody778_110, 0, 778, 4)) (Sum.inl 731) (some (RemovedBody778_113, 778, 5))

def RemovedBody778_115 : StackLang.HolProg 64 :=
.seq RemovedBody778_101 RemovedBody778_114

def RemovedBody778_116 : StackLang.HolProg 64 :=
.seq RemovedBody778_100 RemovedBody778_115

def RemovedBody778_117 : StackLang.HolProg 64 :=
.seq RemovedBody778_99 RemovedBody778_116

def RemovedBody778_118 : StackLang.HolProg 64 :=
.seq RemovedBody778_70 RemovedBody778_117

def RemovedBody778_119 : StackLang.HolProg 64 :=
.seq RemovedBody778_67 RemovedBody778_118

def RemovedBody778_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody778_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody778_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3545#64)

def RemovedBody778_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody778_127 : StackLang.HolProg 64 :=
.seq RemovedBody778_125 RemovedBody778_126

def RemovedBody778_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody778_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody778_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody778_131 : StackLang.HolProg 64 :=
.seq RemovedBody778_129 RemovedBody778_130

def RemovedBody778_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody778_131 RemovedBody778_132

def RemovedBody778_134 : StackLang.HolProg 64 :=
.seq RemovedBody778_128 RemovedBody778_133

def RemovedBody778_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody778_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody778_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 7

def RemovedBody778_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody778_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody778_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody778_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody778_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody778_144 : StackLang.HolProg 64 :=
.seq RemovedBody778_142 RemovedBody778_143

def RemovedBody778_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody778_146 : StackLang.HolProg 64 :=
.seq RemovedBody778_144 RemovedBody778_145

def RemovedBody778_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody778_148 : StackLang.HolProg 64 :=
.seq RemovedBody778_146 RemovedBody778_147

def RemovedBody778_149 : StackLang.HolProg 64 :=
.seq RemovedBody778_141 RemovedBody778_148

def RemovedBody778_150 : StackLang.HolProg 64 :=
.seq RemovedBody778_140 RemovedBody778_149

def RemovedBody778_151 : StackLang.HolProg 64 :=
.seq RemovedBody778_139 RemovedBody778_150

def RemovedBody778_152 : StackLang.HolProg 64 :=
.seq RemovedBody778_138 RemovedBody778_151

def RemovedBody778_153 : StackLang.HolProg 64 :=
.seq RemovedBody778_137 RemovedBody778_152

def RemovedBody778_154 : StackLang.HolProg 64 :=
.seq RemovedBody778_136 RemovedBody778_153

def RemovedBody778_155 : StackLang.HolProg 64 :=
.seq RemovedBody778_135 RemovedBody778_154

def RemovedBody778_156 : StackLang.HolProg 64 :=
.seq RemovedBody778_134 RemovedBody778_155

def RemovedBody778_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody778_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody778_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody778_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody778_164 : StackLang.HolProg 64 :=
.seq RemovedBody778_162 RemovedBody778_163

def RemovedBody778_165 : StackLang.HolProg 64 :=
.seq RemovedBody778_161 RemovedBody778_164

def RemovedBody778_166 : StackLang.HolProg 64 :=
.seq RemovedBody778_160 RemovedBody778_165

def RemovedBody778_167 : StackLang.HolProg 64 :=
.seq RemovedBody778_159 RemovedBody778_166

def RemovedBody778_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody778_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody778_170 : StackLang.HolProg 64 :=
.seq RemovedBody778_168 RemovedBody778_169

def RemovedBody778_171 : StackLang.HolProg 64 :=
.call (some (RemovedBody778_167, 0, 778, 6)) (Sum.inl 730) (some (RemovedBody778_170, 778, 7))

def RemovedBody778_172 : StackLang.HolProg 64 :=
.seq RemovedBody778_158 RemovedBody778_171

def RemovedBody778_173 : StackLang.HolProg 64 :=
.seq RemovedBody778_157 RemovedBody778_172

def RemovedBody778_174 : StackLang.HolProg 64 :=
.seq RemovedBody778_156 RemovedBody778_173

def RemovedBody778_175 : StackLang.HolProg 64 :=
.seq RemovedBody778_127 RemovedBody778_174

def RemovedBody778_176 : StackLang.HolProg 64 :=
.seq RemovedBody778_124 RemovedBody778_175

def RemovedBody778_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody778_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody778_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody778_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody778_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody778_182 : StackLang.HolProg 64 :=
.seq RemovedBody778_180 RemovedBody778_181

def RemovedBody778_183 : StackLang.HolProg 64 :=
.seq RemovedBody778_179 RemovedBody778_182

def RemovedBody778_184 : StackLang.HolProg 64 :=
.seq RemovedBody778_178 RemovedBody778_183

def RemovedBody778_185 : StackLang.HolProg 64 :=
.seq RemovedBody778_177 RemovedBody778_184

def RemovedBody778_186 : StackLang.HolProg 64 :=
.seq RemovedBody778_176 RemovedBody778_185

def RemovedBody778_187 : StackLang.HolProg 64 :=
.seq RemovedBody778_123 RemovedBody778_186

def RemovedBody778_188 : StackLang.HolProg 64 :=
.seq RemovedBody778_122 RemovedBody778_187

def RemovedBody778_189 : StackLang.HolProg 64 :=
.seq RemovedBody778_121 RemovedBody778_188

def RemovedBody778_190 : StackLang.HolProg 64 :=
.seq RemovedBody778_120 RemovedBody778_189

def RemovedBody778_191 : StackLang.HolProg 64 :=
.seq RemovedBody778_119 RemovedBody778_190

def RemovedBody778_192 : StackLang.HolProg 64 :=
.seq RemovedBody778_66 RemovedBody778_191

def RemovedBody778_193 : StackLang.HolProg 64 :=
.seq RemovedBody778_65 RemovedBody778_192

def RemovedBody778_194 : StackLang.HolProg 64 :=
.seq RemovedBody778_64 RemovedBody778_193

def RemovedBody778_195 : StackLang.HolProg 64 :=
.seq RemovedBody778_63 RemovedBody778_194

def RemovedBody778_196 : StackLang.HolProg 64 :=
.seq RemovedBody778_62 RemovedBody778_195

def RemovedBody778_197 : StackLang.HolProg 64 :=
.seq RemovedBody778_9 RemovedBody778_196

def RemovedBody778_198 : StackLang.HolProg 64 :=
.seq RemovedBody778_6 RemovedBody778_197

def Removed778 : Nat × StackLang.HolProg 64 := (778, RemovedBody778_198)
theorem Removed778_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc778 = Removed778 := by
  kernel_rfl
#print axioms Removed778_eq
end InitECandidate.Proofs.BackendStages
