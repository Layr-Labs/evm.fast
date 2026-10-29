import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc636
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody636_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody636_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody636_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody636_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody636_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody636_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody636_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody636_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody636_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody636_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody636_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody636_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody636_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody636_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody636_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody636_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def RemovedBody636_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_28 : StackLang.HolProg 64 :=
.seq RemovedBody636_26 RemovedBody636_27

def RemovedBody636_29 : StackLang.HolProg 64 :=
.seq RemovedBody636_25 RemovedBody636_28

def RemovedBody636_30 : StackLang.HolProg 64 :=
.seq RemovedBody636_24 RemovedBody636_29

def RemovedBody636_31 : StackLang.HolProg 64 :=
.seq RemovedBody636_23 RemovedBody636_30

def RemovedBody636_32 : StackLang.HolProg 64 :=
.seq RemovedBody636_22 RemovedBody636_31

def RemovedBody636_33 : StackLang.HolProg 64 :=
.seq RemovedBody636_21 RemovedBody636_32

def RemovedBody636_34 : StackLang.HolProg 64 :=
.seq RemovedBody636_20 RemovedBody636_33

def RemovedBody636_35 : StackLang.HolProg 64 :=
.seq RemovedBody636_19 RemovedBody636_34

def RemovedBody636_36 : StackLang.HolProg 64 :=
.seq RemovedBody636_18 RemovedBody636_35

def RemovedBody636_37 : StackLang.HolProg 64 :=
.seq RemovedBody636_17 RemovedBody636_36

def RemovedBody636_38 : StackLang.HolProg 64 :=
.seq RemovedBody636_16 RemovedBody636_37

def RemovedBody636_39 : StackLang.HolProg 64 :=
.seq RemovedBody636_15 RemovedBody636_38

def RemovedBody636_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody636_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_42 : StackLang.HolProg 64 :=
.seq RemovedBody636_40 RemovedBody636_41

def RemovedBody636_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody636_39 RemovedBody636_42

def RemovedBody636_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody636_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody636_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody636_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody636_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody636_53 : StackLang.HolProg 64 :=
.seq RemovedBody636_51 RemovedBody636_52

def RemovedBody636_54 : StackLang.HolProg 64 :=
.seq RemovedBody636_50 RemovedBody636_53

def RemovedBody636_55 : StackLang.HolProg 64 :=
.seq RemovedBody636_49 RemovedBody636_54

def RemovedBody636_56 : StackLang.HolProg 64 :=
.seq RemovedBody636_48 RemovedBody636_55

def RemovedBody636_57 : StackLang.HolProg 64 :=
.seq RemovedBody636_47 RemovedBody636_56

def RemovedBody636_58 : StackLang.HolProg 64 :=
.seq RemovedBody636_46 RemovedBody636_57

def RemovedBody636_59 : StackLang.HolProg 64 :=
.seq RemovedBody636_45 RemovedBody636_58

def RemovedBody636_60 : StackLang.HolProg 64 :=
.seq RemovedBody636_44 RemovedBody636_59

def RemovedBody636_61 : StackLang.HolProg 64 :=
.seq RemovedBody636_43 RemovedBody636_60

def RemovedBody636_62 : StackLang.HolProg 64 :=
.seq RemovedBody636_14 RemovedBody636_61

def RemovedBody636_63 : StackLang.HolProg 64 :=
.seq RemovedBody636_13 RemovedBody636_62

def RemovedBody636_64 : StackLang.HolProg 64 :=
.seq RemovedBody636_12 RemovedBody636_63

def RemovedBody636_65 : StackLang.HolProg 64 :=
.seq RemovedBody636_11 RemovedBody636_64

def RemovedBody636_66 : StackLang.HolProg 64 :=
.seq RemovedBody636_10 RemovedBody636_65

def RemovedBody636_67 : StackLang.HolProg 64 :=
.seq RemovedBody636_9 RemovedBody636_66

def RemovedBody636_68 : StackLang.HolProg 64 :=
.seq RemovedBody636_8 RemovedBody636_67

def RemovedBody636_69 : StackLang.HolProg 64 :=
.seq RemovedBody636_7 RemovedBody636_68

def RemovedBody636_70 : StackLang.HolProg 64 :=
.seq RemovedBody636_6 RemovedBody636_69

def RemovedBody636_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody636_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody636_73 : StackLang.HolProg 64 :=
.seq RemovedBody636_71 RemovedBody636_72

def RemovedBody636_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody636_70 RemovedBody636_73

def RemovedBody636_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody636_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_77 : StackLang.HolProg 64 :=
.seq RemovedBody636_75 RemovedBody636_76

def RemovedBody636_78 : StackLang.HolProg 64 :=
.seq RemovedBody636_74 RemovedBody636_77

def RemovedBody636_79 : StackLang.HolProg 64 :=
.seq RemovedBody636_5 RemovedBody636_78

def RemovedBody636_80 : StackLang.HolProg 64 :=
.loop RemovedBody636_79

def RemovedBody636_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody636_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody636_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody636_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody636_85 : StackLang.HolProg 64 :=
.seq RemovedBody636_83 RemovedBody636_84

def RemovedBody636_86 : StackLang.HolProg 64 :=
.seq RemovedBody636_82 RemovedBody636_85

def RemovedBody636_87 : StackLang.HolProg 64 :=
.seq RemovedBody636_81 RemovedBody636_86

def RemovedBody636_88 : StackLang.HolProg 64 :=
.seq RemovedBody636_80 RemovedBody636_87

def RemovedBody636_89 : StackLang.HolProg 64 :=
.seq RemovedBody636_4 RemovedBody636_88

def RemovedBody636_90 : StackLang.HolProg 64 :=
.seq RemovedBody636_3 RemovedBody636_89

def RemovedBody636_91 : StackLang.HolProg 64 :=
.seq RemovedBody636_2 RemovedBody636_90

def RemovedBody636_92 : StackLang.HolProg 64 :=
.seq RemovedBody636_1 RemovedBody636_91

def RemovedBody636_93 : StackLang.HolProg 64 :=
.seq RemovedBody636_0 RemovedBody636_92

def Removed636 : Nat × StackLang.HolProg 64 := (636, RemovedBody636_93)
theorem Removed636_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc636 = Removed636 := by
  kernel_rfl
#print axioms Removed636_eq
end InitECandidate.Proofs.BackendStages
