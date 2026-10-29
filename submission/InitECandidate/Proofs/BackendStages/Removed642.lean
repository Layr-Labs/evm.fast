import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc642
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody642_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody642_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody642_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody642_3 : StackLang.HolProg 64 :=
.seq RemovedBody642_1 RemovedBody642_2

def RemovedBody642_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody642_3 RemovedBody642_4

def RemovedBody642_6 : StackLang.HolProg 64 :=
.seq RemovedBody642_0 RemovedBody642_5

def RemovedBody642_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody642_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2619#64)

def RemovedBody642_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody642_11 : StackLang.HolProg 64 :=
.seq RemovedBody642_9 RemovedBody642_10

def RemovedBody642_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody642_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody642_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody642_15 : StackLang.HolProg 64 :=
.seq RemovedBody642_13 RemovedBody642_14

def RemovedBody642_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody642_15 RemovedBody642_16

def RemovedBody642_18 : StackLang.HolProg 64 :=
.seq RemovedBody642_12 RemovedBody642_17

def RemovedBody642_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody642_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody642_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 642 3

def RemovedBody642_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody642_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody642_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody642_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody642_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody642_28 : StackLang.HolProg 64 :=
.seq RemovedBody642_26 RemovedBody642_27

def RemovedBody642_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody642_30 : StackLang.HolProg 64 :=
.seq RemovedBody642_28 RemovedBody642_29

def RemovedBody642_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody642_32 : StackLang.HolProg 64 :=
.seq RemovedBody642_30 RemovedBody642_31

def RemovedBody642_33 : StackLang.HolProg 64 :=
.seq RemovedBody642_25 RemovedBody642_32

def RemovedBody642_34 : StackLang.HolProg 64 :=
.seq RemovedBody642_24 RemovedBody642_33

def RemovedBody642_35 : StackLang.HolProg 64 :=
.seq RemovedBody642_23 RemovedBody642_34

def RemovedBody642_36 : StackLang.HolProg 64 :=
.seq RemovedBody642_22 RemovedBody642_35

def RemovedBody642_37 : StackLang.HolProg 64 :=
.seq RemovedBody642_21 RemovedBody642_36

def RemovedBody642_38 : StackLang.HolProg 64 :=
.seq RemovedBody642_20 RemovedBody642_37

def RemovedBody642_39 : StackLang.HolProg 64 :=
.seq RemovedBody642_19 RemovedBody642_38

def RemovedBody642_40 : StackLang.HolProg 64 :=
.seq RemovedBody642_18 RemovedBody642_39

def RemovedBody642_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody642_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody642_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody642_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody642_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody642_49 : StackLang.HolProg 64 :=
.seq RemovedBody642_47 RemovedBody642_48

def RemovedBody642_50 : StackLang.HolProg 64 :=
.seq RemovedBody642_46 RemovedBody642_49

def RemovedBody642_51 : StackLang.HolProg 64 :=
.seq RemovedBody642_45 RemovedBody642_50

def RemovedBody642_52 : StackLang.HolProg 64 :=
.seq RemovedBody642_44 RemovedBody642_51

def RemovedBody642_53 : StackLang.HolProg 64 :=
.seq RemovedBody642_43 RemovedBody642_52

def RemovedBody642_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody642_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody642_56 : StackLang.HolProg 64 :=
.seq RemovedBody642_54 RemovedBody642_55

def RemovedBody642_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody642_53, 0, 642, 2)) (Sum.inl 115) (some (RemovedBody642_56, 642, 3))

def RemovedBody642_58 : StackLang.HolProg 64 :=
.seq RemovedBody642_42 RemovedBody642_57

def RemovedBody642_59 : StackLang.HolProg 64 :=
.seq RemovedBody642_41 RemovedBody642_58

def RemovedBody642_60 : StackLang.HolProg 64 :=
.seq RemovedBody642_40 RemovedBody642_59

def RemovedBody642_61 : StackLang.HolProg 64 :=
.seq RemovedBody642_11 RemovedBody642_60

def RemovedBody642_62 : StackLang.HolProg 64 :=
.seq RemovedBody642_8 RemovedBody642_61

def RemovedBody642_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody642_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody642_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def RemovedBody642_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody642_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def RemovedBody642_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody642_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def RemovedBody642_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def RemovedBody642_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody642_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def RemovedBody642_76 : StackLang.HolProg 64 :=
.seq RemovedBody642_74 RemovedBody642_75

def RemovedBody642_77 : StackLang.HolProg 64 :=
.seq RemovedBody642_73 RemovedBody642_76

def RemovedBody642_78 : StackLang.HolProg 64 :=
.seq RemovedBody642_72 RemovedBody642_77

def RemovedBody642_79 : StackLang.HolProg 64 :=
.seq RemovedBody642_71 RemovedBody642_78

def RemovedBody642_80 : StackLang.HolProg 64 :=
.seq RemovedBody642_70 RemovedBody642_79

def RemovedBody642_81 : StackLang.HolProg 64 :=
.seq RemovedBody642_69 RemovedBody642_80

def RemovedBody642_82 : StackLang.HolProg 64 :=
.seq RemovedBody642_68 RemovedBody642_81

def RemovedBody642_83 : StackLang.HolProg 64 :=
.seq RemovedBody642_67 RemovedBody642_82

def RemovedBody642_84 : StackLang.HolProg 64 :=
.seq RemovedBody642_66 RemovedBody642_83

def RemovedBody642_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody642_84 RemovedBody642_85

def RemovedBody642_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody642_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody642_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def RemovedBody642_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody642_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def RemovedBody642_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def RemovedBody642_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody642_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody642_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody642_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody642_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody642_99 : StackLang.HolProg 64 :=
.seq RemovedBody642_97 RemovedBody642_98

def RemovedBody642_100 : StackLang.HolProg 64 :=
.seq RemovedBody642_96 RemovedBody642_99

def RemovedBody642_101 : StackLang.HolProg 64 :=
.seq RemovedBody642_95 RemovedBody642_100

def RemovedBody642_102 : StackLang.HolProg 64 :=
.seq RemovedBody642_94 RemovedBody642_101

def RemovedBody642_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2620#64)

def RemovedBody642_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody642_106 : StackLang.HolProg 64 :=
.seq RemovedBody642_104 RemovedBody642_105

def RemovedBody642_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody642_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody642_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody642_110 : StackLang.HolProg 64 :=
.seq RemovedBody642_108 RemovedBody642_109

def RemovedBody642_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody642_110 RemovedBody642_111

def RemovedBody642_113 : StackLang.HolProg 64 :=
.seq RemovedBody642_107 RemovedBody642_112

def RemovedBody642_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody642_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody642_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 642 5

def RemovedBody642_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody642_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody642_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody642_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody642_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody642_123 : StackLang.HolProg 64 :=
.seq RemovedBody642_121 RemovedBody642_122

def RemovedBody642_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody642_125 : StackLang.HolProg 64 :=
.seq RemovedBody642_123 RemovedBody642_124

def RemovedBody642_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody642_127 : StackLang.HolProg 64 :=
.seq RemovedBody642_125 RemovedBody642_126

def RemovedBody642_128 : StackLang.HolProg 64 :=
.seq RemovedBody642_120 RemovedBody642_127

def RemovedBody642_129 : StackLang.HolProg 64 :=
.seq RemovedBody642_119 RemovedBody642_128

def RemovedBody642_130 : StackLang.HolProg 64 :=
.seq RemovedBody642_118 RemovedBody642_129

def RemovedBody642_131 : StackLang.HolProg 64 :=
.seq RemovedBody642_117 RemovedBody642_130

def RemovedBody642_132 : StackLang.HolProg 64 :=
.seq RemovedBody642_116 RemovedBody642_131

def RemovedBody642_133 : StackLang.HolProg 64 :=
.seq RemovedBody642_115 RemovedBody642_132

def RemovedBody642_134 : StackLang.HolProg 64 :=
.seq RemovedBody642_114 RemovedBody642_133

def RemovedBody642_135 : StackLang.HolProg 64 :=
.seq RemovedBody642_113 RemovedBody642_134

def RemovedBody642_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody642_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody642_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody642_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody642_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody642_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody642_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody642_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody642_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody642_148 : StackLang.HolProg 64 :=
.seq RemovedBody642_146 RemovedBody642_147

def RemovedBody642_149 : StackLang.HolProg 64 :=
.seq RemovedBody642_145 RemovedBody642_148

def RemovedBody642_150 : StackLang.HolProg 64 :=
.seq RemovedBody642_144 RemovedBody642_149

def RemovedBody642_151 : StackLang.HolProg 64 :=
.seq RemovedBody642_143 RemovedBody642_150

def RemovedBody642_152 : StackLang.HolProg 64 :=
.seq RemovedBody642_142 RemovedBody642_151

def RemovedBody642_153 : StackLang.HolProg 64 :=
.seq RemovedBody642_141 RemovedBody642_152

def RemovedBody642_154 : StackLang.HolProg 64 :=
.seq RemovedBody642_140 RemovedBody642_153

def RemovedBody642_155 : StackLang.HolProg 64 :=
.seq RemovedBody642_139 RemovedBody642_154

def RemovedBody642_156 : StackLang.HolProg 64 :=
.seq RemovedBody642_138 RemovedBody642_155

def RemovedBody642_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody642_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody642_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody642_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody642_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody642_162 : StackLang.HolProg 64 :=
.seq RemovedBody642_160 RemovedBody642_161

def RemovedBody642_163 : StackLang.HolProg 64 :=
.seq RemovedBody642_159 RemovedBody642_162

def RemovedBody642_164 : StackLang.HolProg 64 :=
.seq RemovedBody642_158 RemovedBody642_163

def RemovedBody642_165 : StackLang.HolProg 64 :=
.seq RemovedBody642_157 RemovedBody642_164

def RemovedBody642_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody642_167 : StackLang.HolProg 64 :=
.seq RemovedBody642_165 RemovedBody642_166

def RemovedBody642_168 : StackLang.HolProg 64 :=
.call (some (RemovedBody642_156, 0, 642, 4)) (Sum.inl 106) (some (RemovedBody642_167, 642, 5))

def RemovedBody642_169 : StackLang.HolProg 64 :=
.seq RemovedBody642_137 RemovedBody642_168

def RemovedBody642_170 : StackLang.HolProg 64 :=
.seq RemovedBody642_136 RemovedBody642_169

def RemovedBody642_171 : StackLang.HolProg 64 :=
.seq RemovedBody642_135 RemovedBody642_170

def RemovedBody642_172 : StackLang.HolProg 64 :=
.seq RemovedBody642_106 RemovedBody642_171

def RemovedBody642_173 : StackLang.HolProg 64 :=
.seq RemovedBody642_103 RemovedBody642_172

def RemovedBody642_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody642_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody642_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody642_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody642_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def RemovedBody642_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody642_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def RemovedBody642_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def RemovedBody642_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody642_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def RemovedBody642_187 : StackLang.HolProg 64 :=
.seq RemovedBody642_185 RemovedBody642_186

def RemovedBody642_188 : StackLang.HolProg 64 :=
.seq RemovedBody642_184 RemovedBody642_187

def RemovedBody642_189 : StackLang.HolProg 64 :=
.seq RemovedBody642_183 RemovedBody642_188

def RemovedBody642_190 : StackLang.HolProg 64 :=
.seq RemovedBody642_182 RemovedBody642_189

def RemovedBody642_191 : StackLang.HolProg 64 :=
.seq RemovedBody642_181 RemovedBody642_190

def RemovedBody642_192 : StackLang.HolProg 64 :=
.seq RemovedBody642_180 RemovedBody642_191

def RemovedBody642_193 : StackLang.HolProg 64 :=
.seq RemovedBody642_179 RemovedBody642_192

def RemovedBody642_194 : StackLang.HolProg 64 :=
.seq RemovedBody642_178 RemovedBody642_193

def RemovedBody642_195 : StackLang.HolProg 64 :=
.seq RemovedBody642_177 RemovedBody642_194

def RemovedBody642_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody642_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody642_195 RemovedBody642_196

def RemovedBody642_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody642_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody642_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody642_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody642_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody642_203 : StackLang.HolProg 64 :=
.seq RemovedBody642_201 RemovedBody642_202

def RemovedBody642_204 : StackLang.HolProg 64 :=
.seq RemovedBody642_200 RemovedBody642_203

def RemovedBody642_205 : StackLang.HolProg 64 :=
.seq RemovedBody642_199 RemovedBody642_204

def RemovedBody642_206 : StackLang.HolProg 64 :=
.seq RemovedBody642_198 RemovedBody642_205

def RemovedBody642_207 : StackLang.HolProg 64 :=
.seq RemovedBody642_197 RemovedBody642_206

def RemovedBody642_208 : StackLang.HolProg 64 :=
.seq RemovedBody642_176 RemovedBody642_207

def RemovedBody642_209 : StackLang.HolProg 64 :=
.seq RemovedBody642_175 RemovedBody642_208

def RemovedBody642_210 : StackLang.HolProg 64 :=
.seq RemovedBody642_174 RemovedBody642_209

def RemovedBody642_211 : StackLang.HolProg 64 :=
.seq RemovedBody642_173 RemovedBody642_210

def RemovedBody642_212 : StackLang.HolProg 64 :=
.seq RemovedBody642_102 RemovedBody642_211

def RemovedBody642_213 : StackLang.HolProg 64 :=
.seq RemovedBody642_93 RemovedBody642_212

def RemovedBody642_214 : StackLang.HolProg 64 :=
.seq RemovedBody642_92 RemovedBody642_213

def RemovedBody642_215 : StackLang.HolProg 64 :=
.seq RemovedBody642_91 RemovedBody642_214

def RemovedBody642_216 : StackLang.HolProg 64 :=
.seq RemovedBody642_90 RemovedBody642_215

def RemovedBody642_217 : StackLang.HolProg 64 :=
.seq RemovedBody642_89 RemovedBody642_216

def RemovedBody642_218 : StackLang.HolProg 64 :=
.seq RemovedBody642_88 RemovedBody642_217

def RemovedBody642_219 : StackLang.HolProg 64 :=
.seq RemovedBody642_87 RemovedBody642_218

def RemovedBody642_220 : StackLang.HolProg 64 :=
.seq RemovedBody642_86 RemovedBody642_219

def RemovedBody642_221 : StackLang.HolProg 64 :=
.seq RemovedBody642_65 RemovedBody642_220

def RemovedBody642_222 : StackLang.HolProg 64 :=
.seq RemovedBody642_64 RemovedBody642_221

def RemovedBody642_223 : StackLang.HolProg 64 :=
.seq RemovedBody642_63 RemovedBody642_222

def RemovedBody642_224 : StackLang.HolProg 64 :=
.seq RemovedBody642_62 RemovedBody642_223

def RemovedBody642_225 : StackLang.HolProg 64 :=
.seq RemovedBody642_7 RemovedBody642_224

def RemovedBody642_226 : StackLang.HolProg 64 :=
.seq RemovedBody642_6 RemovedBody642_225

def Removed642 : Nat × StackLang.HolProg 64 := (642, RemovedBody642_226)
theorem Removed642_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc642 = Removed642 := by
  kernel_rfl
#print axioms Removed642_eq
end InitECandidate.Proofs.BackendStages
