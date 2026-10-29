import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc573
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody573_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody573_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody573_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody573_3 : StackLang.HolProg 64 :=
.seq RemovedBody573_1 RemovedBody573_2

def RemovedBody573_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody573_3 RemovedBody573_4

def RemovedBody573_6 : StackLang.HolProg 64 :=
.seq RemovedBody573_0 RemovedBody573_5

def RemovedBody573_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody573_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody573_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1992#64)

def RemovedBody573_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody573_13 : StackLang.HolProg 64 :=
.seq RemovedBody573_11 RemovedBody573_12

def RemovedBody573_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody573_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody573_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody573_17 : StackLang.HolProg 64 :=
.seq RemovedBody573_15 RemovedBody573_16

def RemovedBody573_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody573_17 RemovedBody573_18

def RemovedBody573_20 : StackLang.HolProg 64 :=
.seq RemovedBody573_14 RemovedBody573_19

def RemovedBody573_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody573_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody573_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 3

def RemovedBody573_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody573_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody573_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody573_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody573_30 : StackLang.HolProg 64 :=
.seq RemovedBody573_28 RemovedBody573_29

def RemovedBody573_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody573_32 : StackLang.HolProg 64 :=
.seq RemovedBody573_30 RemovedBody573_31

def RemovedBody573_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_34 : StackLang.HolProg 64 :=
.seq RemovedBody573_32 RemovedBody573_33

def RemovedBody573_35 : StackLang.HolProg 64 :=
.seq RemovedBody573_27 RemovedBody573_34

def RemovedBody573_36 : StackLang.HolProg 64 :=
.seq RemovedBody573_26 RemovedBody573_35

def RemovedBody573_37 : StackLang.HolProg 64 :=
.seq RemovedBody573_25 RemovedBody573_36

def RemovedBody573_38 : StackLang.HolProg 64 :=
.seq RemovedBody573_24 RemovedBody573_37

def RemovedBody573_39 : StackLang.HolProg 64 :=
.seq RemovedBody573_23 RemovedBody573_38

def RemovedBody573_40 : StackLang.HolProg 64 :=
.seq RemovedBody573_22 RemovedBody573_39

def RemovedBody573_41 : StackLang.HolProg 64 :=
.seq RemovedBody573_21 RemovedBody573_40

def RemovedBody573_42 : StackLang.HolProg 64 :=
.seq RemovedBody573_20 RemovedBody573_41

def RemovedBody573_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody573_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody573_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_50 : StackLang.HolProg 64 :=
.seq RemovedBody573_48 RemovedBody573_49

def RemovedBody573_51 : StackLang.HolProg 64 :=
.seq RemovedBody573_47 RemovedBody573_50

def RemovedBody573_52 : StackLang.HolProg 64 :=
.seq RemovedBody573_46 RemovedBody573_51

def RemovedBody573_53 : StackLang.HolProg 64 :=
.seq RemovedBody573_45 RemovedBody573_52

def RemovedBody573_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody573_56 : StackLang.HolProg 64 :=
.seq RemovedBody573_54 RemovedBody573_55

def RemovedBody573_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody573_53, 0, 573, 2)) (Sum.inl 470) (some (RemovedBody573_56, 573, 3))

def RemovedBody573_58 : StackLang.HolProg 64 :=
.seq RemovedBody573_44 RemovedBody573_57

def RemovedBody573_59 : StackLang.HolProg 64 :=
.seq RemovedBody573_43 RemovedBody573_58

def RemovedBody573_60 : StackLang.HolProg 64 :=
.seq RemovedBody573_42 RemovedBody573_59

def RemovedBody573_61 : StackLang.HolProg 64 :=
.seq RemovedBody573_13 RemovedBody573_60

def RemovedBody573_62 : StackLang.HolProg 64 :=
.seq RemovedBody573_10 RemovedBody573_61

def RemovedBody573_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody573_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1993#64)

def RemovedBody573_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody573_68 : StackLang.HolProg 64 :=
.seq RemovedBody573_66 RemovedBody573_67

def RemovedBody573_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody573_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody573_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody573_72 : StackLang.HolProg 64 :=
.seq RemovedBody573_70 RemovedBody573_71

def RemovedBody573_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody573_72 RemovedBody573_73

def RemovedBody573_75 : StackLang.HolProg 64 :=
.seq RemovedBody573_69 RemovedBody573_74

def RemovedBody573_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody573_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody573_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 5

def RemovedBody573_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody573_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody573_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody573_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody573_85 : StackLang.HolProg 64 :=
.seq RemovedBody573_83 RemovedBody573_84

def RemovedBody573_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody573_87 : StackLang.HolProg 64 :=
.seq RemovedBody573_85 RemovedBody573_86

def RemovedBody573_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_89 : StackLang.HolProg 64 :=
.seq RemovedBody573_87 RemovedBody573_88

def RemovedBody573_90 : StackLang.HolProg 64 :=
.seq RemovedBody573_82 RemovedBody573_89

def RemovedBody573_91 : StackLang.HolProg 64 :=
.seq RemovedBody573_81 RemovedBody573_90

def RemovedBody573_92 : StackLang.HolProg 64 :=
.seq RemovedBody573_80 RemovedBody573_91

def RemovedBody573_93 : StackLang.HolProg 64 :=
.seq RemovedBody573_79 RemovedBody573_92

def RemovedBody573_94 : StackLang.HolProg 64 :=
.seq RemovedBody573_78 RemovedBody573_93

def RemovedBody573_95 : StackLang.HolProg 64 :=
.seq RemovedBody573_77 RemovedBody573_94

def RemovedBody573_96 : StackLang.HolProg 64 :=
.seq RemovedBody573_76 RemovedBody573_95

def RemovedBody573_97 : StackLang.HolProg 64 :=
.seq RemovedBody573_75 RemovedBody573_96

def RemovedBody573_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody573_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody573_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody573_105 : StackLang.HolProg 64 :=
.seq RemovedBody573_103 RemovedBody573_104

def RemovedBody573_106 : StackLang.HolProg 64 :=
.seq RemovedBody573_102 RemovedBody573_105

def RemovedBody573_107 : StackLang.HolProg 64 :=
.seq RemovedBody573_101 RemovedBody573_106

def RemovedBody573_108 : StackLang.HolProg 64 :=
.seq RemovedBody573_100 RemovedBody573_107

def RemovedBody573_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody573_111 : StackLang.HolProg 64 :=
.seq RemovedBody573_109 RemovedBody573_110

def RemovedBody573_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody573_108, 0, 573, 4)) (Sum.inl 572) (some (RemovedBody573_111, 573, 5))

def RemovedBody573_113 : StackLang.HolProg 64 :=
.seq RemovedBody573_99 RemovedBody573_112

def RemovedBody573_114 : StackLang.HolProg 64 :=
.seq RemovedBody573_98 RemovedBody573_113

def RemovedBody573_115 : StackLang.HolProg 64 :=
.seq RemovedBody573_97 RemovedBody573_114

def RemovedBody573_116 : StackLang.HolProg 64 :=
.seq RemovedBody573_68 RemovedBody573_115

def RemovedBody573_117 : StackLang.HolProg 64 :=
.seq RemovedBody573_65 RemovedBody573_116

def RemovedBody573_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody573_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def RemovedBody573_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def RemovedBody573_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def RemovedBody573_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 72#64))

def RemovedBody573_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1994#64)

def RemovedBody573_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody573_131 : StackLang.HolProg 64 :=
.seq RemovedBody573_129 RemovedBody573_130

def RemovedBody573_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody573_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody573_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody573_135 : StackLang.HolProg 64 :=
.seq RemovedBody573_133 RemovedBody573_134

def RemovedBody573_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody573_135 RemovedBody573_136

def RemovedBody573_138 : StackLang.HolProg 64 :=
.seq RemovedBody573_132 RemovedBody573_137

def RemovedBody573_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody573_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody573_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 7

def RemovedBody573_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody573_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody573_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody573_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody573_148 : StackLang.HolProg 64 :=
.seq RemovedBody573_146 RemovedBody573_147

def RemovedBody573_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody573_150 : StackLang.HolProg 64 :=
.seq RemovedBody573_148 RemovedBody573_149

def RemovedBody573_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_152 : StackLang.HolProg 64 :=
.seq RemovedBody573_150 RemovedBody573_151

def RemovedBody573_153 : StackLang.HolProg 64 :=
.seq RemovedBody573_145 RemovedBody573_152

def RemovedBody573_154 : StackLang.HolProg 64 :=
.seq RemovedBody573_144 RemovedBody573_153

def RemovedBody573_155 : StackLang.HolProg 64 :=
.seq RemovedBody573_143 RemovedBody573_154

def RemovedBody573_156 : StackLang.HolProg 64 :=
.seq RemovedBody573_142 RemovedBody573_155

def RemovedBody573_157 : StackLang.HolProg 64 :=
.seq RemovedBody573_141 RemovedBody573_156

def RemovedBody573_158 : StackLang.HolProg 64 :=
.seq RemovedBody573_140 RemovedBody573_157

def RemovedBody573_159 : StackLang.HolProg 64 :=
.seq RemovedBody573_139 RemovedBody573_158

def RemovedBody573_160 : StackLang.HolProg 64 :=
.seq RemovedBody573_138 RemovedBody573_159

def RemovedBody573_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody573_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody573_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_168 : StackLang.HolProg 64 :=
.seq RemovedBody573_166 RemovedBody573_167

def RemovedBody573_169 : StackLang.HolProg 64 :=
.seq RemovedBody573_165 RemovedBody573_168

def RemovedBody573_170 : StackLang.HolProg 64 :=
.seq RemovedBody573_164 RemovedBody573_169

def RemovedBody573_171 : StackLang.HolProg 64 :=
.seq RemovedBody573_163 RemovedBody573_170

def RemovedBody573_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody573_174 : StackLang.HolProg 64 :=
.seq RemovedBody573_172 RemovedBody573_173

def RemovedBody573_175 : StackLang.HolProg 64 :=
.call (some (RemovedBody573_171, 0, 573, 6)) (Sum.inl 476) (some (RemovedBody573_174, 573, 7))

def RemovedBody573_176 : StackLang.HolProg 64 :=
.seq RemovedBody573_162 RemovedBody573_175

def RemovedBody573_177 : StackLang.HolProg 64 :=
.seq RemovedBody573_161 RemovedBody573_176

def RemovedBody573_178 : StackLang.HolProg 64 :=
.seq RemovedBody573_160 RemovedBody573_177

def RemovedBody573_179 : StackLang.HolProg 64 :=
.seq RemovedBody573_131 RemovedBody573_178

def RemovedBody573_180 : StackLang.HolProg 64 :=
.seq RemovedBody573_128 RemovedBody573_179

def RemovedBody573_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody573_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody573_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1995#64)

def RemovedBody573_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody573_187 : StackLang.HolProg 64 :=
.seq RemovedBody573_185 RemovedBody573_186

def RemovedBody573_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody573_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody573_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody573_191 : StackLang.HolProg 64 :=
.seq RemovedBody573_189 RemovedBody573_190

def RemovedBody573_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody573_191 RemovedBody573_192

def RemovedBody573_194 : StackLang.HolProg 64 :=
.seq RemovedBody573_188 RemovedBody573_193

def RemovedBody573_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody573_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody573_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 9

def RemovedBody573_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody573_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody573_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody573_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody573_204 : StackLang.HolProg 64 :=
.seq RemovedBody573_202 RemovedBody573_203

def RemovedBody573_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody573_206 : StackLang.HolProg 64 :=
.seq RemovedBody573_204 RemovedBody573_205

def RemovedBody573_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_208 : StackLang.HolProg 64 :=
.seq RemovedBody573_206 RemovedBody573_207

def RemovedBody573_209 : StackLang.HolProg 64 :=
.seq RemovedBody573_201 RemovedBody573_208

def RemovedBody573_210 : StackLang.HolProg 64 :=
.seq RemovedBody573_200 RemovedBody573_209

def RemovedBody573_211 : StackLang.HolProg 64 :=
.seq RemovedBody573_199 RemovedBody573_210

def RemovedBody573_212 : StackLang.HolProg 64 :=
.seq RemovedBody573_198 RemovedBody573_211

def RemovedBody573_213 : StackLang.HolProg 64 :=
.seq RemovedBody573_197 RemovedBody573_212

def RemovedBody573_214 : StackLang.HolProg 64 :=
.seq RemovedBody573_196 RemovedBody573_213

def RemovedBody573_215 : StackLang.HolProg 64 :=
.seq RemovedBody573_195 RemovedBody573_214

def RemovedBody573_216 : StackLang.HolProg 64 :=
.seq RemovedBody573_194 RemovedBody573_215

def RemovedBody573_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody573_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody573_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody573_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody573_224 : StackLang.HolProg 64 :=
.seq RemovedBody573_222 RemovedBody573_223

def RemovedBody573_225 : StackLang.HolProg 64 :=
.seq RemovedBody573_221 RemovedBody573_224

def RemovedBody573_226 : StackLang.HolProg 64 :=
.seq RemovedBody573_220 RemovedBody573_225

def RemovedBody573_227 : StackLang.HolProg 64 :=
.seq RemovedBody573_219 RemovedBody573_226

def RemovedBody573_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody573_229 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody573_230 : StackLang.HolProg 64 :=
.seq RemovedBody573_228 RemovedBody573_229

def RemovedBody573_231 : StackLang.HolProg 64 :=
.call (some (RemovedBody573_227, 0, 573, 8)) (Sum.inl 490) (some (RemovedBody573_230, 573, 9))

def RemovedBody573_232 : StackLang.HolProg 64 :=
.seq RemovedBody573_218 RemovedBody573_231

def RemovedBody573_233 : StackLang.HolProg 64 :=
.seq RemovedBody573_217 RemovedBody573_232

def RemovedBody573_234 : StackLang.HolProg 64 :=
.seq RemovedBody573_216 RemovedBody573_233

def RemovedBody573_235 : StackLang.HolProg 64 :=
.seq RemovedBody573_187 RemovedBody573_234

def RemovedBody573_236 : StackLang.HolProg 64 :=
.seq RemovedBody573_184 RemovedBody573_235

def RemovedBody573_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody573_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody573_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody573_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody573_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody573_242 : StackLang.HolProg 64 :=
.seq RemovedBody573_240 RemovedBody573_241

def RemovedBody573_243 : StackLang.HolProg 64 :=
.seq RemovedBody573_239 RemovedBody573_242

def RemovedBody573_244 : StackLang.HolProg 64 :=
.seq RemovedBody573_238 RemovedBody573_243

def RemovedBody573_245 : StackLang.HolProg 64 :=
.seq RemovedBody573_237 RemovedBody573_244

def RemovedBody573_246 : StackLang.HolProg 64 :=
.seq RemovedBody573_236 RemovedBody573_245

def RemovedBody573_247 : StackLang.HolProg 64 :=
.seq RemovedBody573_183 RemovedBody573_246

def RemovedBody573_248 : StackLang.HolProg 64 :=
.seq RemovedBody573_182 RemovedBody573_247

def RemovedBody573_249 : StackLang.HolProg 64 :=
.seq RemovedBody573_181 RemovedBody573_248

def RemovedBody573_250 : StackLang.HolProg 64 :=
.seq RemovedBody573_180 RemovedBody573_249

def RemovedBody573_251 : StackLang.HolProg 64 :=
.seq RemovedBody573_127 RemovedBody573_250

def RemovedBody573_252 : StackLang.HolProg 64 :=
.seq RemovedBody573_126 RemovedBody573_251

def RemovedBody573_253 : StackLang.HolProg 64 :=
.seq RemovedBody573_125 RemovedBody573_252

def RemovedBody573_254 : StackLang.HolProg 64 :=
.seq RemovedBody573_124 RemovedBody573_253

def RemovedBody573_255 : StackLang.HolProg 64 :=
.seq RemovedBody573_123 RemovedBody573_254

def RemovedBody573_256 : StackLang.HolProg 64 :=
.seq RemovedBody573_122 RemovedBody573_255

def RemovedBody573_257 : StackLang.HolProg 64 :=
.seq RemovedBody573_121 RemovedBody573_256

def RemovedBody573_258 : StackLang.HolProg 64 :=
.seq RemovedBody573_120 RemovedBody573_257

def RemovedBody573_259 : StackLang.HolProg 64 :=
.seq RemovedBody573_119 RemovedBody573_258

def RemovedBody573_260 : StackLang.HolProg 64 :=
.seq RemovedBody573_118 RemovedBody573_259

def RemovedBody573_261 : StackLang.HolProg 64 :=
.seq RemovedBody573_117 RemovedBody573_260

def RemovedBody573_262 : StackLang.HolProg 64 :=
.seq RemovedBody573_64 RemovedBody573_261

def RemovedBody573_263 : StackLang.HolProg 64 :=
.seq RemovedBody573_63 RemovedBody573_262

def RemovedBody573_264 : StackLang.HolProg 64 :=
.seq RemovedBody573_62 RemovedBody573_263

def RemovedBody573_265 : StackLang.HolProg 64 :=
.seq RemovedBody573_9 RemovedBody573_264

def RemovedBody573_266 : StackLang.HolProg 64 :=
.seq RemovedBody573_8 RemovedBody573_265

def RemovedBody573_267 : StackLang.HolProg 64 :=
.seq RemovedBody573_7 RemovedBody573_266

def RemovedBody573_268 : StackLang.HolProg 64 :=
.seq RemovedBody573_6 RemovedBody573_267

def Removed573 : Nat × StackLang.HolProg 64 := (573, RemovedBody573_268)
theorem Removed573_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc573 = Removed573 := by
  kernel_rfl
#print axioms Removed573_eq
end InitECandidate.Proofs.BackendStages
