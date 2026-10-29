import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc718
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody718_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody718_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody718_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody718_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody718_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody718_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody718_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody718_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody718_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody718_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody718_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody718_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody718_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody718_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody718_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody718_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody718_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody718_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody718_30 : StackLang.HolProg 64 :=
.seq RemovedBody718_28 RemovedBody718_29

def RemovedBody718_31 : StackLang.HolProg 64 :=
.seq RemovedBody718_27 RemovedBody718_30

def RemovedBody718_32 : StackLang.HolProg 64 :=
.seq RemovedBody718_26 RemovedBody718_31

def RemovedBody718_33 : StackLang.HolProg 64 :=
.seq RemovedBody718_25 RemovedBody718_32

def RemovedBody718_34 : StackLang.HolProg 64 :=
.seq RemovedBody718_24 RemovedBody718_33

def RemovedBody718_35 : StackLang.HolProg 64 :=
.seq RemovedBody718_23 RemovedBody718_34

def RemovedBody718_36 : StackLang.HolProg 64 :=
.seq RemovedBody718_22 RemovedBody718_35

def RemovedBody718_37 : StackLang.HolProg 64 :=
.seq RemovedBody718_21 RemovedBody718_36

def RemovedBody718_38 : StackLang.HolProg 64 :=
.seq RemovedBody718_20 RemovedBody718_37

def RemovedBody718_39 : StackLang.HolProg 64 :=
.seq RemovedBody718_19 RemovedBody718_38

def RemovedBody718_40 : StackLang.HolProg 64 :=
.seq RemovedBody718_18 RemovedBody718_39

def RemovedBody718_41 : StackLang.HolProg 64 :=
.seq RemovedBody718_17 RemovedBody718_40

def RemovedBody718_42 : StackLang.HolProg 64 :=
.seq RemovedBody718_16 RemovedBody718_41

def RemovedBody718_43 : StackLang.HolProg 64 :=
.seq RemovedBody718_15 RemovedBody718_42

def RemovedBody718_44 : StackLang.HolProg 64 :=
.seq RemovedBody718_14 RemovedBody718_43

def RemovedBody718_45 : StackLang.HolProg 64 :=
.seq RemovedBody718_13 RemovedBody718_44

def RemovedBody718_46 : StackLang.HolProg 64 :=
.seq RemovedBody718_12 RemovedBody718_45

def RemovedBody718_47 : StackLang.HolProg 64 :=
.seq RemovedBody718_11 RemovedBody718_46

def RemovedBody718_48 : StackLang.HolProg 64 :=
.seq RemovedBody718_10 RemovedBody718_47

def RemovedBody718_49 : StackLang.HolProg 64 :=
.seq RemovedBody718_9 RemovedBody718_48

def RemovedBody718_50 : StackLang.HolProg 64 :=
.seq RemovedBody718_8 RemovedBody718_49

def RemovedBody718_51 : StackLang.HolProg 64 :=
.seq RemovedBody718_7 RemovedBody718_50

def RemovedBody718_52 : StackLang.HolProg 64 :=
.seq RemovedBody718_6 RemovedBody718_51

def RemovedBody718_53 : StackLang.HolProg 64 :=
.seq RemovedBody718_5 RemovedBody718_52

def RemovedBody718_54 : StackLang.HolProg 64 :=
.seq RemovedBody718_4 RemovedBody718_53

def RemovedBody718_55 : StackLang.HolProg 64 :=
.seq RemovedBody718_3 RemovedBody718_54

def RemovedBody718_56 : StackLang.HolProg 64 :=
.seq RemovedBody718_2 RemovedBody718_55

def RemovedBody718_57 : StackLang.HolProg 64 :=
.seq RemovedBody718_1 RemovedBody718_56

def RemovedBody718_58 : StackLang.HolProg 64 :=
.seq RemovedBody718_0 RemovedBody718_57

def Removed718 : Nat × StackLang.HolProg 64 := (718, RemovedBody718_58)
theorem Removed718_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc718 = Removed718 := by
  kernel_rfl
#print axioms Removed718_eq
end InitECandidate.Proofs.BackendStages
