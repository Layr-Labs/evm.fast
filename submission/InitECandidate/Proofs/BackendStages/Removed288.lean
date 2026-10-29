import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc288
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody288_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody288_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody288_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody288_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody288_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody288_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody288_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody288_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody288_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody288_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def RemovedBody288_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody288_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody288_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody288_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody288_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody288_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def RemovedBody288_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody288_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def RemovedBody288_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody288_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody288_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody288_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody288_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody288_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def RemovedBody288_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody288_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def RemovedBody288_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody288_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody288_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody288_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody288_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody288_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody288_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody288_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def RemovedBody288_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody288_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody288_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody288_64 : StackLang.HolProg 64 :=
.seq RemovedBody288_62 RemovedBody288_63

def RemovedBody288_65 : StackLang.HolProg 64 :=
.seq RemovedBody288_61 RemovedBody288_64

def RemovedBody288_66 : StackLang.HolProg 64 :=
.seq RemovedBody288_60 RemovedBody288_65

def RemovedBody288_67 : StackLang.HolProg 64 :=
.seq RemovedBody288_59 RemovedBody288_66

def RemovedBody288_68 : StackLang.HolProg 64 :=
.seq RemovedBody288_58 RemovedBody288_67

def RemovedBody288_69 : StackLang.HolProg 64 :=
.seq RemovedBody288_57 RemovedBody288_68

def RemovedBody288_70 : StackLang.HolProg 64 :=
.seq RemovedBody288_56 RemovedBody288_69

def RemovedBody288_71 : StackLang.HolProg 64 :=
.seq RemovedBody288_55 RemovedBody288_70

def RemovedBody288_72 : StackLang.HolProg 64 :=
.seq RemovedBody288_54 RemovedBody288_71

def RemovedBody288_73 : StackLang.HolProg 64 :=
.seq RemovedBody288_53 RemovedBody288_72

def RemovedBody288_74 : StackLang.HolProg 64 :=
.seq RemovedBody288_52 RemovedBody288_73

def RemovedBody288_75 : StackLang.HolProg 64 :=
.seq RemovedBody288_51 RemovedBody288_74

def RemovedBody288_76 : StackLang.HolProg 64 :=
.seq RemovedBody288_50 RemovedBody288_75

def RemovedBody288_77 : StackLang.HolProg 64 :=
.seq RemovedBody288_49 RemovedBody288_76

def RemovedBody288_78 : StackLang.HolProg 64 :=
.seq RemovedBody288_48 RemovedBody288_77

def RemovedBody288_79 : StackLang.HolProg 64 :=
.seq RemovedBody288_47 RemovedBody288_78

def RemovedBody288_80 : StackLang.HolProg 64 :=
.seq RemovedBody288_46 RemovedBody288_79

def RemovedBody288_81 : StackLang.HolProg 64 :=
.seq RemovedBody288_45 RemovedBody288_80

def RemovedBody288_82 : StackLang.HolProg 64 :=
.seq RemovedBody288_44 RemovedBody288_81

def RemovedBody288_83 : StackLang.HolProg 64 :=
.seq RemovedBody288_43 RemovedBody288_82

def RemovedBody288_84 : StackLang.HolProg 64 :=
.seq RemovedBody288_42 RemovedBody288_83

def RemovedBody288_85 : StackLang.HolProg 64 :=
.seq RemovedBody288_41 RemovedBody288_84

def RemovedBody288_86 : StackLang.HolProg 64 :=
.seq RemovedBody288_40 RemovedBody288_85

def RemovedBody288_87 : StackLang.HolProg 64 :=
.seq RemovedBody288_39 RemovedBody288_86

def RemovedBody288_88 : StackLang.HolProg 64 :=
.seq RemovedBody288_38 RemovedBody288_87

def RemovedBody288_89 : StackLang.HolProg 64 :=
.seq RemovedBody288_37 RemovedBody288_88

def RemovedBody288_90 : StackLang.HolProg 64 :=
.seq RemovedBody288_36 RemovedBody288_89

def RemovedBody288_91 : StackLang.HolProg 64 :=
.seq RemovedBody288_35 RemovedBody288_90

def RemovedBody288_92 : StackLang.HolProg 64 :=
.seq RemovedBody288_34 RemovedBody288_91

def RemovedBody288_93 : StackLang.HolProg 64 :=
.seq RemovedBody288_33 RemovedBody288_92

def RemovedBody288_94 : StackLang.HolProg 64 :=
.seq RemovedBody288_32 RemovedBody288_93

def RemovedBody288_95 : StackLang.HolProg 64 :=
.seq RemovedBody288_31 RemovedBody288_94

def RemovedBody288_96 : StackLang.HolProg 64 :=
.seq RemovedBody288_30 RemovedBody288_95

def RemovedBody288_97 : StackLang.HolProg 64 :=
.seq RemovedBody288_29 RemovedBody288_96

def RemovedBody288_98 : StackLang.HolProg 64 :=
.seq RemovedBody288_28 RemovedBody288_97

def RemovedBody288_99 : StackLang.HolProg 64 :=
.seq RemovedBody288_27 RemovedBody288_98

def RemovedBody288_100 : StackLang.HolProg 64 :=
.seq RemovedBody288_26 RemovedBody288_99

def RemovedBody288_101 : StackLang.HolProg 64 :=
.seq RemovedBody288_25 RemovedBody288_100

def RemovedBody288_102 : StackLang.HolProg 64 :=
.seq RemovedBody288_24 RemovedBody288_101

def RemovedBody288_103 : StackLang.HolProg 64 :=
.seq RemovedBody288_23 RemovedBody288_102

def RemovedBody288_104 : StackLang.HolProg 64 :=
.seq RemovedBody288_22 RemovedBody288_103

def RemovedBody288_105 : StackLang.HolProg 64 :=
.seq RemovedBody288_21 RemovedBody288_104

def RemovedBody288_106 : StackLang.HolProg 64 :=
.seq RemovedBody288_20 RemovedBody288_105

def RemovedBody288_107 : StackLang.HolProg 64 :=
.seq RemovedBody288_19 RemovedBody288_106

def RemovedBody288_108 : StackLang.HolProg 64 :=
.seq RemovedBody288_18 RemovedBody288_107

def RemovedBody288_109 : StackLang.HolProg 64 :=
.seq RemovedBody288_17 RemovedBody288_108

def RemovedBody288_110 : StackLang.HolProg 64 :=
.seq RemovedBody288_16 RemovedBody288_109

def RemovedBody288_111 : StackLang.HolProg 64 :=
.seq RemovedBody288_15 RemovedBody288_110

def RemovedBody288_112 : StackLang.HolProg 64 :=
.seq RemovedBody288_14 RemovedBody288_111

def RemovedBody288_113 : StackLang.HolProg 64 :=
.seq RemovedBody288_13 RemovedBody288_112

def RemovedBody288_114 : StackLang.HolProg 64 :=
.seq RemovedBody288_12 RemovedBody288_113

def RemovedBody288_115 : StackLang.HolProg 64 :=
.seq RemovedBody288_11 RemovedBody288_114

def RemovedBody288_116 : StackLang.HolProg 64 :=
.seq RemovedBody288_10 RemovedBody288_115

def RemovedBody288_117 : StackLang.HolProg 64 :=
.seq RemovedBody288_9 RemovedBody288_116

def RemovedBody288_118 : StackLang.HolProg 64 :=
.seq RemovedBody288_8 RemovedBody288_117

def RemovedBody288_119 : StackLang.HolProg 64 :=
.seq RemovedBody288_7 RemovedBody288_118

def RemovedBody288_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody288_123 : StackLang.HolProg 64 :=
.seq RemovedBody288_121 RemovedBody288_122

def RemovedBody288_124 : StackLang.HolProg 64 :=
.seq RemovedBody288_120 RemovedBody288_123

def RemovedBody288_125 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody288_119 RemovedBody288_124

def RemovedBody288_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_128 : StackLang.HolProg 64 :=
.seq RemovedBody288_126 RemovedBody288_127

def RemovedBody288_129 : StackLang.HolProg 64 :=
.seq RemovedBody288_125 RemovedBody288_128

def RemovedBody288_130 : StackLang.HolProg 64 :=
.seq RemovedBody288_6 RemovedBody288_129

def RemovedBody288_131 : StackLang.HolProg 64 :=
.seq RemovedBody288_5 RemovedBody288_130

def RemovedBody288_132 : StackLang.HolProg 64 :=
.loop RemovedBody288_131

def RemovedBody288_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody288_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody288_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody288_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody288_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody288_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody288_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody288_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def RemovedBody288_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody288_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody288_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody288_157 : StackLang.HolProg 64 :=
.seq RemovedBody288_155 RemovedBody288_156

def RemovedBody288_158 : StackLang.HolProg 64 :=
.seq RemovedBody288_154 RemovedBody288_157

def RemovedBody288_159 : StackLang.HolProg 64 :=
.seq RemovedBody288_153 RemovedBody288_158

def RemovedBody288_160 : StackLang.HolProg 64 :=
.seq RemovedBody288_152 RemovedBody288_159

def RemovedBody288_161 : StackLang.HolProg 64 :=
.seq RemovedBody288_151 RemovedBody288_160

def RemovedBody288_162 : StackLang.HolProg 64 :=
.seq RemovedBody288_150 RemovedBody288_161

def RemovedBody288_163 : StackLang.HolProg 64 :=
.seq RemovedBody288_149 RemovedBody288_162

def RemovedBody288_164 : StackLang.HolProg 64 :=
.seq RemovedBody288_148 RemovedBody288_163

def RemovedBody288_165 : StackLang.HolProg 64 :=
.seq RemovedBody288_147 RemovedBody288_164

def RemovedBody288_166 : StackLang.HolProg 64 :=
.seq RemovedBody288_146 RemovedBody288_165

def RemovedBody288_167 : StackLang.HolProg 64 :=
.seq RemovedBody288_145 RemovedBody288_166

def RemovedBody288_168 : StackLang.HolProg 64 :=
.seq RemovedBody288_144 RemovedBody288_167

def RemovedBody288_169 : StackLang.HolProg 64 :=
.seq RemovedBody288_143 RemovedBody288_168

def RemovedBody288_170 : StackLang.HolProg 64 :=
.seq RemovedBody288_142 RemovedBody288_169

def RemovedBody288_171 : StackLang.HolProg 64 :=
.seq RemovedBody288_141 RemovedBody288_170

def RemovedBody288_172 : StackLang.HolProg 64 :=
.seq RemovedBody288_140 RemovedBody288_171

def RemovedBody288_173 : StackLang.HolProg 64 :=
.seq RemovedBody288_139 RemovedBody288_172

def RemovedBody288_174 : StackLang.HolProg 64 :=
.seq RemovedBody288_138 RemovedBody288_173

def RemovedBody288_175 : StackLang.HolProg 64 :=
.seq RemovedBody288_137 RemovedBody288_174

def RemovedBody288_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody288_178 : StackLang.HolProg 64 :=
.seq RemovedBody288_176 RemovedBody288_177

def RemovedBody288_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody288_175 RemovedBody288_178

def RemovedBody288_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_182 : StackLang.HolProg 64 :=
.seq RemovedBody288_180 RemovedBody288_181

def RemovedBody288_183 : StackLang.HolProg 64 :=
.seq RemovedBody288_179 RemovedBody288_182

def RemovedBody288_184 : StackLang.HolProg 64 :=
.seq RemovedBody288_136 RemovedBody288_183

def RemovedBody288_185 : StackLang.HolProg 64 :=
.loop RemovedBody288_184

def RemovedBody288_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody288_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody288_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody288_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody288_190 : StackLang.HolProg 64 :=
.seq RemovedBody288_188 RemovedBody288_189

def RemovedBody288_191 : StackLang.HolProg 64 :=
.seq RemovedBody288_187 RemovedBody288_190

def RemovedBody288_192 : StackLang.HolProg 64 :=
.seq RemovedBody288_186 RemovedBody288_191

def RemovedBody288_193 : StackLang.HolProg 64 :=
.seq RemovedBody288_185 RemovedBody288_192

def RemovedBody288_194 : StackLang.HolProg 64 :=
.seq RemovedBody288_135 RemovedBody288_193

def RemovedBody288_195 : StackLang.HolProg 64 :=
.seq RemovedBody288_134 RemovedBody288_194

def RemovedBody288_196 : StackLang.HolProg 64 :=
.seq RemovedBody288_133 RemovedBody288_195

def RemovedBody288_197 : StackLang.HolProg 64 :=
.seq RemovedBody288_132 RemovedBody288_196

def RemovedBody288_198 : StackLang.HolProg 64 :=
.seq RemovedBody288_4 RemovedBody288_197

def RemovedBody288_199 : StackLang.HolProg 64 :=
.seq RemovedBody288_3 RemovedBody288_198

def RemovedBody288_200 : StackLang.HolProg 64 :=
.seq RemovedBody288_2 RemovedBody288_199

def RemovedBody288_201 : StackLang.HolProg 64 :=
.seq RemovedBody288_1 RemovedBody288_200

def RemovedBody288_202 : StackLang.HolProg 64 :=
.seq RemovedBody288_0 RemovedBody288_201

def Removed288 : Nat × StackLang.HolProg 64 := (288, RemovedBody288_202)
theorem Removed288_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc288 = Removed288 := by
  kernel_rfl
#print axioms Removed288_eq
end InitECandidate.Proofs.BackendStages
