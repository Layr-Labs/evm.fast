import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc859
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody859_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody859_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody859_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody859_3 : StackLang.HolProg 64 :=
.seq RemovedBody859_1 RemovedBody859_2

def RemovedBody859_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody859_3 RemovedBody859_4

def RemovedBody859_6 : StackLang.HolProg 64 :=
.seq RemovedBody859_0 RemovedBody859_5

def RemovedBody859_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 200#64)

def RemovedBody859_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody859_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4364#64)

def RemovedBody859_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody859_13 : StackLang.HolProg 64 :=
.seq RemovedBody859_11 RemovedBody859_12

def RemovedBody859_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody859_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody859_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody859_17 : StackLang.HolProg 64 :=
.seq RemovedBody859_15 RemovedBody859_16

def RemovedBody859_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody859_17 RemovedBody859_18

def RemovedBody859_20 : StackLang.HolProg 64 :=
.seq RemovedBody859_14 RemovedBody859_19

def RemovedBody859_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody859_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody859_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 859 3

def RemovedBody859_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody859_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody859_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody859_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody859_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody859_30 : StackLang.HolProg 64 :=
.seq RemovedBody859_28 RemovedBody859_29

def RemovedBody859_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody859_32 : StackLang.HolProg 64 :=
.seq RemovedBody859_30 RemovedBody859_31

def RemovedBody859_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody859_34 : StackLang.HolProg 64 :=
.seq RemovedBody859_32 RemovedBody859_33

def RemovedBody859_35 : StackLang.HolProg 64 :=
.seq RemovedBody859_27 RemovedBody859_34

def RemovedBody859_36 : StackLang.HolProg 64 :=
.seq RemovedBody859_26 RemovedBody859_35

def RemovedBody859_37 : StackLang.HolProg 64 :=
.seq RemovedBody859_25 RemovedBody859_36

def RemovedBody859_38 : StackLang.HolProg 64 :=
.seq RemovedBody859_24 RemovedBody859_37

def RemovedBody859_39 : StackLang.HolProg 64 :=
.seq RemovedBody859_23 RemovedBody859_38

def RemovedBody859_40 : StackLang.HolProg 64 :=
.seq RemovedBody859_22 RemovedBody859_39

def RemovedBody859_41 : StackLang.HolProg 64 :=
.seq RemovedBody859_21 RemovedBody859_40

def RemovedBody859_42 : StackLang.HolProg 64 :=
.seq RemovedBody859_20 RemovedBody859_41

def RemovedBody859_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody859_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody859_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody859_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody859_50 : StackLang.HolProg 64 :=
.seq RemovedBody859_48 RemovedBody859_49

def RemovedBody859_51 : StackLang.HolProg 64 :=
.seq RemovedBody859_47 RemovedBody859_50

def RemovedBody859_52 : StackLang.HolProg 64 :=
.seq RemovedBody859_46 RemovedBody859_51

def RemovedBody859_53 : StackLang.HolProg 64 :=
.seq RemovedBody859_45 RemovedBody859_52

def RemovedBody859_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody859_56 : StackLang.HolProg 64 :=
.seq RemovedBody859_54 RemovedBody859_55

def RemovedBody859_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody859_53, 0, 859, 2)) (Sum.inl 68) (some (RemovedBody859_56, 859, 3))

def RemovedBody859_58 : StackLang.HolProg 64 :=
.seq RemovedBody859_44 RemovedBody859_57

def RemovedBody859_59 : StackLang.HolProg 64 :=
.seq RemovedBody859_43 RemovedBody859_58

def RemovedBody859_60 : StackLang.HolProg 64 :=
.seq RemovedBody859_42 RemovedBody859_59

def RemovedBody859_61 : StackLang.HolProg 64 :=
.seq RemovedBody859_13 RemovedBody859_60

def RemovedBody859_62 : StackLang.HolProg 64 :=
.seq RemovedBody859_10 RemovedBody859_61

def RemovedBody859_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody859_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody859_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 200#64)

def RemovedBody859_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody859_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4365#64)

def RemovedBody859_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody859_70 : StackLang.HolProg 64 :=
.seq RemovedBody859_68 RemovedBody859_69

def RemovedBody859_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody859_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody859_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody859_74 : StackLang.HolProg 64 :=
.seq RemovedBody859_72 RemovedBody859_73

def RemovedBody859_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody859_74 RemovedBody859_75

def RemovedBody859_77 : StackLang.HolProg 64 :=
.seq RemovedBody859_71 RemovedBody859_76

def RemovedBody859_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody859_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody859_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 859 5

def RemovedBody859_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody859_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody859_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody859_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody859_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody859_87 : StackLang.HolProg 64 :=
.seq RemovedBody859_85 RemovedBody859_86

def RemovedBody859_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody859_89 : StackLang.HolProg 64 :=
.seq RemovedBody859_87 RemovedBody859_88

def RemovedBody859_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody859_91 : StackLang.HolProg 64 :=
.seq RemovedBody859_89 RemovedBody859_90

def RemovedBody859_92 : StackLang.HolProg 64 :=
.seq RemovedBody859_84 RemovedBody859_91

def RemovedBody859_93 : StackLang.HolProg 64 :=
.seq RemovedBody859_83 RemovedBody859_92

def RemovedBody859_94 : StackLang.HolProg 64 :=
.seq RemovedBody859_82 RemovedBody859_93

def RemovedBody859_95 : StackLang.HolProg 64 :=
.seq RemovedBody859_81 RemovedBody859_94

def RemovedBody859_96 : StackLang.HolProg 64 :=
.seq RemovedBody859_80 RemovedBody859_95

def RemovedBody859_97 : StackLang.HolProg 64 :=
.seq RemovedBody859_79 RemovedBody859_96

def RemovedBody859_98 : StackLang.HolProg 64 :=
.seq RemovedBody859_78 RemovedBody859_97

def RemovedBody859_99 : StackLang.HolProg 64 :=
.seq RemovedBody859_77 RemovedBody859_98

def RemovedBody859_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody859_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody859_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody859_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody859_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody859_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody859_108 : StackLang.HolProg 64 :=
.seq RemovedBody859_106 RemovedBody859_107

def RemovedBody859_109 : StackLang.HolProg 64 :=
.seq RemovedBody859_105 RemovedBody859_108

def RemovedBody859_110 : StackLang.HolProg 64 :=
.seq RemovedBody859_104 RemovedBody859_109

def RemovedBody859_111 : StackLang.HolProg 64 :=
.seq RemovedBody859_103 RemovedBody859_110

def RemovedBody859_112 : StackLang.HolProg 64 :=
.seq RemovedBody859_102 RemovedBody859_111

def RemovedBody859_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody859_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody859_115 : StackLang.HolProg 64 :=
.seq RemovedBody859_113 RemovedBody859_114

def RemovedBody859_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody859_117 : StackLang.HolProg 64 :=
.seq RemovedBody859_115 RemovedBody859_116

def RemovedBody859_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody859_112, 0, 859, 4)) (Sum.inl 78) (some (RemovedBody859_117, 859, 5))

def RemovedBody859_119 : StackLang.HolProg 64 :=
.seq RemovedBody859_101 RemovedBody859_118

def RemovedBody859_120 : StackLang.HolProg 64 :=
.seq RemovedBody859_100 RemovedBody859_119

def RemovedBody859_121 : StackLang.HolProg 64 :=
.seq RemovedBody859_99 RemovedBody859_120

def RemovedBody859_122 : StackLang.HolProg 64 :=
.seq RemovedBody859_70 RemovedBody859_121

def RemovedBody859_123 : StackLang.HolProg 64 :=
.seq RemovedBody859_67 RemovedBody859_122

def RemovedBody859_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody859_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody859_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody859_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody859_128 : StackLang.HolProg 64 :=
.seq RemovedBody859_126 RemovedBody859_127

def RemovedBody859_129 : StackLang.HolProg 64 :=
.seq RemovedBody859_125 RemovedBody859_128

def RemovedBody859_130 : StackLang.HolProg 64 :=
.seq RemovedBody859_124 RemovedBody859_129

def RemovedBody859_131 : StackLang.HolProg 64 :=
.seq RemovedBody859_123 RemovedBody859_130

def RemovedBody859_132 : StackLang.HolProg 64 :=
.seq RemovedBody859_66 RemovedBody859_131

def RemovedBody859_133 : StackLang.HolProg 64 :=
.seq RemovedBody859_65 RemovedBody859_132

def RemovedBody859_134 : StackLang.HolProg 64 :=
.seq RemovedBody859_64 RemovedBody859_133

def RemovedBody859_135 : StackLang.HolProg 64 :=
.seq RemovedBody859_63 RemovedBody859_134

def RemovedBody859_136 : StackLang.HolProg 64 :=
.seq RemovedBody859_62 RemovedBody859_135

def RemovedBody859_137 : StackLang.HolProg 64 :=
.seq RemovedBody859_9 RemovedBody859_136

def RemovedBody859_138 : StackLang.HolProg 64 :=
.seq RemovedBody859_8 RemovedBody859_137

def RemovedBody859_139 : StackLang.HolProg 64 :=
.seq RemovedBody859_7 RemovedBody859_138

def RemovedBody859_140 : StackLang.HolProg 64 :=
.seq RemovedBody859_6 RemovedBody859_139

def Removed859 : Nat × StackLang.HolProg 64 := (859, RemovedBody859_140)
theorem Removed859_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc859 = Removed859 := by
  kernel_rfl
#print axioms Removed859_eq
end InitECandidate.Proofs.BackendStages
