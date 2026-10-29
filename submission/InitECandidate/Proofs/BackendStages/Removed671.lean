import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc671
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody671_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody671_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody671_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody671_3 : StackLang.HolProg 64 :=
.seq RemovedBody671_1 RemovedBody671_2

def RemovedBody671_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody671_3 RemovedBody671_4

def RemovedBody671_6 : StackLang.HolProg 64 :=
.seq RemovedBody671_0 RemovedBody671_5

def RemovedBody671_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody671_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody671_9 : StackLang.HolProg 64 :=
.seq RemovedBody671_7 RemovedBody671_8

def RemovedBody671_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def RemovedBody671_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody671_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody671_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody671_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody671_15 : StackLang.HolProg 64 :=
.seq RemovedBody671_13 RemovedBody671_14

def RemovedBody671_16 : StackLang.HolProg 64 :=
.seq RemovedBody671_12 RemovedBody671_15

def RemovedBody671_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2786#64)

def RemovedBody671_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody671_20 : StackLang.HolProg 64 :=
.seq RemovedBody671_18 RemovedBody671_19

def RemovedBody671_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody671_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody671_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody671_24 : StackLang.HolProg 64 :=
.seq RemovedBody671_22 RemovedBody671_23

def RemovedBody671_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody671_24 RemovedBody671_25

def RemovedBody671_27 : StackLang.HolProg 64 :=
.seq RemovedBody671_21 RemovedBody671_26

def RemovedBody671_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody671_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody671_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 671 3

def RemovedBody671_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody671_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody671_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody671_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody671_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody671_37 : StackLang.HolProg 64 :=
.seq RemovedBody671_35 RemovedBody671_36

def RemovedBody671_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody671_39 : StackLang.HolProg 64 :=
.seq RemovedBody671_37 RemovedBody671_38

def RemovedBody671_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody671_41 : StackLang.HolProg 64 :=
.seq RemovedBody671_39 RemovedBody671_40

def RemovedBody671_42 : StackLang.HolProg 64 :=
.seq RemovedBody671_34 RemovedBody671_41

def RemovedBody671_43 : StackLang.HolProg 64 :=
.seq RemovedBody671_33 RemovedBody671_42

def RemovedBody671_44 : StackLang.HolProg 64 :=
.seq RemovedBody671_32 RemovedBody671_43

def RemovedBody671_45 : StackLang.HolProg 64 :=
.seq RemovedBody671_31 RemovedBody671_44

def RemovedBody671_46 : StackLang.HolProg 64 :=
.seq RemovedBody671_30 RemovedBody671_45

def RemovedBody671_47 : StackLang.HolProg 64 :=
.seq RemovedBody671_29 RemovedBody671_46

def RemovedBody671_48 : StackLang.HolProg 64 :=
.seq RemovedBody671_28 RemovedBody671_47

def RemovedBody671_49 : StackLang.HolProg 64 :=
.seq RemovedBody671_27 RemovedBody671_48

def RemovedBody671_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody671_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody671_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody671_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody671_57 : StackLang.HolProg 64 :=
.seq RemovedBody671_55 RemovedBody671_56

def RemovedBody671_58 : StackLang.HolProg 64 :=
.seq RemovedBody671_54 RemovedBody671_57

def RemovedBody671_59 : StackLang.HolProg 64 :=
.seq RemovedBody671_53 RemovedBody671_58

def RemovedBody671_60 : StackLang.HolProg 64 :=
.seq RemovedBody671_52 RemovedBody671_59

def RemovedBody671_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody671_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody671_63 : StackLang.HolProg 64 :=
.seq RemovedBody671_61 RemovedBody671_62

def RemovedBody671_64 : StackLang.HolProg 64 :=
.call (some (RemovedBody671_60, 0, 671, 2)) (Sum.inl 669) (some (RemovedBody671_63, 671, 3))

def RemovedBody671_65 : StackLang.HolProg 64 :=
.seq RemovedBody671_51 RemovedBody671_64

def RemovedBody671_66 : StackLang.HolProg 64 :=
.seq RemovedBody671_50 RemovedBody671_65

def RemovedBody671_67 : StackLang.HolProg 64 :=
.seq RemovedBody671_49 RemovedBody671_66

def RemovedBody671_68 : StackLang.HolProg 64 :=
.seq RemovedBody671_20 RemovedBody671_67

def RemovedBody671_69 : StackLang.HolProg 64 :=
.seq RemovedBody671_17 RemovedBody671_68

def RemovedBody671_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody671_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody671_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody671_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody671_75 : StackLang.HolProg 64 :=
.seq RemovedBody671_73 RemovedBody671_74

def RemovedBody671_76 : StackLang.HolProg 64 :=
.seq RemovedBody671_72 RemovedBody671_75

def RemovedBody671_77 : StackLang.HolProg 64 :=
.seq RemovedBody671_71 RemovedBody671_76

def RemovedBody671_78 : StackLang.HolProg 64 :=
.seq RemovedBody671_70 RemovedBody671_77

def RemovedBody671_79 : StackLang.HolProg 64 :=
.seq RemovedBody671_69 RemovedBody671_78

def RemovedBody671_80 : StackLang.HolProg 64 :=
.seq RemovedBody671_16 RemovedBody671_79

def RemovedBody671_81 : StackLang.HolProg 64 :=
.seq RemovedBody671_11 RemovedBody671_80

def RemovedBody671_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody671_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody671_81 RemovedBody671_82

def RemovedBody671_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody671_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody671_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody671_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody671_88 : StackLang.HolProg 64 :=
.seq RemovedBody671_86 RemovedBody671_87

def RemovedBody671_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2787#64)

def RemovedBody671_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody671_92 : StackLang.HolProg 64 :=
.seq RemovedBody671_90 RemovedBody671_91

def RemovedBody671_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody671_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody671_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody671_96 : StackLang.HolProg 64 :=
.seq RemovedBody671_94 RemovedBody671_95

def RemovedBody671_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody671_96 RemovedBody671_97

def RemovedBody671_99 : StackLang.HolProg 64 :=
.seq RemovedBody671_93 RemovedBody671_98

def RemovedBody671_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody671_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody671_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 671 5

def RemovedBody671_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody671_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody671_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody671_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody671_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody671_109 : StackLang.HolProg 64 :=
.seq RemovedBody671_107 RemovedBody671_108

def RemovedBody671_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody671_111 : StackLang.HolProg 64 :=
.seq RemovedBody671_109 RemovedBody671_110

def RemovedBody671_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody671_113 : StackLang.HolProg 64 :=
.seq RemovedBody671_111 RemovedBody671_112

def RemovedBody671_114 : StackLang.HolProg 64 :=
.seq RemovedBody671_106 RemovedBody671_113

def RemovedBody671_115 : StackLang.HolProg 64 :=
.seq RemovedBody671_105 RemovedBody671_114

def RemovedBody671_116 : StackLang.HolProg 64 :=
.seq RemovedBody671_104 RemovedBody671_115

def RemovedBody671_117 : StackLang.HolProg 64 :=
.seq RemovedBody671_103 RemovedBody671_116

def RemovedBody671_118 : StackLang.HolProg 64 :=
.seq RemovedBody671_102 RemovedBody671_117

def RemovedBody671_119 : StackLang.HolProg 64 :=
.seq RemovedBody671_101 RemovedBody671_118

def RemovedBody671_120 : StackLang.HolProg 64 :=
.seq RemovedBody671_100 RemovedBody671_119

def RemovedBody671_121 : StackLang.HolProg 64 :=
.seq RemovedBody671_99 RemovedBody671_120

def RemovedBody671_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody671_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody671_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody671_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody671_129 : StackLang.HolProg 64 :=
.seq RemovedBody671_127 RemovedBody671_128

def RemovedBody671_130 : StackLang.HolProg 64 :=
.seq RemovedBody671_126 RemovedBody671_129

def RemovedBody671_131 : StackLang.HolProg 64 :=
.seq RemovedBody671_125 RemovedBody671_130

def RemovedBody671_132 : StackLang.HolProg 64 :=
.seq RemovedBody671_124 RemovedBody671_131

def RemovedBody671_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody671_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody671_135 : StackLang.HolProg 64 :=
.seq RemovedBody671_133 RemovedBody671_134

def RemovedBody671_136 : StackLang.HolProg 64 :=
.call (some (RemovedBody671_132, 0, 671, 4)) (Sum.inl 670) (some (RemovedBody671_135, 671, 5))

def RemovedBody671_137 : StackLang.HolProg 64 :=
.seq RemovedBody671_123 RemovedBody671_136

def RemovedBody671_138 : StackLang.HolProg 64 :=
.seq RemovedBody671_122 RemovedBody671_137

def RemovedBody671_139 : StackLang.HolProg 64 :=
.seq RemovedBody671_121 RemovedBody671_138

def RemovedBody671_140 : StackLang.HolProg 64 :=
.seq RemovedBody671_92 RemovedBody671_139

def RemovedBody671_141 : StackLang.HolProg 64 :=
.seq RemovedBody671_89 RemovedBody671_140

def RemovedBody671_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody671_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody671_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody671_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody671_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody671_147 : StackLang.HolProg 64 :=
.seq RemovedBody671_145 RemovedBody671_146

def RemovedBody671_148 : StackLang.HolProg 64 :=
.seq RemovedBody671_144 RemovedBody671_147

def RemovedBody671_149 : StackLang.HolProg 64 :=
.seq RemovedBody671_143 RemovedBody671_148

def RemovedBody671_150 : StackLang.HolProg 64 :=
.seq RemovedBody671_142 RemovedBody671_149

def RemovedBody671_151 : StackLang.HolProg 64 :=
.seq RemovedBody671_141 RemovedBody671_150

def RemovedBody671_152 : StackLang.HolProg 64 :=
.seq RemovedBody671_88 RemovedBody671_151

def RemovedBody671_153 : StackLang.HolProg 64 :=
.seq RemovedBody671_85 RemovedBody671_152

def RemovedBody671_154 : StackLang.HolProg 64 :=
.seq RemovedBody671_84 RemovedBody671_153

def RemovedBody671_155 : StackLang.HolProg 64 :=
.seq RemovedBody671_83 RemovedBody671_154

def RemovedBody671_156 : StackLang.HolProg 64 :=
.seq RemovedBody671_10 RemovedBody671_155

def RemovedBody671_157 : StackLang.HolProg 64 :=
.seq RemovedBody671_9 RemovedBody671_156

def RemovedBody671_158 : StackLang.HolProg 64 :=
.seq RemovedBody671_6 RemovedBody671_157

def Removed671 : Nat × StackLang.HolProg 64 := (671, RemovedBody671_158)
theorem Removed671_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc671 = Removed671 := by
  kernel_rfl
#print axioms Removed671_eq
end InitECandidate.Proofs.BackendStages
