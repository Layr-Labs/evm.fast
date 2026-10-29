import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc84
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody84_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody84_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody84_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody84_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 71777214294589695#64)

def RemovedBody84_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody84_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody84_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 71777214294589695#64)

def RemovedBody84_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody84_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody84_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody84_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody84_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody84_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 281470681808895#64)

def RemovedBody84_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody84_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody84_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 281470681808895#64)

def RemovedBody84_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody84_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody84_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody84_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody84_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody84_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody84_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody84_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody84_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody84_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody84_26 : StackLang.HolProg 64 :=
.seq RemovedBody84_24 RemovedBody84_25

def RemovedBody84_27 : StackLang.HolProg 64 :=
.seq RemovedBody84_23 RemovedBody84_26

def RemovedBody84_28 : StackLang.HolProg 64 :=
.seq RemovedBody84_22 RemovedBody84_27

def RemovedBody84_29 : StackLang.HolProg 64 :=
.seq RemovedBody84_21 RemovedBody84_28

def RemovedBody84_30 : StackLang.HolProg 64 :=
.seq RemovedBody84_20 RemovedBody84_29

def RemovedBody84_31 : StackLang.HolProg 64 :=
.seq RemovedBody84_19 RemovedBody84_30

def RemovedBody84_32 : StackLang.HolProg 64 :=
.seq RemovedBody84_18 RemovedBody84_31

def RemovedBody84_33 : StackLang.HolProg 64 :=
.seq RemovedBody84_17 RemovedBody84_32

def RemovedBody84_34 : StackLang.HolProg 64 :=
.seq RemovedBody84_16 RemovedBody84_33

def RemovedBody84_35 : StackLang.HolProg 64 :=
.seq RemovedBody84_15 RemovedBody84_34

def RemovedBody84_36 : StackLang.HolProg 64 :=
.seq RemovedBody84_14 RemovedBody84_35

def RemovedBody84_37 : StackLang.HolProg 64 :=
.seq RemovedBody84_13 RemovedBody84_36

def RemovedBody84_38 : StackLang.HolProg 64 :=
.seq RemovedBody84_12 RemovedBody84_37

def RemovedBody84_39 : StackLang.HolProg 64 :=
.seq RemovedBody84_11 RemovedBody84_38

def RemovedBody84_40 : StackLang.HolProg 64 :=
.seq RemovedBody84_10 RemovedBody84_39

def RemovedBody84_41 : StackLang.HolProg 64 :=
.seq RemovedBody84_9 RemovedBody84_40

def RemovedBody84_42 : StackLang.HolProg 64 :=
.seq RemovedBody84_8 RemovedBody84_41

def RemovedBody84_43 : StackLang.HolProg 64 :=
.seq RemovedBody84_7 RemovedBody84_42

def RemovedBody84_44 : StackLang.HolProg 64 :=
.seq RemovedBody84_6 RemovedBody84_43

def RemovedBody84_45 : StackLang.HolProg 64 :=
.seq RemovedBody84_5 RemovedBody84_44

def RemovedBody84_46 : StackLang.HolProg 64 :=
.seq RemovedBody84_4 RemovedBody84_45

def RemovedBody84_47 : StackLang.HolProg 64 :=
.seq RemovedBody84_3 RemovedBody84_46

def RemovedBody84_48 : StackLang.HolProg 64 :=
.seq RemovedBody84_2 RemovedBody84_47

def RemovedBody84_49 : StackLang.HolProg 64 :=
.seq RemovedBody84_1 RemovedBody84_48

def RemovedBody84_50 : StackLang.HolProg 64 :=
.seq RemovedBody84_0 RemovedBody84_49

def Removed84 : Nat × StackLang.HolProg 64 := (84, RemovedBody84_50)
theorem Removed84_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc84 = Removed84 := by
  kernel_rfl
#print axioms Removed84_eq
end InitECandidate.Proofs.BackendStages
