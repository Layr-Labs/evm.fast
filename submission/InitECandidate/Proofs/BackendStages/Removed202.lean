import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc202
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody202_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody202_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody202_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody202_3 : StackLang.HolProg 64 :=
.seq RemovedBody202_1 RemovedBody202_2

def RemovedBody202_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody202_3 RemovedBody202_4

def RemovedBody202_6 : StackLang.HolProg 64 :=
.seq RemovedBody202_0 RemovedBody202_5

def RemovedBody202_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody202_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 252#64)

def RemovedBody202_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody202_11 : StackLang.HolProg 64 :=
.seq RemovedBody202_9 RemovedBody202_10

def RemovedBody202_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody202_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody202_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody202_15 : StackLang.HolProg 64 :=
.seq RemovedBody202_13 RemovedBody202_14

def RemovedBody202_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody202_15 RemovedBody202_16

def RemovedBody202_18 : StackLang.HolProg 64 :=
.seq RemovedBody202_12 RemovedBody202_17

def RemovedBody202_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody202_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody202_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 202 3

def RemovedBody202_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody202_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody202_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody202_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody202_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody202_28 : StackLang.HolProg 64 :=
.seq RemovedBody202_26 RemovedBody202_27

def RemovedBody202_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody202_30 : StackLang.HolProg 64 :=
.seq RemovedBody202_28 RemovedBody202_29

def RemovedBody202_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody202_32 : StackLang.HolProg 64 :=
.seq RemovedBody202_30 RemovedBody202_31

def RemovedBody202_33 : StackLang.HolProg 64 :=
.seq RemovedBody202_25 RemovedBody202_32

def RemovedBody202_34 : StackLang.HolProg 64 :=
.seq RemovedBody202_24 RemovedBody202_33

def RemovedBody202_35 : StackLang.HolProg 64 :=
.seq RemovedBody202_23 RemovedBody202_34

def RemovedBody202_36 : StackLang.HolProg 64 :=
.seq RemovedBody202_22 RemovedBody202_35

def RemovedBody202_37 : StackLang.HolProg 64 :=
.seq RemovedBody202_21 RemovedBody202_36

def RemovedBody202_38 : StackLang.HolProg 64 :=
.seq RemovedBody202_20 RemovedBody202_37

def RemovedBody202_39 : StackLang.HolProg 64 :=
.seq RemovedBody202_19 RemovedBody202_38

def RemovedBody202_40 : StackLang.HolProg 64 :=
.seq RemovedBody202_18 RemovedBody202_39

def RemovedBody202_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody202_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody202_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody202_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody202_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody202_49 : StackLang.HolProg 64 :=
.seq RemovedBody202_47 RemovedBody202_48

def RemovedBody202_50 : StackLang.HolProg 64 :=
.seq RemovedBody202_46 RemovedBody202_49

def RemovedBody202_51 : StackLang.HolProg 64 :=
.seq RemovedBody202_45 RemovedBody202_50

def RemovedBody202_52 : StackLang.HolProg 64 :=
.seq RemovedBody202_44 RemovedBody202_51

def RemovedBody202_53 : StackLang.HolProg 64 :=
.seq RemovedBody202_43 RemovedBody202_52

def RemovedBody202_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody202_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody202_56 : StackLang.HolProg 64 :=
.seq RemovedBody202_54 RemovedBody202_55

def RemovedBody202_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody202_53, 0, 202, 2)) (Sum.inl 115) (some (RemovedBody202_56, 202, 3))

def RemovedBody202_58 : StackLang.HolProg 64 :=
.seq RemovedBody202_42 RemovedBody202_57

def RemovedBody202_59 : StackLang.HolProg 64 :=
.seq RemovedBody202_41 RemovedBody202_58

def RemovedBody202_60 : StackLang.HolProg 64 :=
.seq RemovedBody202_40 RemovedBody202_59

def RemovedBody202_61 : StackLang.HolProg 64 :=
.seq RemovedBody202_11 RemovedBody202_60

def RemovedBody202_62 : StackLang.HolProg 64 :=
.seq RemovedBody202_8 RemovedBody202_61

def RemovedBody202_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody202_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody202_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def RemovedBody202_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody202_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody202_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody202_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody202_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def RemovedBody202_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody202_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def RemovedBody202_76 : StackLang.HolProg 64 :=
.seq RemovedBody202_74 RemovedBody202_75

def RemovedBody202_77 : StackLang.HolProg 64 :=
.seq RemovedBody202_73 RemovedBody202_76

def RemovedBody202_78 : StackLang.HolProg 64 :=
.seq RemovedBody202_72 RemovedBody202_77

def RemovedBody202_79 : StackLang.HolProg 64 :=
.seq RemovedBody202_71 RemovedBody202_78

def RemovedBody202_80 : StackLang.HolProg 64 :=
.seq RemovedBody202_70 RemovedBody202_79

def RemovedBody202_81 : StackLang.HolProg 64 :=
.seq RemovedBody202_69 RemovedBody202_80

def RemovedBody202_82 : StackLang.HolProg 64 :=
.seq RemovedBody202_68 RemovedBody202_81

def RemovedBody202_83 : StackLang.HolProg 64 :=
.seq RemovedBody202_67 RemovedBody202_82

def RemovedBody202_84 : StackLang.HolProg 64 :=
.seq RemovedBody202_66 RemovedBody202_83

def RemovedBody202_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody202_84 RemovedBody202_85

def RemovedBody202_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody202_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody202_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody202_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody202_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody202_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def RemovedBody202_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody202_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody202_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody202_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody202_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody202_99 : StackLang.HolProg 64 :=
.seq RemovedBody202_97 RemovedBody202_98

def RemovedBody202_100 : StackLang.HolProg 64 :=
.seq RemovedBody202_96 RemovedBody202_99

def RemovedBody202_101 : StackLang.HolProg 64 :=
.seq RemovedBody202_95 RemovedBody202_100

def RemovedBody202_102 : StackLang.HolProg 64 :=
.seq RemovedBody202_94 RemovedBody202_101

def RemovedBody202_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 253#64)

def RemovedBody202_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody202_106 : StackLang.HolProg 64 :=
.seq RemovedBody202_104 RemovedBody202_105

def RemovedBody202_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody202_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody202_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody202_110 : StackLang.HolProg 64 :=
.seq RemovedBody202_108 RemovedBody202_109

def RemovedBody202_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody202_110 RemovedBody202_111

def RemovedBody202_113 : StackLang.HolProg 64 :=
.seq RemovedBody202_107 RemovedBody202_112

def RemovedBody202_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody202_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody202_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 202 5

def RemovedBody202_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody202_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody202_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody202_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody202_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody202_123 : StackLang.HolProg 64 :=
.seq RemovedBody202_121 RemovedBody202_122

def RemovedBody202_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody202_125 : StackLang.HolProg 64 :=
.seq RemovedBody202_123 RemovedBody202_124

def RemovedBody202_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody202_127 : StackLang.HolProg 64 :=
.seq RemovedBody202_125 RemovedBody202_126

def RemovedBody202_128 : StackLang.HolProg 64 :=
.seq RemovedBody202_120 RemovedBody202_127

def RemovedBody202_129 : StackLang.HolProg 64 :=
.seq RemovedBody202_119 RemovedBody202_128

def RemovedBody202_130 : StackLang.HolProg 64 :=
.seq RemovedBody202_118 RemovedBody202_129

def RemovedBody202_131 : StackLang.HolProg 64 :=
.seq RemovedBody202_117 RemovedBody202_130

def RemovedBody202_132 : StackLang.HolProg 64 :=
.seq RemovedBody202_116 RemovedBody202_131

def RemovedBody202_133 : StackLang.HolProg 64 :=
.seq RemovedBody202_115 RemovedBody202_132

def RemovedBody202_134 : StackLang.HolProg 64 :=
.seq RemovedBody202_114 RemovedBody202_133

def RemovedBody202_135 : StackLang.HolProg 64 :=
.seq RemovedBody202_113 RemovedBody202_134

def RemovedBody202_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody202_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody202_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody202_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody202_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody202_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody202_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody202_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody202_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody202_148 : StackLang.HolProg 64 :=
.seq RemovedBody202_146 RemovedBody202_147

def RemovedBody202_149 : StackLang.HolProg 64 :=
.seq RemovedBody202_145 RemovedBody202_148

def RemovedBody202_150 : StackLang.HolProg 64 :=
.seq RemovedBody202_144 RemovedBody202_149

def RemovedBody202_151 : StackLang.HolProg 64 :=
.seq RemovedBody202_143 RemovedBody202_150

def RemovedBody202_152 : StackLang.HolProg 64 :=
.seq RemovedBody202_142 RemovedBody202_151

def RemovedBody202_153 : StackLang.HolProg 64 :=
.seq RemovedBody202_141 RemovedBody202_152

def RemovedBody202_154 : StackLang.HolProg 64 :=
.seq RemovedBody202_140 RemovedBody202_153

def RemovedBody202_155 : StackLang.HolProg 64 :=
.seq RemovedBody202_139 RemovedBody202_154

def RemovedBody202_156 : StackLang.HolProg 64 :=
.seq RemovedBody202_138 RemovedBody202_155

def RemovedBody202_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody202_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody202_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody202_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody202_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody202_162 : StackLang.HolProg 64 :=
.seq RemovedBody202_160 RemovedBody202_161

def RemovedBody202_163 : StackLang.HolProg 64 :=
.seq RemovedBody202_159 RemovedBody202_162

def RemovedBody202_164 : StackLang.HolProg 64 :=
.seq RemovedBody202_158 RemovedBody202_163

def RemovedBody202_165 : StackLang.HolProg 64 :=
.seq RemovedBody202_157 RemovedBody202_164

def RemovedBody202_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody202_167 : StackLang.HolProg 64 :=
.seq RemovedBody202_165 RemovedBody202_166

def RemovedBody202_168 : StackLang.HolProg 64 :=
.call (some (RemovedBody202_156, 0, 202, 4)) (Sum.inl 106) (some (RemovedBody202_167, 202, 5))

def RemovedBody202_169 : StackLang.HolProg 64 :=
.seq RemovedBody202_137 RemovedBody202_168

def RemovedBody202_170 : StackLang.HolProg 64 :=
.seq RemovedBody202_136 RemovedBody202_169

def RemovedBody202_171 : StackLang.HolProg 64 :=
.seq RemovedBody202_135 RemovedBody202_170

def RemovedBody202_172 : StackLang.HolProg 64 :=
.seq RemovedBody202_106 RemovedBody202_171

def RemovedBody202_173 : StackLang.HolProg 64 :=
.seq RemovedBody202_103 RemovedBody202_172

def RemovedBody202_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody202_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody202_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody202_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody202_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody202_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody202_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody202_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def RemovedBody202_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody202_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def RemovedBody202_187 : StackLang.HolProg 64 :=
.seq RemovedBody202_185 RemovedBody202_186

def RemovedBody202_188 : StackLang.HolProg 64 :=
.seq RemovedBody202_184 RemovedBody202_187

def RemovedBody202_189 : StackLang.HolProg 64 :=
.seq RemovedBody202_183 RemovedBody202_188

def RemovedBody202_190 : StackLang.HolProg 64 :=
.seq RemovedBody202_182 RemovedBody202_189

def RemovedBody202_191 : StackLang.HolProg 64 :=
.seq RemovedBody202_181 RemovedBody202_190

def RemovedBody202_192 : StackLang.HolProg 64 :=
.seq RemovedBody202_180 RemovedBody202_191

def RemovedBody202_193 : StackLang.HolProg 64 :=
.seq RemovedBody202_179 RemovedBody202_192

def RemovedBody202_194 : StackLang.HolProg 64 :=
.seq RemovedBody202_178 RemovedBody202_193

def RemovedBody202_195 : StackLang.HolProg 64 :=
.seq RemovedBody202_177 RemovedBody202_194

def RemovedBody202_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody202_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody202_195 RemovedBody202_196

def RemovedBody202_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody202_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody202_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody202_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody202_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody202_203 : StackLang.HolProg 64 :=
.seq RemovedBody202_201 RemovedBody202_202

def RemovedBody202_204 : StackLang.HolProg 64 :=
.seq RemovedBody202_200 RemovedBody202_203

def RemovedBody202_205 : StackLang.HolProg 64 :=
.seq RemovedBody202_199 RemovedBody202_204

def RemovedBody202_206 : StackLang.HolProg 64 :=
.seq RemovedBody202_198 RemovedBody202_205

def RemovedBody202_207 : StackLang.HolProg 64 :=
.seq RemovedBody202_197 RemovedBody202_206

def RemovedBody202_208 : StackLang.HolProg 64 :=
.seq RemovedBody202_176 RemovedBody202_207

def RemovedBody202_209 : StackLang.HolProg 64 :=
.seq RemovedBody202_175 RemovedBody202_208

def RemovedBody202_210 : StackLang.HolProg 64 :=
.seq RemovedBody202_174 RemovedBody202_209

def RemovedBody202_211 : StackLang.HolProg 64 :=
.seq RemovedBody202_173 RemovedBody202_210

def RemovedBody202_212 : StackLang.HolProg 64 :=
.seq RemovedBody202_102 RemovedBody202_211

def RemovedBody202_213 : StackLang.HolProg 64 :=
.seq RemovedBody202_93 RemovedBody202_212

def RemovedBody202_214 : StackLang.HolProg 64 :=
.seq RemovedBody202_92 RemovedBody202_213

def RemovedBody202_215 : StackLang.HolProg 64 :=
.seq RemovedBody202_91 RemovedBody202_214

def RemovedBody202_216 : StackLang.HolProg 64 :=
.seq RemovedBody202_90 RemovedBody202_215

def RemovedBody202_217 : StackLang.HolProg 64 :=
.seq RemovedBody202_89 RemovedBody202_216

def RemovedBody202_218 : StackLang.HolProg 64 :=
.seq RemovedBody202_88 RemovedBody202_217

def RemovedBody202_219 : StackLang.HolProg 64 :=
.seq RemovedBody202_87 RemovedBody202_218

def RemovedBody202_220 : StackLang.HolProg 64 :=
.seq RemovedBody202_86 RemovedBody202_219

def RemovedBody202_221 : StackLang.HolProg 64 :=
.seq RemovedBody202_65 RemovedBody202_220

def RemovedBody202_222 : StackLang.HolProg 64 :=
.seq RemovedBody202_64 RemovedBody202_221

def RemovedBody202_223 : StackLang.HolProg 64 :=
.seq RemovedBody202_63 RemovedBody202_222

def RemovedBody202_224 : StackLang.HolProg 64 :=
.seq RemovedBody202_62 RemovedBody202_223

def RemovedBody202_225 : StackLang.HolProg 64 :=
.seq RemovedBody202_7 RemovedBody202_224

def RemovedBody202_226 : StackLang.HolProg 64 :=
.seq RemovedBody202_6 RemovedBody202_225

def Removed202 : Nat × StackLang.HolProg 64 := (202, RemovedBody202_226)
theorem Removed202_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc202 = Removed202 := by
  kernel_rfl
#print axioms Removed202_eq
end InitECandidate.Proofs.BackendStages
