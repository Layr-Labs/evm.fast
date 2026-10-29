import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc290
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody290_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody290_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody290_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody290_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody290_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody290_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody290_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody290_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_12 : StackLang.HolProg 64 :=
.seq RemovedBody290_10 RemovedBody290_11

def RemovedBody290_13 : StackLang.HolProg 64 :=
.seq RemovedBody290_9 RemovedBody290_12

def RemovedBody290_14 : StackLang.HolProg 64 :=
.seq RemovedBody290_8 RemovedBody290_13

def RemovedBody290_15 : StackLang.HolProg 64 :=
.seq RemovedBody290_7 RemovedBody290_14

def RemovedBody290_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody290_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody290_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody290_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody290_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody290_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody290_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def RemovedBody290_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_26 : StackLang.HolProg 64 :=
.seq RemovedBody290_24 RemovedBody290_25

def RemovedBody290_27 : StackLang.HolProg 64 :=
.seq RemovedBody290_23 RemovedBody290_26

def RemovedBody290_28 : StackLang.HolProg 64 :=
.seq RemovedBody290_22 RemovedBody290_27

def RemovedBody290_29 : StackLang.HolProg 64 :=
.seq RemovedBody290_21 RemovedBody290_28

def RemovedBody290_30 : StackLang.HolProg 64 :=
.seq RemovedBody290_20 RemovedBody290_29

def RemovedBody290_31 : StackLang.HolProg 64 :=
.seq RemovedBody290_19 RemovedBody290_30

def RemovedBody290_32 : StackLang.HolProg 64 :=
.seq RemovedBody290_18 RemovedBody290_31

def RemovedBody290_33 : StackLang.HolProg 64 :=
.seq RemovedBody290_17 RemovedBody290_32

def RemovedBody290_34 : StackLang.HolProg 64 :=
.seq RemovedBody290_16 RemovedBody290_33

def RemovedBody290_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody290_15 RemovedBody290_34

def RemovedBody290_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody290_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def RemovedBody290_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody290_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody290_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody290_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody290_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody290_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody290_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody290_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody290_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody290_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def RemovedBody290_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody290_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody290_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody290_60 : StackLang.HolProg 64 :=
.seq RemovedBody290_58 RemovedBody290_59

def RemovedBody290_61 : StackLang.HolProg 64 :=
.seq RemovedBody290_57 RemovedBody290_60

def RemovedBody290_62 : StackLang.HolProg 64 :=
.seq RemovedBody290_56 RemovedBody290_61

def RemovedBody290_63 : StackLang.HolProg 64 :=
.seq RemovedBody290_55 RemovedBody290_62

def RemovedBody290_64 : StackLang.HolProg 64 :=
.seq RemovedBody290_54 RemovedBody290_63

def RemovedBody290_65 : StackLang.HolProg 64 :=
.seq RemovedBody290_53 RemovedBody290_64

def RemovedBody290_66 : StackLang.HolProg 64 :=
.seq RemovedBody290_52 RemovedBody290_65

def RemovedBody290_67 : StackLang.HolProg 64 :=
.seq RemovedBody290_51 RemovedBody290_66

def RemovedBody290_68 : StackLang.HolProg 64 :=
.seq RemovedBody290_50 RemovedBody290_67

def RemovedBody290_69 : StackLang.HolProg 64 :=
.seq RemovedBody290_49 RemovedBody290_68

def RemovedBody290_70 : StackLang.HolProg 64 :=
.seq RemovedBody290_48 RemovedBody290_69

def RemovedBody290_71 : StackLang.HolProg 64 :=
.seq RemovedBody290_47 RemovedBody290_70

def RemovedBody290_72 : StackLang.HolProg 64 :=
.seq RemovedBody290_46 RemovedBody290_71

def RemovedBody290_73 : StackLang.HolProg 64 :=
.seq RemovedBody290_45 RemovedBody290_72

def RemovedBody290_74 : StackLang.HolProg 64 :=
.seq RemovedBody290_44 RemovedBody290_73

def RemovedBody290_75 : StackLang.HolProg 64 :=
.seq RemovedBody290_43 RemovedBody290_74

def RemovedBody290_76 : StackLang.HolProg 64 :=
.seq RemovedBody290_42 RemovedBody290_75

def RemovedBody290_77 : StackLang.HolProg 64 :=
.seq RemovedBody290_41 RemovedBody290_76

def RemovedBody290_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody290_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody290_80 : StackLang.HolProg 64 :=
.seq RemovedBody290_78 RemovedBody290_79

def RemovedBody290_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody290_77 RemovedBody290_80

def RemovedBody290_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody290_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody290_84 : StackLang.HolProg 64 :=
.seq RemovedBody290_82 RemovedBody290_83

def RemovedBody290_85 : StackLang.HolProg 64 :=
.seq RemovedBody290_81 RemovedBody290_84

def RemovedBody290_86 : StackLang.HolProg 64 :=
.seq RemovedBody290_40 RemovedBody290_85

def RemovedBody290_87 : StackLang.HolProg 64 :=
.loop RemovedBody290_86

def RemovedBody290_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody290_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody290_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody290_91 : StackLang.HolProg 64 :=
.seq RemovedBody290_89 RemovedBody290_90

def RemovedBody290_92 : StackLang.HolProg 64 :=
.seq RemovedBody290_88 RemovedBody290_91

def RemovedBody290_93 : StackLang.HolProg 64 :=
.seq RemovedBody290_87 RemovedBody290_92

def RemovedBody290_94 : StackLang.HolProg 64 :=
.seq RemovedBody290_39 RemovedBody290_93

def RemovedBody290_95 : StackLang.HolProg 64 :=
.seq RemovedBody290_38 RemovedBody290_94

def RemovedBody290_96 : StackLang.HolProg 64 :=
.seq RemovedBody290_37 RemovedBody290_95

def RemovedBody290_97 : StackLang.HolProg 64 :=
.seq RemovedBody290_36 RemovedBody290_96

def RemovedBody290_98 : StackLang.HolProg 64 :=
.seq RemovedBody290_35 RemovedBody290_97

def RemovedBody290_99 : StackLang.HolProg 64 :=
.seq RemovedBody290_6 RemovedBody290_98

def RemovedBody290_100 : StackLang.HolProg 64 :=
.seq RemovedBody290_5 RemovedBody290_99

def RemovedBody290_101 : StackLang.HolProg 64 :=
.seq RemovedBody290_4 RemovedBody290_100

def RemovedBody290_102 : StackLang.HolProg 64 :=
.seq RemovedBody290_3 RemovedBody290_101

def RemovedBody290_103 : StackLang.HolProg 64 :=
.seq RemovedBody290_2 RemovedBody290_102

def RemovedBody290_104 : StackLang.HolProg 64 :=
.seq RemovedBody290_1 RemovedBody290_103

def RemovedBody290_105 : StackLang.HolProg 64 :=
.seq RemovedBody290_0 RemovedBody290_104

def Removed290 : Nat × StackLang.HolProg 64 := (290, RemovedBody290_105)
theorem Removed290_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc290 = Removed290 := by
  kernel_rfl
#print axioms Removed290_eq
end InitECandidate.Proofs.BackendStages
