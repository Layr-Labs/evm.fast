import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc172
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody172_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody172_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody172_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody172_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody172_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody172_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody172_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody172_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody172_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody172_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody172_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody172_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody172_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody172_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody172_14 : StackLang.HolProg 64 :=
.seq RemovedBody172_12 RemovedBody172_13

def RemovedBody172_15 : StackLang.HolProg 64 :=
.seq RemovedBody172_11 RemovedBody172_14

def RemovedBody172_16 : StackLang.HolProg 64 :=
.seq RemovedBody172_10 RemovedBody172_15

def RemovedBody172_17 : StackLang.HolProg 64 :=
.seq RemovedBody172_9 RemovedBody172_16

def RemovedBody172_18 : StackLang.HolProg 64 :=
.seq RemovedBody172_8 RemovedBody172_17

def RemovedBody172_19 : StackLang.HolProg 64 :=
.seq RemovedBody172_7 RemovedBody172_18

def RemovedBody172_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody172_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody172_22 : StackLang.HolProg 64 :=
.seq RemovedBody172_20 RemovedBody172_21

def RemovedBody172_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody172_19 RemovedBody172_22

def RemovedBody172_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody172_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody172_26 : StackLang.HolProg 64 :=
.seq RemovedBody172_24 RemovedBody172_25

def RemovedBody172_27 : StackLang.HolProg 64 :=
.seq RemovedBody172_23 RemovedBody172_26

def RemovedBody172_28 : StackLang.HolProg 64 :=
.seq RemovedBody172_6 RemovedBody172_27

def RemovedBody172_29 : StackLang.HolProg 64 :=
.seq RemovedBody172_5 RemovedBody172_28

def RemovedBody172_30 : StackLang.HolProg 64 :=
.loop RemovedBody172_29

def RemovedBody172_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody172_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody172_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody172_34 : StackLang.HolProg 64 :=
.seq RemovedBody172_32 RemovedBody172_33

def RemovedBody172_35 : StackLang.HolProg 64 :=
.seq RemovedBody172_31 RemovedBody172_34

def RemovedBody172_36 : StackLang.HolProg 64 :=
.seq RemovedBody172_30 RemovedBody172_35

def RemovedBody172_37 : StackLang.HolProg 64 :=
.seq RemovedBody172_4 RemovedBody172_36

def RemovedBody172_38 : StackLang.HolProg 64 :=
.seq RemovedBody172_3 RemovedBody172_37

def RemovedBody172_39 : StackLang.HolProg 64 :=
.seq RemovedBody172_2 RemovedBody172_38

def RemovedBody172_40 : StackLang.HolProg 64 :=
.seq RemovedBody172_1 RemovedBody172_39

def RemovedBody172_41 : StackLang.HolProg 64 :=
.seq RemovedBody172_0 RemovedBody172_40

def Removed172 : Nat × StackLang.HolProg 64 := (172, RemovedBody172_41)
theorem Removed172_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc172 = Removed172 := by
  kernel_rfl
#print axioms Removed172_eq
end InitECandidate.Proofs.BackendStages
