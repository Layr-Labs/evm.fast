import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc580
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody580_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody580_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody580_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody580_3 : StackLang.HolProg 64 :=
.seq RemovedBody580_1 RemovedBody580_2

def RemovedBody580_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody580_3 RemovedBody580_4

def RemovedBody580_6 : StackLang.HolProg 64 :=
.seq RemovedBody580_0 RemovedBody580_5

def RemovedBody580_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody580_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody580_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2031#64)

def RemovedBody580_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody580_13 : StackLang.HolProg 64 :=
.seq RemovedBody580_11 RemovedBody580_12

def RemovedBody580_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody580_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody580_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody580_17 : StackLang.HolProg 64 :=
.seq RemovedBody580_15 RemovedBody580_16

def RemovedBody580_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody580_17 RemovedBody580_18

def RemovedBody580_20 : StackLang.HolProg 64 :=
.seq RemovedBody580_14 RemovedBody580_19

def RemovedBody580_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody580_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody580_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 3

def RemovedBody580_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody580_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody580_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody580_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody580_30 : StackLang.HolProg 64 :=
.seq RemovedBody580_28 RemovedBody580_29

def RemovedBody580_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody580_32 : StackLang.HolProg 64 :=
.seq RemovedBody580_30 RemovedBody580_31

def RemovedBody580_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_34 : StackLang.HolProg 64 :=
.seq RemovedBody580_32 RemovedBody580_33

def RemovedBody580_35 : StackLang.HolProg 64 :=
.seq RemovedBody580_27 RemovedBody580_34

def RemovedBody580_36 : StackLang.HolProg 64 :=
.seq RemovedBody580_26 RemovedBody580_35

def RemovedBody580_37 : StackLang.HolProg 64 :=
.seq RemovedBody580_25 RemovedBody580_36

def RemovedBody580_38 : StackLang.HolProg 64 :=
.seq RemovedBody580_24 RemovedBody580_37

def RemovedBody580_39 : StackLang.HolProg 64 :=
.seq RemovedBody580_23 RemovedBody580_38

def RemovedBody580_40 : StackLang.HolProg 64 :=
.seq RemovedBody580_22 RemovedBody580_39

def RemovedBody580_41 : StackLang.HolProg 64 :=
.seq RemovedBody580_21 RemovedBody580_40

def RemovedBody580_42 : StackLang.HolProg 64 :=
.seq RemovedBody580_20 RemovedBody580_41

def RemovedBody580_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody580_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody580_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_50 : StackLang.HolProg 64 :=
.seq RemovedBody580_48 RemovedBody580_49

def RemovedBody580_51 : StackLang.HolProg 64 :=
.seq RemovedBody580_47 RemovedBody580_50

def RemovedBody580_52 : StackLang.HolProg 64 :=
.seq RemovedBody580_46 RemovedBody580_51

def RemovedBody580_53 : StackLang.HolProg 64 :=
.seq RemovedBody580_45 RemovedBody580_52

def RemovedBody580_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody580_56 : StackLang.HolProg 64 :=
.seq RemovedBody580_54 RemovedBody580_55

def RemovedBody580_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody580_53, 0, 580, 2)) (Sum.inl 470) (some (RemovedBody580_56, 580, 3))

def RemovedBody580_58 : StackLang.HolProg 64 :=
.seq RemovedBody580_44 RemovedBody580_57

def RemovedBody580_59 : StackLang.HolProg 64 :=
.seq RemovedBody580_43 RemovedBody580_58

def RemovedBody580_60 : StackLang.HolProg 64 :=
.seq RemovedBody580_42 RemovedBody580_59

def RemovedBody580_61 : StackLang.HolProg 64 :=
.seq RemovedBody580_13 RemovedBody580_60

def RemovedBody580_62 : StackLang.HolProg 64 :=
.seq RemovedBody580_10 RemovedBody580_61

def RemovedBody580_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody580_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2032#64)

def RemovedBody580_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody580_68 : StackLang.HolProg 64 :=
.seq RemovedBody580_66 RemovedBody580_67

def RemovedBody580_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody580_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody580_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody580_72 : StackLang.HolProg 64 :=
.seq RemovedBody580_70 RemovedBody580_71

def RemovedBody580_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody580_72 RemovedBody580_73

def RemovedBody580_75 : StackLang.HolProg 64 :=
.seq RemovedBody580_69 RemovedBody580_74

def RemovedBody580_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody580_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody580_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 5

def RemovedBody580_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody580_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody580_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody580_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody580_85 : StackLang.HolProg 64 :=
.seq RemovedBody580_83 RemovedBody580_84

def RemovedBody580_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody580_87 : StackLang.HolProg 64 :=
.seq RemovedBody580_85 RemovedBody580_86

def RemovedBody580_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_89 : StackLang.HolProg 64 :=
.seq RemovedBody580_87 RemovedBody580_88

def RemovedBody580_90 : StackLang.HolProg 64 :=
.seq RemovedBody580_82 RemovedBody580_89

def RemovedBody580_91 : StackLang.HolProg 64 :=
.seq RemovedBody580_81 RemovedBody580_90

def RemovedBody580_92 : StackLang.HolProg 64 :=
.seq RemovedBody580_80 RemovedBody580_91

def RemovedBody580_93 : StackLang.HolProg 64 :=
.seq RemovedBody580_79 RemovedBody580_92

def RemovedBody580_94 : StackLang.HolProg 64 :=
.seq RemovedBody580_78 RemovedBody580_93

def RemovedBody580_95 : StackLang.HolProg 64 :=
.seq RemovedBody580_77 RemovedBody580_94

def RemovedBody580_96 : StackLang.HolProg 64 :=
.seq RemovedBody580_76 RemovedBody580_95

def RemovedBody580_97 : StackLang.HolProg 64 :=
.seq RemovedBody580_75 RemovedBody580_96

def RemovedBody580_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody580_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody580_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody580_105 : StackLang.HolProg 64 :=
.seq RemovedBody580_103 RemovedBody580_104

def RemovedBody580_106 : StackLang.HolProg 64 :=
.seq RemovedBody580_102 RemovedBody580_105

def RemovedBody580_107 : StackLang.HolProg 64 :=
.seq RemovedBody580_101 RemovedBody580_106

def RemovedBody580_108 : StackLang.HolProg 64 :=
.seq RemovedBody580_100 RemovedBody580_107

def RemovedBody580_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody580_111 : StackLang.HolProg 64 :=
.seq RemovedBody580_109 RemovedBody580_110

def RemovedBody580_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody580_108, 0, 580, 4)) (Sum.inl 572) (some (RemovedBody580_111, 580, 5))

def RemovedBody580_113 : StackLang.HolProg 64 :=
.seq RemovedBody580_99 RemovedBody580_112

def RemovedBody580_114 : StackLang.HolProg 64 :=
.seq RemovedBody580_98 RemovedBody580_113

def RemovedBody580_115 : StackLang.HolProg 64 :=
.seq RemovedBody580_97 RemovedBody580_114

def RemovedBody580_116 : StackLang.HolProg 64 :=
.seq RemovedBody580_68 RemovedBody580_115

def RemovedBody580_117 : StackLang.HolProg 64 :=
.seq RemovedBody580_65 RemovedBody580_116

def RemovedBody580_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody580_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody580_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2033#64)

def RemovedBody580_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody580_125 : StackLang.HolProg 64 :=
.seq RemovedBody580_123 RemovedBody580_124

def RemovedBody580_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody580_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody580_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody580_129 : StackLang.HolProg 64 :=
.seq RemovedBody580_127 RemovedBody580_128

def RemovedBody580_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody580_129 RemovedBody580_130

def RemovedBody580_132 : StackLang.HolProg 64 :=
.seq RemovedBody580_126 RemovedBody580_131

def RemovedBody580_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody580_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody580_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 7

def RemovedBody580_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody580_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody580_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody580_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody580_142 : StackLang.HolProg 64 :=
.seq RemovedBody580_140 RemovedBody580_141

def RemovedBody580_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody580_144 : StackLang.HolProg 64 :=
.seq RemovedBody580_142 RemovedBody580_143

def RemovedBody580_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_146 : StackLang.HolProg 64 :=
.seq RemovedBody580_144 RemovedBody580_145

def RemovedBody580_147 : StackLang.HolProg 64 :=
.seq RemovedBody580_139 RemovedBody580_146

def RemovedBody580_148 : StackLang.HolProg 64 :=
.seq RemovedBody580_138 RemovedBody580_147

def RemovedBody580_149 : StackLang.HolProg 64 :=
.seq RemovedBody580_137 RemovedBody580_148

def RemovedBody580_150 : StackLang.HolProg 64 :=
.seq RemovedBody580_136 RemovedBody580_149

def RemovedBody580_151 : StackLang.HolProg 64 :=
.seq RemovedBody580_135 RemovedBody580_150

def RemovedBody580_152 : StackLang.HolProg 64 :=
.seq RemovedBody580_134 RemovedBody580_151

def RemovedBody580_153 : StackLang.HolProg 64 :=
.seq RemovedBody580_133 RemovedBody580_152

def RemovedBody580_154 : StackLang.HolProg 64 :=
.seq RemovedBody580_132 RemovedBody580_153

def RemovedBody580_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody580_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody580_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_162 : StackLang.HolProg 64 :=
.seq RemovedBody580_160 RemovedBody580_161

def RemovedBody580_163 : StackLang.HolProg 64 :=
.seq RemovedBody580_159 RemovedBody580_162

def RemovedBody580_164 : StackLang.HolProg 64 :=
.seq RemovedBody580_158 RemovedBody580_163

def RemovedBody580_165 : StackLang.HolProg 64 :=
.seq RemovedBody580_157 RemovedBody580_164

def RemovedBody580_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody580_168 : StackLang.HolProg 64 :=
.seq RemovedBody580_166 RemovedBody580_167

def RemovedBody580_169 : StackLang.HolProg 64 :=
.call (some (RemovedBody580_165, 0, 580, 6)) (Sum.inl 477) (some (RemovedBody580_168, 580, 7))

def RemovedBody580_170 : StackLang.HolProg 64 :=
.seq RemovedBody580_156 RemovedBody580_169

def RemovedBody580_171 : StackLang.HolProg 64 :=
.seq RemovedBody580_155 RemovedBody580_170

def RemovedBody580_172 : StackLang.HolProg 64 :=
.seq RemovedBody580_154 RemovedBody580_171

def RemovedBody580_173 : StackLang.HolProg 64 :=
.seq RemovedBody580_125 RemovedBody580_172

def RemovedBody580_174 : StackLang.HolProg 64 :=
.seq RemovedBody580_122 RemovedBody580_173

def RemovedBody580_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody580_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody580_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2034#64)

def RemovedBody580_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody580_181 : StackLang.HolProg 64 :=
.seq RemovedBody580_179 RemovedBody580_180

def RemovedBody580_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody580_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody580_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody580_185 : StackLang.HolProg 64 :=
.seq RemovedBody580_183 RemovedBody580_184

def RemovedBody580_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody580_185 RemovedBody580_186

def RemovedBody580_188 : StackLang.HolProg 64 :=
.seq RemovedBody580_182 RemovedBody580_187

def RemovedBody580_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody580_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody580_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 9

def RemovedBody580_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody580_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody580_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody580_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody580_198 : StackLang.HolProg 64 :=
.seq RemovedBody580_196 RemovedBody580_197

def RemovedBody580_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody580_200 : StackLang.HolProg 64 :=
.seq RemovedBody580_198 RemovedBody580_199

def RemovedBody580_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_202 : StackLang.HolProg 64 :=
.seq RemovedBody580_200 RemovedBody580_201

def RemovedBody580_203 : StackLang.HolProg 64 :=
.seq RemovedBody580_195 RemovedBody580_202

def RemovedBody580_204 : StackLang.HolProg 64 :=
.seq RemovedBody580_194 RemovedBody580_203

def RemovedBody580_205 : StackLang.HolProg 64 :=
.seq RemovedBody580_193 RemovedBody580_204

def RemovedBody580_206 : StackLang.HolProg 64 :=
.seq RemovedBody580_192 RemovedBody580_205

def RemovedBody580_207 : StackLang.HolProg 64 :=
.seq RemovedBody580_191 RemovedBody580_206

def RemovedBody580_208 : StackLang.HolProg 64 :=
.seq RemovedBody580_190 RemovedBody580_207

def RemovedBody580_209 : StackLang.HolProg 64 :=
.seq RemovedBody580_189 RemovedBody580_208

def RemovedBody580_210 : StackLang.HolProg 64 :=
.seq RemovedBody580_188 RemovedBody580_209

def RemovedBody580_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody580_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody580_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody580_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody580_218 : StackLang.HolProg 64 :=
.seq RemovedBody580_216 RemovedBody580_217

def RemovedBody580_219 : StackLang.HolProg 64 :=
.seq RemovedBody580_215 RemovedBody580_218

def RemovedBody580_220 : StackLang.HolProg 64 :=
.seq RemovedBody580_214 RemovedBody580_219

def RemovedBody580_221 : StackLang.HolProg 64 :=
.seq RemovedBody580_213 RemovedBody580_220

def RemovedBody580_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody580_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody580_224 : StackLang.HolProg 64 :=
.seq RemovedBody580_222 RemovedBody580_223

def RemovedBody580_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody580_221, 0, 580, 8)) (Sum.inl 490) (some (RemovedBody580_224, 580, 9))

def RemovedBody580_226 : StackLang.HolProg 64 :=
.seq RemovedBody580_212 RemovedBody580_225

def RemovedBody580_227 : StackLang.HolProg 64 :=
.seq RemovedBody580_211 RemovedBody580_226

def RemovedBody580_228 : StackLang.HolProg 64 :=
.seq RemovedBody580_210 RemovedBody580_227

def RemovedBody580_229 : StackLang.HolProg 64 :=
.seq RemovedBody580_181 RemovedBody580_228

def RemovedBody580_230 : StackLang.HolProg 64 :=
.seq RemovedBody580_178 RemovedBody580_229

def RemovedBody580_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody580_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody580_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody580_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody580_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody580_236 : StackLang.HolProg 64 :=
.seq RemovedBody580_234 RemovedBody580_235

def RemovedBody580_237 : StackLang.HolProg 64 :=
.seq RemovedBody580_233 RemovedBody580_236

def RemovedBody580_238 : StackLang.HolProg 64 :=
.seq RemovedBody580_232 RemovedBody580_237

def RemovedBody580_239 : StackLang.HolProg 64 :=
.seq RemovedBody580_231 RemovedBody580_238

def RemovedBody580_240 : StackLang.HolProg 64 :=
.seq RemovedBody580_230 RemovedBody580_239

def RemovedBody580_241 : StackLang.HolProg 64 :=
.seq RemovedBody580_177 RemovedBody580_240

def RemovedBody580_242 : StackLang.HolProg 64 :=
.seq RemovedBody580_176 RemovedBody580_241

def RemovedBody580_243 : StackLang.HolProg 64 :=
.seq RemovedBody580_175 RemovedBody580_242

def RemovedBody580_244 : StackLang.HolProg 64 :=
.seq RemovedBody580_174 RemovedBody580_243

def RemovedBody580_245 : StackLang.HolProg 64 :=
.seq RemovedBody580_121 RemovedBody580_244

def RemovedBody580_246 : StackLang.HolProg 64 :=
.seq RemovedBody580_120 RemovedBody580_245

def RemovedBody580_247 : StackLang.HolProg 64 :=
.seq RemovedBody580_119 RemovedBody580_246

def RemovedBody580_248 : StackLang.HolProg 64 :=
.seq RemovedBody580_118 RemovedBody580_247

def RemovedBody580_249 : StackLang.HolProg 64 :=
.seq RemovedBody580_117 RemovedBody580_248

def RemovedBody580_250 : StackLang.HolProg 64 :=
.seq RemovedBody580_64 RemovedBody580_249

def RemovedBody580_251 : StackLang.HolProg 64 :=
.seq RemovedBody580_63 RemovedBody580_250

def RemovedBody580_252 : StackLang.HolProg 64 :=
.seq RemovedBody580_62 RemovedBody580_251

def RemovedBody580_253 : StackLang.HolProg 64 :=
.seq RemovedBody580_9 RemovedBody580_252

def RemovedBody580_254 : StackLang.HolProg 64 :=
.seq RemovedBody580_8 RemovedBody580_253

def RemovedBody580_255 : StackLang.HolProg 64 :=
.seq RemovedBody580_7 RemovedBody580_254

def RemovedBody580_256 : StackLang.HolProg 64 :=
.seq RemovedBody580_6 RemovedBody580_255

def Removed580 : Nat × StackLang.HolProg 64 := (580, RemovedBody580_256)
theorem Removed580_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc580 = Removed580 := by
  kernel_rfl
#print axioms Removed580_eq
end InitECandidate.Proofs.BackendStages
