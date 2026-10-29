import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc409
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody409_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody409_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody409_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody409_3 : StackLang.HolProg 64 :=
.seq RemovedBody409_1 RemovedBody409_2

def RemovedBody409_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody409_3 RemovedBody409_4

def RemovedBody409_6 : StackLang.HolProg 64 :=
.seq RemovedBody409_0 RemovedBody409_5

def RemovedBody409_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody409_9 : StackLang.HolProg 64 :=
.seq RemovedBody409_7 RemovedBody409_8

def RemovedBody409_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1219#64)

def RemovedBody409_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody409_13 : StackLang.HolProg 64 :=
.seq RemovedBody409_11 RemovedBody409_12

def RemovedBody409_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody409_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody409_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody409_17 : StackLang.HolProg 64 :=
.seq RemovedBody409_15 RemovedBody409_16

def RemovedBody409_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody409_17 RemovedBody409_18

def RemovedBody409_20 : StackLang.HolProg 64 :=
.seq RemovedBody409_14 RemovedBody409_19

def RemovedBody409_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody409_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody409_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 409 3

def RemovedBody409_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody409_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody409_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody409_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody409_30 : StackLang.HolProg 64 :=
.seq RemovedBody409_28 RemovedBody409_29

def RemovedBody409_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody409_32 : StackLang.HolProg 64 :=
.seq RemovedBody409_30 RemovedBody409_31

def RemovedBody409_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody409_34 : StackLang.HolProg 64 :=
.seq RemovedBody409_32 RemovedBody409_33

def RemovedBody409_35 : StackLang.HolProg 64 :=
.seq RemovedBody409_27 RemovedBody409_34

def RemovedBody409_36 : StackLang.HolProg 64 :=
.seq RemovedBody409_26 RemovedBody409_35

def RemovedBody409_37 : StackLang.HolProg 64 :=
.seq RemovedBody409_25 RemovedBody409_36

def RemovedBody409_38 : StackLang.HolProg 64 :=
.seq RemovedBody409_24 RemovedBody409_37

def RemovedBody409_39 : StackLang.HolProg 64 :=
.seq RemovedBody409_23 RemovedBody409_38

def RemovedBody409_40 : StackLang.HolProg 64 :=
.seq RemovedBody409_22 RemovedBody409_39

def RemovedBody409_41 : StackLang.HolProg 64 :=
.seq RemovedBody409_21 RemovedBody409_40

def RemovedBody409_42 : StackLang.HolProg 64 :=
.seq RemovedBody409_20 RemovedBody409_41

def RemovedBody409_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody409_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody409_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody409_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody409_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody409_53 : StackLang.HolProg 64 :=
.seq RemovedBody409_51 RemovedBody409_52

def RemovedBody409_54 : StackLang.HolProg 64 :=
.seq RemovedBody409_50 RemovedBody409_53

def RemovedBody409_55 : StackLang.HolProg 64 :=
.seq RemovedBody409_49 RemovedBody409_54

def RemovedBody409_56 : StackLang.HolProg 64 :=
.seq RemovedBody409_48 RemovedBody409_55

def RemovedBody409_57 : StackLang.HolProg 64 :=
.seq RemovedBody409_47 RemovedBody409_56

def RemovedBody409_58 : StackLang.HolProg 64 :=
.seq RemovedBody409_46 RemovedBody409_57

def RemovedBody409_59 : StackLang.HolProg 64 :=
.seq RemovedBody409_45 RemovedBody409_58

def RemovedBody409_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody409_62 : StackLang.HolProg 64 :=
.seq RemovedBody409_60 RemovedBody409_61

def RemovedBody409_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody409_64 : StackLang.HolProg 64 :=
.seq RemovedBody409_62 RemovedBody409_63

def RemovedBody409_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody409_59, 0, 409, 2)) (Sum.inl 186) (some (RemovedBody409_64, 409, 3))

def RemovedBody409_66 : StackLang.HolProg 64 :=
.seq RemovedBody409_44 RemovedBody409_65

def RemovedBody409_67 : StackLang.HolProg 64 :=
.seq RemovedBody409_43 RemovedBody409_66

def RemovedBody409_68 : StackLang.HolProg 64 :=
.seq RemovedBody409_42 RemovedBody409_67

def RemovedBody409_69 : StackLang.HolProg 64 :=
.seq RemovedBody409_13 RemovedBody409_68

def RemovedBody409_70 : StackLang.HolProg 64 :=
.seq RemovedBody409_10 RemovedBody409_69

def RemovedBody409_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody409_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody409_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody409_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody409_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody409_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody409_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody409_80 : StackLang.HolProg 64 :=
.seq RemovedBody409_78 RemovedBody409_79

def RemovedBody409_81 : StackLang.HolProg 64 :=
.seq RemovedBody409_77 RemovedBody409_80

def RemovedBody409_82 : StackLang.HolProg 64 :=
.seq RemovedBody409_76 RemovedBody409_81

def RemovedBody409_83 : StackLang.HolProg 64 :=
.seq RemovedBody409_75 RemovedBody409_82

def RemovedBody409_84 : StackLang.HolProg 64 :=
.seq RemovedBody409_74 RemovedBody409_83

def RemovedBody409_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody409_84 RemovedBody409_85

def RemovedBody409_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody409_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody409_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody409_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody409_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_92 : StackLang.HolProg 64 :=
.seq RemovedBody409_90 RemovedBody409_91

def RemovedBody409_93 : StackLang.HolProg 64 :=
.seq RemovedBody409_89 RemovedBody409_92

def RemovedBody409_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1220#64)

def RemovedBody409_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody409_97 : StackLang.HolProg 64 :=
.seq RemovedBody409_95 RemovedBody409_96

def RemovedBody409_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody409_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody409_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody409_101 : StackLang.HolProg 64 :=
.seq RemovedBody409_99 RemovedBody409_100

def RemovedBody409_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody409_101 RemovedBody409_102

def RemovedBody409_104 : StackLang.HolProg 64 :=
.seq RemovedBody409_98 RemovedBody409_103

def RemovedBody409_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody409_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody409_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 409 5

def RemovedBody409_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody409_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody409_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody409_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody409_114 : StackLang.HolProg 64 :=
.seq RemovedBody409_112 RemovedBody409_113

def RemovedBody409_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody409_116 : StackLang.HolProg 64 :=
.seq RemovedBody409_114 RemovedBody409_115

def RemovedBody409_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody409_118 : StackLang.HolProg 64 :=
.seq RemovedBody409_116 RemovedBody409_117

def RemovedBody409_119 : StackLang.HolProg 64 :=
.seq RemovedBody409_111 RemovedBody409_118

def RemovedBody409_120 : StackLang.HolProg 64 :=
.seq RemovedBody409_110 RemovedBody409_119

def RemovedBody409_121 : StackLang.HolProg 64 :=
.seq RemovedBody409_109 RemovedBody409_120

def RemovedBody409_122 : StackLang.HolProg 64 :=
.seq RemovedBody409_108 RemovedBody409_121

def RemovedBody409_123 : StackLang.HolProg 64 :=
.seq RemovedBody409_107 RemovedBody409_122

def RemovedBody409_124 : StackLang.HolProg 64 :=
.seq RemovedBody409_106 RemovedBody409_123

def RemovedBody409_125 : StackLang.HolProg 64 :=
.seq RemovedBody409_105 RemovedBody409_124

def RemovedBody409_126 : StackLang.HolProg 64 :=
.seq RemovedBody409_104 RemovedBody409_125

def RemovedBody409_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody409_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody409_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody409_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody409_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_135 : StackLang.HolProg 64 :=
.seq RemovedBody409_133 RemovedBody409_134

def RemovedBody409_136 : StackLang.HolProg 64 :=
.seq RemovedBody409_132 RemovedBody409_135

def RemovedBody409_137 : StackLang.HolProg 64 :=
.seq RemovedBody409_131 RemovedBody409_136

def RemovedBody409_138 : StackLang.HolProg 64 :=
.seq RemovedBody409_130 RemovedBody409_137

def RemovedBody409_139 : StackLang.HolProg 64 :=
.seq RemovedBody409_129 RemovedBody409_138

def RemovedBody409_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody409_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody409_142 : StackLang.HolProg 64 :=
.seq RemovedBody409_140 RemovedBody409_141

def RemovedBody409_143 : StackLang.HolProg 64 :=
.call (some (RemovedBody409_139, 0, 409, 4)) (Sum.inl 186) (some (RemovedBody409_142, 409, 5))

def RemovedBody409_144 : StackLang.HolProg 64 :=
.seq RemovedBody409_128 RemovedBody409_143

def RemovedBody409_145 : StackLang.HolProg 64 :=
.seq RemovedBody409_127 RemovedBody409_144

def RemovedBody409_146 : StackLang.HolProg 64 :=
.seq RemovedBody409_126 RemovedBody409_145

def RemovedBody409_147 : StackLang.HolProg 64 :=
.seq RemovedBody409_97 RemovedBody409_146

def RemovedBody409_148 : StackLang.HolProg 64 :=
.seq RemovedBody409_94 RemovedBody409_147

def RemovedBody409_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody409_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody409_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody409_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody409_153 : StackLang.HolProg 64 :=
.seq RemovedBody409_151 RemovedBody409_152

def RemovedBody409_154 : StackLang.HolProg 64 :=
.seq RemovedBody409_150 RemovedBody409_153

def RemovedBody409_155 : StackLang.HolProg 64 :=
.seq RemovedBody409_149 RemovedBody409_154

def RemovedBody409_156 : StackLang.HolProg 64 :=
.seq RemovedBody409_148 RemovedBody409_155

def RemovedBody409_157 : StackLang.HolProg 64 :=
.seq RemovedBody409_93 RemovedBody409_156

def RemovedBody409_158 : StackLang.HolProg 64 :=
.seq RemovedBody409_88 RemovedBody409_157

def RemovedBody409_159 : StackLang.HolProg 64 :=
.seq RemovedBody409_87 RemovedBody409_158

def RemovedBody409_160 : StackLang.HolProg 64 :=
.seq RemovedBody409_86 RemovedBody409_159

def RemovedBody409_161 : StackLang.HolProg 64 :=
.seq RemovedBody409_73 RemovedBody409_160

def RemovedBody409_162 : StackLang.HolProg 64 :=
.seq RemovedBody409_72 RemovedBody409_161

def RemovedBody409_163 : StackLang.HolProg 64 :=
.seq RemovedBody409_71 RemovedBody409_162

def RemovedBody409_164 : StackLang.HolProg 64 :=
.seq RemovedBody409_70 RemovedBody409_163

def RemovedBody409_165 : StackLang.HolProg 64 :=
.seq RemovedBody409_9 RemovedBody409_164

def RemovedBody409_166 : StackLang.HolProg 64 :=
.seq RemovedBody409_6 RemovedBody409_165

def Removed409 : Nat × StackLang.HolProg 64 := (409, RemovedBody409_166)
theorem Removed409_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc409 = Removed409 := by
  kernel_rfl
#print axioms Removed409_eq
end InitECandidate.Proofs.BackendStages
