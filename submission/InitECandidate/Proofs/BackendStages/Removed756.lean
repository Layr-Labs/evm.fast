import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc756
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody756_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody756_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody756_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody756_3 : StackLang.HolProg 64 :=
.seq RemovedBody756_1 RemovedBody756_2

def RemovedBody756_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody756_3 RemovedBody756_4

def RemovedBody756_6 : StackLang.HolProg 64 :=
.seq RemovedBody756_0 RemovedBody756_5

def RemovedBody756_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody756_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody756_9 : StackLang.HolProg 64 :=
.seq RemovedBody756_7 RemovedBody756_8

def RemovedBody756_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3372#64)

def RemovedBody756_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody756_13 : StackLang.HolProg 64 :=
.seq RemovedBody756_11 RemovedBody756_12

def RemovedBody756_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody756_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody756_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody756_17 : StackLang.HolProg 64 :=
.seq RemovedBody756_15 RemovedBody756_16

def RemovedBody756_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody756_17 RemovedBody756_18

def RemovedBody756_20 : StackLang.HolProg 64 :=
.seq RemovedBody756_14 RemovedBody756_19

def RemovedBody756_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody756_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody756_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 756 3

def RemovedBody756_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody756_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody756_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody756_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody756_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody756_30 : StackLang.HolProg 64 :=
.seq RemovedBody756_28 RemovedBody756_29

def RemovedBody756_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody756_32 : StackLang.HolProg 64 :=
.seq RemovedBody756_30 RemovedBody756_31

def RemovedBody756_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody756_34 : StackLang.HolProg 64 :=
.seq RemovedBody756_32 RemovedBody756_33

def RemovedBody756_35 : StackLang.HolProg 64 :=
.seq RemovedBody756_27 RemovedBody756_34

def RemovedBody756_36 : StackLang.HolProg 64 :=
.seq RemovedBody756_26 RemovedBody756_35

def RemovedBody756_37 : StackLang.HolProg 64 :=
.seq RemovedBody756_25 RemovedBody756_36

def RemovedBody756_38 : StackLang.HolProg 64 :=
.seq RemovedBody756_24 RemovedBody756_37

def RemovedBody756_39 : StackLang.HolProg 64 :=
.seq RemovedBody756_23 RemovedBody756_38

def RemovedBody756_40 : StackLang.HolProg 64 :=
.seq RemovedBody756_22 RemovedBody756_39

def RemovedBody756_41 : StackLang.HolProg 64 :=
.seq RemovedBody756_21 RemovedBody756_40

def RemovedBody756_42 : StackLang.HolProg 64 :=
.seq RemovedBody756_20 RemovedBody756_41

def RemovedBody756_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody756_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody756_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody756_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody756_50 : StackLang.HolProg 64 :=
.seq RemovedBody756_48 RemovedBody756_49

def RemovedBody756_51 : StackLang.HolProg 64 :=
.seq RemovedBody756_47 RemovedBody756_50

def RemovedBody756_52 : StackLang.HolProg 64 :=
.seq RemovedBody756_46 RemovedBody756_51

def RemovedBody756_53 : StackLang.HolProg 64 :=
.seq RemovedBody756_45 RemovedBody756_52

def RemovedBody756_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody756_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody756_56 : StackLang.HolProg 64 :=
.seq RemovedBody756_54 RemovedBody756_55

def RemovedBody756_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody756_53, 0, 756, 2)) (Sum.inl 748) (some (RemovedBody756_56, 756, 3))

def RemovedBody756_58 : StackLang.HolProg 64 :=
.seq RemovedBody756_44 RemovedBody756_57

def RemovedBody756_59 : StackLang.HolProg 64 :=
.seq RemovedBody756_43 RemovedBody756_58

def RemovedBody756_60 : StackLang.HolProg 64 :=
.seq RemovedBody756_42 RemovedBody756_59

def RemovedBody756_61 : StackLang.HolProg 64 :=
.seq RemovedBody756_13 RemovedBody756_60

def RemovedBody756_62 : StackLang.HolProg 64 :=
.seq RemovedBody756_10 RemovedBody756_61

def RemovedBody756_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody756_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody756_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3373#64)

def RemovedBody756_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody756_70 : StackLang.HolProg 64 :=
.seq RemovedBody756_68 RemovedBody756_69

def RemovedBody756_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody756_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody756_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody756_74 : StackLang.HolProg 64 :=
.seq RemovedBody756_72 RemovedBody756_73

def RemovedBody756_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody756_74 RemovedBody756_75

def RemovedBody756_77 : StackLang.HolProg 64 :=
.seq RemovedBody756_71 RemovedBody756_76

def RemovedBody756_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody756_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody756_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 756 5

def RemovedBody756_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody756_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody756_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody756_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody756_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody756_87 : StackLang.HolProg 64 :=
.seq RemovedBody756_85 RemovedBody756_86

def RemovedBody756_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody756_89 : StackLang.HolProg 64 :=
.seq RemovedBody756_87 RemovedBody756_88

def RemovedBody756_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody756_91 : StackLang.HolProg 64 :=
.seq RemovedBody756_89 RemovedBody756_90

def RemovedBody756_92 : StackLang.HolProg 64 :=
.seq RemovedBody756_84 RemovedBody756_91

def RemovedBody756_93 : StackLang.HolProg 64 :=
.seq RemovedBody756_83 RemovedBody756_92

def RemovedBody756_94 : StackLang.HolProg 64 :=
.seq RemovedBody756_82 RemovedBody756_93

def RemovedBody756_95 : StackLang.HolProg 64 :=
.seq RemovedBody756_81 RemovedBody756_94

def RemovedBody756_96 : StackLang.HolProg 64 :=
.seq RemovedBody756_80 RemovedBody756_95

def RemovedBody756_97 : StackLang.HolProg 64 :=
.seq RemovedBody756_79 RemovedBody756_96

def RemovedBody756_98 : StackLang.HolProg 64 :=
.seq RemovedBody756_78 RemovedBody756_97

def RemovedBody756_99 : StackLang.HolProg 64 :=
.seq RemovedBody756_77 RemovedBody756_98

def RemovedBody756_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody756_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody756_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody756_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody756_107 : StackLang.HolProg 64 :=
.seq RemovedBody756_105 RemovedBody756_106

def RemovedBody756_108 : StackLang.HolProg 64 :=
.seq RemovedBody756_104 RemovedBody756_107

def RemovedBody756_109 : StackLang.HolProg 64 :=
.seq RemovedBody756_103 RemovedBody756_108

def RemovedBody756_110 : StackLang.HolProg 64 :=
.seq RemovedBody756_102 RemovedBody756_109

def RemovedBody756_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody756_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody756_113 : StackLang.HolProg 64 :=
.seq RemovedBody756_111 RemovedBody756_112

def RemovedBody756_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody756_110, 0, 756, 4)) (Sum.inl 747) (some (RemovedBody756_113, 756, 5))

def RemovedBody756_115 : StackLang.HolProg 64 :=
.seq RemovedBody756_101 RemovedBody756_114

def RemovedBody756_116 : StackLang.HolProg 64 :=
.seq RemovedBody756_100 RemovedBody756_115

def RemovedBody756_117 : StackLang.HolProg 64 :=
.seq RemovedBody756_99 RemovedBody756_116

def RemovedBody756_118 : StackLang.HolProg 64 :=
.seq RemovedBody756_70 RemovedBody756_117

def RemovedBody756_119 : StackLang.HolProg 64 :=
.seq RemovedBody756_67 RemovedBody756_118

def RemovedBody756_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody756_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody756_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody756_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody756_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody756_125 : StackLang.HolProg 64 :=
.seq RemovedBody756_123 RemovedBody756_124

def RemovedBody756_126 : StackLang.HolProg 64 :=
.seq RemovedBody756_122 RemovedBody756_125

def RemovedBody756_127 : StackLang.HolProg 64 :=
.seq RemovedBody756_121 RemovedBody756_126

def RemovedBody756_128 : StackLang.HolProg 64 :=
.seq RemovedBody756_120 RemovedBody756_127

def RemovedBody756_129 : StackLang.HolProg 64 :=
.seq RemovedBody756_119 RemovedBody756_128

def RemovedBody756_130 : StackLang.HolProg 64 :=
.seq RemovedBody756_66 RemovedBody756_129

def RemovedBody756_131 : StackLang.HolProg 64 :=
.seq RemovedBody756_65 RemovedBody756_130

def RemovedBody756_132 : StackLang.HolProg 64 :=
.seq RemovedBody756_64 RemovedBody756_131

def RemovedBody756_133 : StackLang.HolProg 64 :=
.seq RemovedBody756_63 RemovedBody756_132

def RemovedBody756_134 : StackLang.HolProg 64 :=
.seq RemovedBody756_62 RemovedBody756_133

def RemovedBody756_135 : StackLang.HolProg 64 :=
.seq RemovedBody756_9 RemovedBody756_134

def RemovedBody756_136 : StackLang.HolProg 64 :=
.seq RemovedBody756_6 RemovedBody756_135

def Removed756 : Nat × StackLang.HolProg 64 := (756, RemovedBody756_136)
theorem Removed756_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc756 = Removed756 := by
  kernel_rfl
#print axioms Removed756_eq
end InitECandidate.Proofs.BackendStages
