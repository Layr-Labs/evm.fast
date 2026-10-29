import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc407
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody407_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody407_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody407_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody407_3 : StackLang.HolProg 64 :=
.seq RemovedBody407_1 RemovedBody407_2

def RemovedBody407_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody407_3 RemovedBody407_4

def RemovedBody407_6 : StackLang.HolProg 64 :=
.seq RemovedBody407_0 RemovedBody407_5

def RemovedBody407_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody407_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1211#64)

def RemovedBody407_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody407_11 : StackLang.HolProg 64 :=
.seq RemovedBody407_9 RemovedBody407_10

def RemovedBody407_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody407_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody407_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody407_15 : StackLang.HolProg 64 :=
.seq RemovedBody407_13 RemovedBody407_14

def RemovedBody407_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody407_15 RemovedBody407_16

def RemovedBody407_18 : StackLang.HolProg 64 :=
.seq RemovedBody407_12 RemovedBody407_17

def RemovedBody407_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody407_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody407_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 407 3

def RemovedBody407_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody407_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody407_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody407_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody407_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody407_28 : StackLang.HolProg 64 :=
.seq RemovedBody407_26 RemovedBody407_27

def RemovedBody407_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody407_30 : StackLang.HolProg 64 :=
.seq RemovedBody407_28 RemovedBody407_29

def RemovedBody407_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody407_32 : StackLang.HolProg 64 :=
.seq RemovedBody407_30 RemovedBody407_31

def RemovedBody407_33 : StackLang.HolProg 64 :=
.seq RemovedBody407_25 RemovedBody407_32

def RemovedBody407_34 : StackLang.HolProg 64 :=
.seq RemovedBody407_24 RemovedBody407_33

def RemovedBody407_35 : StackLang.HolProg 64 :=
.seq RemovedBody407_23 RemovedBody407_34

def RemovedBody407_36 : StackLang.HolProg 64 :=
.seq RemovedBody407_22 RemovedBody407_35

def RemovedBody407_37 : StackLang.HolProg 64 :=
.seq RemovedBody407_21 RemovedBody407_36

def RemovedBody407_38 : StackLang.HolProg 64 :=
.seq RemovedBody407_20 RemovedBody407_37

def RemovedBody407_39 : StackLang.HolProg 64 :=
.seq RemovedBody407_19 RemovedBody407_38

def RemovedBody407_40 : StackLang.HolProg 64 :=
.seq RemovedBody407_18 RemovedBody407_39

def RemovedBody407_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody407_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody407_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody407_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody407_48 : StackLang.HolProg 64 :=
.seq RemovedBody407_46 RemovedBody407_47

def RemovedBody407_49 : StackLang.HolProg 64 :=
.seq RemovedBody407_45 RemovedBody407_48

def RemovedBody407_50 : StackLang.HolProg 64 :=
.seq RemovedBody407_44 RemovedBody407_49

def RemovedBody407_51 : StackLang.HolProg 64 :=
.seq RemovedBody407_43 RemovedBody407_50

def RemovedBody407_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody407_54 : StackLang.HolProg 64 :=
.seq RemovedBody407_52 RemovedBody407_53

def RemovedBody407_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody407_51, 0, 407, 2)) (Sum.inl 406) (some (RemovedBody407_54, 407, 3))

def RemovedBody407_56 : StackLang.HolProg 64 :=
.seq RemovedBody407_42 RemovedBody407_55

def RemovedBody407_57 : StackLang.HolProg 64 :=
.seq RemovedBody407_41 RemovedBody407_56

def RemovedBody407_58 : StackLang.HolProg 64 :=
.seq RemovedBody407_40 RemovedBody407_57

def RemovedBody407_59 : StackLang.HolProg 64 :=
.seq RemovedBody407_11 RemovedBody407_58

def RemovedBody407_60 : StackLang.HolProg 64 :=
.seq RemovedBody407_8 RemovedBody407_59

def RemovedBody407_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody407_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody407_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody407_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1212#64)

def RemovedBody407_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody407_69 : StackLang.HolProg 64 :=
.seq RemovedBody407_67 RemovedBody407_68

def RemovedBody407_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody407_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody407_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody407_73 : StackLang.HolProg 64 :=
.seq RemovedBody407_71 RemovedBody407_72

def RemovedBody407_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody407_73 RemovedBody407_74

def RemovedBody407_76 : StackLang.HolProg 64 :=
.seq RemovedBody407_70 RemovedBody407_75

def RemovedBody407_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody407_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody407_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 407 5

def RemovedBody407_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody407_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody407_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody407_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody407_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody407_86 : StackLang.HolProg 64 :=
.seq RemovedBody407_84 RemovedBody407_85

def RemovedBody407_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody407_88 : StackLang.HolProg 64 :=
.seq RemovedBody407_86 RemovedBody407_87

def RemovedBody407_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody407_90 : StackLang.HolProg 64 :=
.seq RemovedBody407_88 RemovedBody407_89

def RemovedBody407_91 : StackLang.HolProg 64 :=
.seq RemovedBody407_83 RemovedBody407_90

def RemovedBody407_92 : StackLang.HolProg 64 :=
.seq RemovedBody407_82 RemovedBody407_91

def RemovedBody407_93 : StackLang.HolProg 64 :=
.seq RemovedBody407_81 RemovedBody407_92

def RemovedBody407_94 : StackLang.HolProg 64 :=
.seq RemovedBody407_80 RemovedBody407_93

def RemovedBody407_95 : StackLang.HolProg 64 :=
.seq RemovedBody407_79 RemovedBody407_94

def RemovedBody407_96 : StackLang.HolProg 64 :=
.seq RemovedBody407_78 RemovedBody407_95

def RemovedBody407_97 : StackLang.HolProg 64 :=
.seq RemovedBody407_77 RemovedBody407_96

def RemovedBody407_98 : StackLang.HolProg 64 :=
.seq RemovedBody407_76 RemovedBody407_97

def RemovedBody407_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody407_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody407_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody407_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody407_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody407_107 : StackLang.HolProg 64 :=
.seq RemovedBody407_105 RemovedBody407_106

def RemovedBody407_108 : StackLang.HolProg 64 :=
.seq RemovedBody407_104 RemovedBody407_107

def RemovedBody407_109 : StackLang.HolProg 64 :=
.seq RemovedBody407_103 RemovedBody407_108

def RemovedBody407_110 : StackLang.HolProg 64 :=
.seq RemovedBody407_102 RemovedBody407_109

def RemovedBody407_111 : StackLang.HolProg 64 :=
.seq RemovedBody407_101 RemovedBody407_110

def RemovedBody407_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody407_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody407_114 : StackLang.HolProg 64 :=
.seq RemovedBody407_112 RemovedBody407_113

def RemovedBody407_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody407_111, 0, 407, 4)) (Sum.inl 394) (some (RemovedBody407_114, 407, 5))

def RemovedBody407_116 : StackLang.HolProg 64 :=
.seq RemovedBody407_100 RemovedBody407_115

def RemovedBody407_117 : StackLang.HolProg 64 :=
.seq RemovedBody407_99 RemovedBody407_116

def RemovedBody407_118 : StackLang.HolProg 64 :=
.seq RemovedBody407_98 RemovedBody407_117

def RemovedBody407_119 : StackLang.HolProg 64 :=
.seq RemovedBody407_69 RemovedBody407_118

def RemovedBody407_120 : StackLang.HolProg 64 :=
.seq RemovedBody407_66 RemovedBody407_119

def RemovedBody407_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody407_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody407_123 : StackLang.HolProg 64 :=
.seq RemovedBody407_121 RemovedBody407_122

def RemovedBody407_124 : StackLang.HolProg 64 :=
.seq RemovedBody407_120 RemovedBody407_123

def RemovedBody407_125 : StackLang.HolProg 64 :=
.seq RemovedBody407_65 RemovedBody407_124

def RemovedBody407_126 : StackLang.HolProg 64 :=
.seq RemovedBody407_64 RemovedBody407_125

def RemovedBody407_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody407_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody407_129 : StackLang.HolProg 64 :=
.seq RemovedBody407_127 RemovedBody407_128

def RemovedBody407_130 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody407_126 RemovedBody407_129

def RemovedBody407_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody407_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody407_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody407_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody407_135 : StackLang.HolProg 64 :=
.seq RemovedBody407_133 RemovedBody407_134

def RemovedBody407_136 : StackLang.HolProg 64 :=
.seq RemovedBody407_132 RemovedBody407_135

def RemovedBody407_137 : StackLang.HolProg 64 :=
.seq RemovedBody407_131 RemovedBody407_136

def RemovedBody407_138 : StackLang.HolProg 64 :=
.seq RemovedBody407_130 RemovedBody407_137

def RemovedBody407_139 : StackLang.HolProg 64 :=
.seq RemovedBody407_63 RemovedBody407_138

def RemovedBody407_140 : StackLang.HolProg 64 :=
.seq RemovedBody407_62 RemovedBody407_139

def RemovedBody407_141 : StackLang.HolProg 64 :=
.seq RemovedBody407_61 RemovedBody407_140

def RemovedBody407_142 : StackLang.HolProg 64 :=
.seq RemovedBody407_60 RemovedBody407_141

def RemovedBody407_143 : StackLang.HolProg 64 :=
.seq RemovedBody407_7 RemovedBody407_142

def RemovedBody407_144 : StackLang.HolProg 64 :=
.seq RemovedBody407_6 RemovedBody407_143

def Removed407 : Nat × StackLang.HolProg 64 := (407, RemovedBody407_144)
theorem Removed407_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc407 = Removed407 := by
  kernel_rfl
#print axioms Removed407_eq
end InitECandidate.Proofs.BackendStages
