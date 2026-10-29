import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc87
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody87_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody87_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody87_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody87_3 : StackLang.HolProg 64 :=
.seq RemovedBody87_1 RemovedBody87_2

def RemovedBody87_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody87_3 RemovedBody87_4

def RemovedBody87_6 : StackLang.HolProg 64 :=
.seq RemovedBody87_0 RemovedBody87_5

def RemovedBody87_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody87_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody87_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody87_10 : StackLang.HolProg 64 :=
.seq RemovedBody87_8 RemovedBody87_9

def RemovedBody87_11 : StackLang.HolProg 64 :=
.seq RemovedBody87_7 RemovedBody87_10

def RemovedBody87_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 33#64)

def RemovedBody87_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody87_15 : StackLang.HolProg 64 :=
.seq RemovedBody87_13 RemovedBody87_14

def RemovedBody87_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody87_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody87_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody87_19 : StackLang.HolProg 64 :=
.seq RemovedBody87_17 RemovedBody87_18

def RemovedBody87_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody87_19 RemovedBody87_20

def RemovedBody87_22 : StackLang.HolProg 64 :=
.seq RemovedBody87_16 RemovedBody87_21

def RemovedBody87_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody87_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody87_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 87 3

def RemovedBody87_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody87_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody87_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody87_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody87_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody87_32 : StackLang.HolProg 64 :=
.seq RemovedBody87_30 RemovedBody87_31

def RemovedBody87_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody87_34 : StackLang.HolProg 64 :=
.seq RemovedBody87_32 RemovedBody87_33

def RemovedBody87_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody87_36 : StackLang.HolProg 64 :=
.seq RemovedBody87_34 RemovedBody87_35

def RemovedBody87_37 : StackLang.HolProg 64 :=
.seq RemovedBody87_29 RemovedBody87_36

def RemovedBody87_38 : StackLang.HolProg 64 :=
.seq RemovedBody87_28 RemovedBody87_37

def RemovedBody87_39 : StackLang.HolProg 64 :=
.seq RemovedBody87_27 RemovedBody87_38

def RemovedBody87_40 : StackLang.HolProg 64 :=
.seq RemovedBody87_26 RemovedBody87_39

def RemovedBody87_41 : StackLang.HolProg 64 :=
.seq RemovedBody87_25 RemovedBody87_40

def RemovedBody87_42 : StackLang.HolProg 64 :=
.seq RemovedBody87_24 RemovedBody87_41

def RemovedBody87_43 : StackLang.HolProg 64 :=
.seq RemovedBody87_23 RemovedBody87_42

def RemovedBody87_44 : StackLang.HolProg 64 :=
.seq RemovedBody87_22 RemovedBody87_43

def RemovedBody87_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody87_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody87_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody87_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody87_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody87_53 : StackLang.HolProg 64 :=
.seq RemovedBody87_51 RemovedBody87_52

def RemovedBody87_54 : StackLang.HolProg 64 :=
.seq RemovedBody87_50 RemovedBody87_53

def RemovedBody87_55 : StackLang.HolProg 64 :=
.seq RemovedBody87_49 RemovedBody87_54

def RemovedBody87_56 : StackLang.HolProg 64 :=
.seq RemovedBody87_48 RemovedBody87_55

def RemovedBody87_57 : StackLang.HolProg 64 :=
.seq RemovedBody87_47 RemovedBody87_56

def RemovedBody87_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody87_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody87_60 : StackLang.HolProg 64 :=
.seq RemovedBody87_58 RemovedBody87_59

def RemovedBody87_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody87_62 : StackLang.HolProg 64 :=
.seq RemovedBody87_60 RemovedBody87_61

def RemovedBody87_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody87_57, 0, 87, 2)) (Sum.inl 86) (some (RemovedBody87_62, 87, 3))

def RemovedBody87_64 : StackLang.HolProg 64 :=
.seq RemovedBody87_46 RemovedBody87_63

def RemovedBody87_65 : StackLang.HolProg 64 :=
.seq RemovedBody87_45 RemovedBody87_64

def RemovedBody87_66 : StackLang.HolProg 64 :=
.seq RemovedBody87_44 RemovedBody87_65

def RemovedBody87_67 : StackLang.HolProg 64 :=
.seq RemovedBody87_15 RemovedBody87_66

def RemovedBody87_68 : StackLang.HolProg 64 :=
.seq RemovedBody87_12 RemovedBody87_67

def RemovedBody87_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody87_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody87_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody87_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 34#64)

def RemovedBody87_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody87_78 : StackLang.HolProg 64 :=
.seq RemovedBody87_76 RemovedBody87_77

def RemovedBody87_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody87_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody87_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody87_82 : StackLang.HolProg 64 :=
.seq RemovedBody87_80 RemovedBody87_81

def RemovedBody87_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody87_82 RemovedBody87_83

def RemovedBody87_85 : StackLang.HolProg 64 :=
.seq RemovedBody87_79 RemovedBody87_84

def RemovedBody87_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody87_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody87_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 87 5

def RemovedBody87_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody87_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody87_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody87_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody87_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody87_95 : StackLang.HolProg 64 :=
.seq RemovedBody87_93 RemovedBody87_94

def RemovedBody87_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody87_97 : StackLang.HolProg 64 :=
.seq RemovedBody87_95 RemovedBody87_96

def RemovedBody87_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody87_99 : StackLang.HolProg 64 :=
.seq RemovedBody87_97 RemovedBody87_98

def RemovedBody87_100 : StackLang.HolProg 64 :=
.seq RemovedBody87_92 RemovedBody87_99

def RemovedBody87_101 : StackLang.HolProg 64 :=
.seq RemovedBody87_91 RemovedBody87_100

def RemovedBody87_102 : StackLang.HolProg 64 :=
.seq RemovedBody87_90 RemovedBody87_101

def RemovedBody87_103 : StackLang.HolProg 64 :=
.seq RemovedBody87_89 RemovedBody87_102

def RemovedBody87_104 : StackLang.HolProg 64 :=
.seq RemovedBody87_88 RemovedBody87_103

def RemovedBody87_105 : StackLang.HolProg 64 :=
.seq RemovedBody87_87 RemovedBody87_104

def RemovedBody87_106 : StackLang.HolProg 64 :=
.seq RemovedBody87_86 RemovedBody87_105

def RemovedBody87_107 : StackLang.HolProg 64 :=
.seq RemovedBody87_85 RemovedBody87_106

def RemovedBody87_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody87_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody87_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody87_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody87_115 : StackLang.HolProg 64 :=
.seq RemovedBody87_113 RemovedBody87_114

def RemovedBody87_116 : StackLang.HolProg 64 :=
.seq RemovedBody87_112 RemovedBody87_115

def RemovedBody87_117 : StackLang.HolProg 64 :=
.seq RemovedBody87_111 RemovedBody87_116

def RemovedBody87_118 : StackLang.HolProg 64 :=
.seq RemovedBody87_110 RemovedBody87_117

def RemovedBody87_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody87_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody87_121 : StackLang.HolProg 64 :=
.seq RemovedBody87_119 RemovedBody87_120

def RemovedBody87_122 : StackLang.HolProg 64 :=
.call (some (RemovedBody87_118, 0, 87, 4)) (Sum.inl 86) (some (RemovedBody87_121, 87, 5))

def RemovedBody87_123 : StackLang.HolProg 64 :=
.seq RemovedBody87_109 RemovedBody87_122

def RemovedBody87_124 : StackLang.HolProg 64 :=
.seq RemovedBody87_108 RemovedBody87_123

def RemovedBody87_125 : StackLang.HolProg 64 :=
.seq RemovedBody87_107 RemovedBody87_124

def RemovedBody87_126 : StackLang.HolProg 64 :=
.seq RemovedBody87_78 RemovedBody87_125

def RemovedBody87_127 : StackLang.HolProg 64 :=
.seq RemovedBody87_75 RemovedBody87_126

def RemovedBody87_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody87_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody87_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody87_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody87_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody87_133 : StackLang.HolProg 64 :=
.seq RemovedBody87_131 RemovedBody87_132

def RemovedBody87_134 : StackLang.HolProg 64 :=
.seq RemovedBody87_130 RemovedBody87_133

def RemovedBody87_135 : StackLang.HolProg 64 :=
.seq RemovedBody87_129 RemovedBody87_134

def RemovedBody87_136 : StackLang.HolProg 64 :=
.seq RemovedBody87_128 RemovedBody87_135

def RemovedBody87_137 : StackLang.HolProg 64 :=
.seq RemovedBody87_127 RemovedBody87_136

def RemovedBody87_138 : StackLang.HolProg 64 :=
.seq RemovedBody87_74 RemovedBody87_137

def RemovedBody87_139 : StackLang.HolProg 64 :=
.seq RemovedBody87_73 RemovedBody87_138

def RemovedBody87_140 : StackLang.HolProg 64 :=
.seq RemovedBody87_72 RemovedBody87_139

def RemovedBody87_141 : StackLang.HolProg 64 :=
.seq RemovedBody87_71 RemovedBody87_140

def RemovedBody87_142 : StackLang.HolProg 64 :=
.seq RemovedBody87_70 RemovedBody87_141

def RemovedBody87_143 : StackLang.HolProg 64 :=
.seq RemovedBody87_69 RemovedBody87_142

def RemovedBody87_144 : StackLang.HolProg 64 :=
.seq RemovedBody87_68 RemovedBody87_143

def RemovedBody87_145 : StackLang.HolProg 64 :=
.seq RemovedBody87_11 RemovedBody87_144

def RemovedBody87_146 : StackLang.HolProg 64 :=
.seq RemovedBody87_6 RemovedBody87_145

def Removed87 : Nat × StackLang.HolProg 64 := (87, RemovedBody87_146)
theorem Removed87_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc87 = Removed87 := by
  kernel_rfl
#print axioms Removed87_eq
end InitECandidate.Proofs.BackendStages
