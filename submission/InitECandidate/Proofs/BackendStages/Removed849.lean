import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc849
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody849_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody849_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody849_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody849_3 : StackLang.HolProg 64 :=
.seq RemovedBody849_1 RemovedBody849_2

def RemovedBody849_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody849_3 RemovedBody849_4

def RemovedBody849_6 : StackLang.HolProg 64 :=
.seq RemovedBody849_0 RemovedBody849_5

def RemovedBody849_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody849_9 : StackLang.HolProg 64 :=
.seq RemovedBody849_7 RemovedBody849_8

def RemovedBody849_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4269#64)

def RemovedBody849_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody849_13 : StackLang.HolProg 64 :=
.seq RemovedBody849_11 RemovedBody849_12

def RemovedBody849_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody849_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody849_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody849_17 : StackLang.HolProg 64 :=
.seq RemovedBody849_15 RemovedBody849_16

def RemovedBody849_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody849_17 RemovedBody849_18

def RemovedBody849_20 : StackLang.HolProg 64 :=
.seq RemovedBody849_14 RemovedBody849_19

def RemovedBody849_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody849_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody849_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 849 3

def RemovedBody849_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody849_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody849_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody849_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody849_30 : StackLang.HolProg 64 :=
.seq RemovedBody849_28 RemovedBody849_29

def RemovedBody849_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody849_32 : StackLang.HolProg 64 :=
.seq RemovedBody849_30 RemovedBody849_31

def RemovedBody849_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody849_34 : StackLang.HolProg 64 :=
.seq RemovedBody849_32 RemovedBody849_33

def RemovedBody849_35 : StackLang.HolProg 64 :=
.seq RemovedBody849_27 RemovedBody849_34

def RemovedBody849_36 : StackLang.HolProg 64 :=
.seq RemovedBody849_26 RemovedBody849_35

def RemovedBody849_37 : StackLang.HolProg 64 :=
.seq RemovedBody849_25 RemovedBody849_36

def RemovedBody849_38 : StackLang.HolProg 64 :=
.seq RemovedBody849_24 RemovedBody849_37

def RemovedBody849_39 : StackLang.HolProg 64 :=
.seq RemovedBody849_23 RemovedBody849_38

def RemovedBody849_40 : StackLang.HolProg 64 :=
.seq RemovedBody849_22 RemovedBody849_39

def RemovedBody849_41 : StackLang.HolProg 64 :=
.seq RemovedBody849_21 RemovedBody849_40

def RemovedBody849_42 : StackLang.HolProg 64 :=
.seq RemovedBody849_20 RemovedBody849_41

def RemovedBody849_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody849_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody849_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody849_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody849_52 : StackLang.HolProg 64 :=
.seq RemovedBody849_50 RemovedBody849_51

def RemovedBody849_53 : StackLang.HolProg 64 :=
.seq RemovedBody849_49 RemovedBody849_52

def RemovedBody849_54 : StackLang.HolProg 64 :=
.seq RemovedBody849_48 RemovedBody849_53

def RemovedBody849_55 : StackLang.HolProg 64 :=
.seq RemovedBody849_47 RemovedBody849_54

def RemovedBody849_56 : StackLang.HolProg 64 :=
.seq RemovedBody849_46 RemovedBody849_55

def RemovedBody849_57 : StackLang.HolProg 64 :=
.seq RemovedBody849_45 RemovedBody849_56

def RemovedBody849_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody849_60 : StackLang.HolProg 64 :=
.seq RemovedBody849_58 RemovedBody849_59

def RemovedBody849_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody849_62 : StackLang.HolProg 64 :=
.seq RemovedBody849_60 RemovedBody849_61

def RemovedBody849_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody849_57, 0, 849, 2)) (Sum.inl 187) (some (RemovedBody849_62, 849, 3))

def RemovedBody849_64 : StackLang.HolProg 64 :=
.seq RemovedBody849_44 RemovedBody849_63

def RemovedBody849_65 : StackLang.HolProg 64 :=
.seq RemovedBody849_43 RemovedBody849_64

def RemovedBody849_66 : StackLang.HolProg 64 :=
.seq RemovedBody849_42 RemovedBody849_65

def RemovedBody849_67 : StackLang.HolProg 64 :=
.seq RemovedBody849_13 RemovedBody849_66

def RemovedBody849_68 : StackLang.HolProg 64 :=
.seq RemovedBody849_10 RemovedBody849_67

def RemovedBody849_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody849_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody849_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody849_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody849_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody849_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody849_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551488#64))

def RemovedBody849_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody849_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody849_80 : StackLang.HolProg 64 :=
.seq RemovedBody849_78 RemovedBody849_79

def RemovedBody849_81 : StackLang.HolProg 64 :=
.seq RemovedBody849_77 RemovedBody849_80

def RemovedBody849_82 : StackLang.HolProg 64 :=
.seq RemovedBody849_76 RemovedBody849_81

def RemovedBody849_83 : StackLang.HolProg 64 :=
.seq RemovedBody849_75 RemovedBody849_82

def RemovedBody849_84 : StackLang.HolProg 64 :=
.seq RemovedBody849_74 RemovedBody849_83

def RemovedBody849_85 : StackLang.HolProg 64 :=
.seq RemovedBody849_73 RemovedBody849_84

def RemovedBody849_86 : StackLang.HolProg 64 :=
.seq RemovedBody849_72 RemovedBody849_85

def RemovedBody849_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody849_86 RemovedBody849_87

def RemovedBody849_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody849_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody849_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody849_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_93 : StackLang.HolProg 64 :=
.seq RemovedBody849_91 RemovedBody849_92

def RemovedBody849_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4270#64)

def RemovedBody849_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody849_97 : StackLang.HolProg 64 :=
.seq RemovedBody849_95 RemovedBody849_96

def RemovedBody849_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody849_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody849_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody849_101 : StackLang.HolProg 64 :=
.seq RemovedBody849_99 RemovedBody849_100

def RemovedBody849_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody849_101 RemovedBody849_102

def RemovedBody849_104 : StackLang.HolProg 64 :=
.seq RemovedBody849_98 RemovedBody849_103

def RemovedBody849_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody849_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody849_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 849 5

def RemovedBody849_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody849_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody849_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody849_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody849_114 : StackLang.HolProg 64 :=
.seq RemovedBody849_112 RemovedBody849_113

def RemovedBody849_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody849_116 : StackLang.HolProg 64 :=
.seq RemovedBody849_114 RemovedBody849_115

def RemovedBody849_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody849_118 : StackLang.HolProg 64 :=
.seq RemovedBody849_116 RemovedBody849_117

def RemovedBody849_119 : StackLang.HolProg 64 :=
.seq RemovedBody849_111 RemovedBody849_118

def RemovedBody849_120 : StackLang.HolProg 64 :=
.seq RemovedBody849_110 RemovedBody849_119

def RemovedBody849_121 : StackLang.HolProg 64 :=
.seq RemovedBody849_109 RemovedBody849_120

def RemovedBody849_122 : StackLang.HolProg 64 :=
.seq RemovedBody849_108 RemovedBody849_121

def RemovedBody849_123 : StackLang.HolProg 64 :=
.seq RemovedBody849_107 RemovedBody849_122

def RemovedBody849_124 : StackLang.HolProg 64 :=
.seq RemovedBody849_106 RemovedBody849_123

def RemovedBody849_125 : StackLang.HolProg 64 :=
.seq RemovedBody849_105 RemovedBody849_124

def RemovedBody849_126 : StackLang.HolProg 64 :=
.seq RemovedBody849_104 RemovedBody849_125

def RemovedBody849_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody849_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody849_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody849_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody849_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_135 : StackLang.HolProg 64 :=
.seq RemovedBody849_133 RemovedBody849_134

def RemovedBody849_136 : StackLang.HolProg 64 :=
.seq RemovedBody849_132 RemovedBody849_135

def RemovedBody849_137 : StackLang.HolProg 64 :=
.seq RemovedBody849_131 RemovedBody849_136

def RemovedBody849_138 : StackLang.HolProg 64 :=
.seq RemovedBody849_130 RemovedBody849_137

def RemovedBody849_139 : StackLang.HolProg 64 :=
.seq RemovedBody849_129 RemovedBody849_138

def RemovedBody849_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody849_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody849_142 : StackLang.HolProg 64 :=
.seq RemovedBody849_140 RemovedBody849_141

def RemovedBody849_143 : StackLang.HolProg 64 :=
.call (some (RemovedBody849_139, 0, 849, 4)) (Sum.inl 399) (some (RemovedBody849_142, 849, 5))

def RemovedBody849_144 : StackLang.HolProg 64 :=
.seq RemovedBody849_128 RemovedBody849_143

def RemovedBody849_145 : StackLang.HolProg 64 :=
.seq RemovedBody849_127 RemovedBody849_144

def RemovedBody849_146 : StackLang.HolProg 64 :=
.seq RemovedBody849_126 RemovedBody849_145

def RemovedBody849_147 : StackLang.HolProg 64 :=
.seq RemovedBody849_97 RemovedBody849_146

def RemovedBody849_148 : StackLang.HolProg 64 :=
.seq RemovedBody849_94 RemovedBody849_147

def RemovedBody849_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody849_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody849_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody849_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody849_153 : StackLang.HolProg 64 :=
.seq RemovedBody849_151 RemovedBody849_152

def RemovedBody849_154 : StackLang.HolProg 64 :=
.seq RemovedBody849_150 RemovedBody849_153

def RemovedBody849_155 : StackLang.HolProg 64 :=
.seq RemovedBody849_149 RemovedBody849_154

def RemovedBody849_156 : StackLang.HolProg 64 :=
.seq RemovedBody849_148 RemovedBody849_155

def RemovedBody849_157 : StackLang.HolProg 64 :=
.seq RemovedBody849_93 RemovedBody849_156

def RemovedBody849_158 : StackLang.HolProg 64 :=
.seq RemovedBody849_90 RemovedBody849_157

def RemovedBody849_159 : StackLang.HolProg 64 :=
.seq RemovedBody849_89 RemovedBody849_158

def RemovedBody849_160 : StackLang.HolProg 64 :=
.seq RemovedBody849_88 RemovedBody849_159

def RemovedBody849_161 : StackLang.HolProg 64 :=
.seq RemovedBody849_71 RemovedBody849_160

def RemovedBody849_162 : StackLang.HolProg 64 :=
.seq RemovedBody849_70 RemovedBody849_161

def RemovedBody849_163 : StackLang.HolProg 64 :=
.seq RemovedBody849_69 RemovedBody849_162

def RemovedBody849_164 : StackLang.HolProg 64 :=
.seq RemovedBody849_68 RemovedBody849_163

def RemovedBody849_165 : StackLang.HolProg 64 :=
.seq RemovedBody849_9 RemovedBody849_164

def RemovedBody849_166 : StackLang.HolProg 64 :=
.seq RemovedBody849_6 RemovedBody849_165

def Removed849 : Nat × StackLang.HolProg 64 := (849, RemovedBody849_166)
theorem Removed849_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc849 = Removed849 := by
  kernel_rfl
#print axioms Removed849_eq
end InitECandidate.Proofs.BackendStages
