import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc760
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody760_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody760_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody760_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody760_3 : StackLang.HolProg 64 :=
.seq RemovedBody760_1 RemovedBody760_2

def RemovedBody760_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody760_3 RemovedBody760_4

def RemovedBody760_6 : StackLang.HolProg 64 :=
.seq RemovedBody760_0 RemovedBody760_5

def RemovedBody760_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody760_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody760_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody760_10 : StackLang.HolProg 64 :=
.seq RemovedBody760_8 RemovedBody760_9

def RemovedBody760_11 : StackLang.HolProg 64 :=
.seq RemovedBody760_7 RemovedBody760_10

def RemovedBody760_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3391#64)

def RemovedBody760_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody760_15 : StackLang.HolProg 64 :=
.seq RemovedBody760_13 RemovedBody760_14

def RemovedBody760_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody760_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody760_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody760_19 : StackLang.HolProg 64 :=
.seq RemovedBody760_17 RemovedBody760_18

def RemovedBody760_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody760_19 RemovedBody760_20

def RemovedBody760_22 : StackLang.HolProg 64 :=
.seq RemovedBody760_16 RemovedBody760_21

def RemovedBody760_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody760_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody760_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 760 3

def RemovedBody760_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody760_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody760_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody760_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody760_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody760_32 : StackLang.HolProg 64 :=
.seq RemovedBody760_30 RemovedBody760_31

def RemovedBody760_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody760_34 : StackLang.HolProg 64 :=
.seq RemovedBody760_32 RemovedBody760_33

def RemovedBody760_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody760_36 : StackLang.HolProg 64 :=
.seq RemovedBody760_34 RemovedBody760_35

def RemovedBody760_37 : StackLang.HolProg 64 :=
.seq RemovedBody760_29 RemovedBody760_36

def RemovedBody760_38 : StackLang.HolProg 64 :=
.seq RemovedBody760_28 RemovedBody760_37

def RemovedBody760_39 : StackLang.HolProg 64 :=
.seq RemovedBody760_27 RemovedBody760_38

def RemovedBody760_40 : StackLang.HolProg 64 :=
.seq RemovedBody760_26 RemovedBody760_39

def RemovedBody760_41 : StackLang.HolProg 64 :=
.seq RemovedBody760_25 RemovedBody760_40

def RemovedBody760_42 : StackLang.HolProg 64 :=
.seq RemovedBody760_24 RemovedBody760_41

def RemovedBody760_43 : StackLang.HolProg 64 :=
.seq RemovedBody760_23 RemovedBody760_42

def RemovedBody760_44 : StackLang.HolProg 64 :=
.seq RemovedBody760_22 RemovedBody760_43

def RemovedBody760_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody760_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody760_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody760_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody760_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody760_53 : StackLang.HolProg 64 :=
.seq RemovedBody760_51 RemovedBody760_52

def RemovedBody760_54 : StackLang.HolProg 64 :=
.seq RemovedBody760_50 RemovedBody760_53

def RemovedBody760_55 : StackLang.HolProg 64 :=
.seq RemovedBody760_49 RemovedBody760_54

def RemovedBody760_56 : StackLang.HolProg 64 :=
.seq RemovedBody760_48 RemovedBody760_55

def RemovedBody760_57 : StackLang.HolProg 64 :=
.seq RemovedBody760_47 RemovedBody760_56

def RemovedBody760_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody760_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody760_60 : StackLang.HolProg 64 :=
.seq RemovedBody760_58 RemovedBody760_59

def RemovedBody760_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody760_62 : StackLang.HolProg 64 :=
.seq RemovedBody760_60 RemovedBody760_61

def RemovedBody760_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody760_57, 0, 760, 2)) (Sum.inl 746) (some (RemovedBody760_62, 760, 3))

def RemovedBody760_64 : StackLang.HolProg 64 :=
.seq RemovedBody760_46 RemovedBody760_63

def RemovedBody760_65 : StackLang.HolProg 64 :=
.seq RemovedBody760_45 RemovedBody760_64

def RemovedBody760_66 : StackLang.HolProg 64 :=
.seq RemovedBody760_44 RemovedBody760_65

def RemovedBody760_67 : StackLang.HolProg 64 :=
.seq RemovedBody760_15 RemovedBody760_66

def RemovedBody760_68 : StackLang.HolProg 64 :=
.seq RemovedBody760_12 RemovedBody760_67

def RemovedBody760_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody760_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody760_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody760_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3392#64)

def RemovedBody760_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody760_78 : StackLang.HolProg 64 :=
.seq RemovedBody760_76 RemovedBody760_77

def RemovedBody760_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody760_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody760_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody760_82 : StackLang.HolProg 64 :=
.seq RemovedBody760_80 RemovedBody760_81

def RemovedBody760_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody760_82 RemovedBody760_83

def RemovedBody760_85 : StackLang.HolProg 64 :=
.seq RemovedBody760_79 RemovedBody760_84

def RemovedBody760_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody760_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody760_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 760 5

def RemovedBody760_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody760_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody760_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody760_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody760_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody760_95 : StackLang.HolProg 64 :=
.seq RemovedBody760_93 RemovedBody760_94

def RemovedBody760_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody760_97 : StackLang.HolProg 64 :=
.seq RemovedBody760_95 RemovedBody760_96

def RemovedBody760_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody760_99 : StackLang.HolProg 64 :=
.seq RemovedBody760_97 RemovedBody760_98

def RemovedBody760_100 : StackLang.HolProg 64 :=
.seq RemovedBody760_92 RemovedBody760_99

def RemovedBody760_101 : StackLang.HolProg 64 :=
.seq RemovedBody760_91 RemovedBody760_100

def RemovedBody760_102 : StackLang.HolProg 64 :=
.seq RemovedBody760_90 RemovedBody760_101

def RemovedBody760_103 : StackLang.HolProg 64 :=
.seq RemovedBody760_89 RemovedBody760_102

def RemovedBody760_104 : StackLang.HolProg 64 :=
.seq RemovedBody760_88 RemovedBody760_103

def RemovedBody760_105 : StackLang.HolProg 64 :=
.seq RemovedBody760_87 RemovedBody760_104

def RemovedBody760_106 : StackLang.HolProg 64 :=
.seq RemovedBody760_86 RemovedBody760_105

def RemovedBody760_107 : StackLang.HolProg 64 :=
.seq RemovedBody760_85 RemovedBody760_106

def RemovedBody760_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody760_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody760_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody760_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody760_115 : StackLang.HolProg 64 :=
.seq RemovedBody760_113 RemovedBody760_114

def RemovedBody760_116 : StackLang.HolProg 64 :=
.seq RemovedBody760_112 RemovedBody760_115

def RemovedBody760_117 : StackLang.HolProg 64 :=
.seq RemovedBody760_111 RemovedBody760_116

def RemovedBody760_118 : StackLang.HolProg 64 :=
.seq RemovedBody760_110 RemovedBody760_117

def RemovedBody760_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody760_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody760_121 : StackLang.HolProg 64 :=
.seq RemovedBody760_119 RemovedBody760_120

def RemovedBody760_122 : StackLang.HolProg 64 :=
.call (some (RemovedBody760_118, 0, 760, 4)) (Sum.inl 751) (some (RemovedBody760_121, 760, 5))

def RemovedBody760_123 : StackLang.HolProg 64 :=
.seq RemovedBody760_109 RemovedBody760_122

def RemovedBody760_124 : StackLang.HolProg 64 :=
.seq RemovedBody760_108 RemovedBody760_123

def RemovedBody760_125 : StackLang.HolProg 64 :=
.seq RemovedBody760_107 RemovedBody760_124

def RemovedBody760_126 : StackLang.HolProg 64 :=
.seq RemovedBody760_78 RemovedBody760_125

def RemovedBody760_127 : StackLang.HolProg 64 :=
.seq RemovedBody760_75 RemovedBody760_126

def RemovedBody760_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody760_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody760_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody760_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody760_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody760_133 : StackLang.HolProg 64 :=
.seq RemovedBody760_131 RemovedBody760_132

def RemovedBody760_134 : StackLang.HolProg 64 :=
.seq RemovedBody760_130 RemovedBody760_133

def RemovedBody760_135 : StackLang.HolProg 64 :=
.seq RemovedBody760_129 RemovedBody760_134

def RemovedBody760_136 : StackLang.HolProg 64 :=
.seq RemovedBody760_128 RemovedBody760_135

def RemovedBody760_137 : StackLang.HolProg 64 :=
.seq RemovedBody760_127 RemovedBody760_136

def RemovedBody760_138 : StackLang.HolProg 64 :=
.seq RemovedBody760_74 RemovedBody760_137

def RemovedBody760_139 : StackLang.HolProg 64 :=
.seq RemovedBody760_73 RemovedBody760_138

def RemovedBody760_140 : StackLang.HolProg 64 :=
.seq RemovedBody760_72 RemovedBody760_139

def RemovedBody760_141 : StackLang.HolProg 64 :=
.seq RemovedBody760_71 RemovedBody760_140

def RemovedBody760_142 : StackLang.HolProg 64 :=
.seq RemovedBody760_70 RemovedBody760_141

def RemovedBody760_143 : StackLang.HolProg 64 :=
.seq RemovedBody760_69 RemovedBody760_142

def RemovedBody760_144 : StackLang.HolProg 64 :=
.seq RemovedBody760_68 RemovedBody760_143

def RemovedBody760_145 : StackLang.HolProg 64 :=
.seq RemovedBody760_11 RemovedBody760_144

def RemovedBody760_146 : StackLang.HolProg 64 :=
.seq RemovedBody760_6 RemovedBody760_145

def Removed760 : Nat × StackLang.HolProg 64 := (760, RemovedBody760_146)
theorem Removed760_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc760 = Removed760 := by
  kernel_rfl
#print axioms Removed760_eq
end InitECandidate.Proofs.BackendStages
