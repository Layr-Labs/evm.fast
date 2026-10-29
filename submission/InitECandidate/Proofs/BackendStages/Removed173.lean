import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc173
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody173_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody173_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody173_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody173_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody173_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody173_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody173_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody173_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody173_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody173_17 : StackLang.HolProg 64 :=
.seq RemovedBody173_15 RemovedBody173_16

def RemovedBody173_18 : StackLang.HolProg 64 :=
.seq RemovedBody173_14 RemovedBody173_17

def RemovedBody173_19 : StackLang.HolProg 64 :=
.seq RemovedBody173_13 RemovedBody173_18

def RemovedBody173_20 : StackLang.HolProg 64 :=
.seq RemovedBody173_12 RemovedBody173_19

def RemovedBody173_21 : StackLang.HolProg 64 :=
.seq RemovedBody173_11 RemovedBody173_20

def RemovedBody173_22 : StackLang.HolProg 64 :=
.seq RemovedBody173_10 RemovedBody173_21

def RemovedBody173_23 : StackLang.HolProg 64 :=
.seq RemovedBody173_9 RemovedBody173_22

def RemovedBody173_24 : StackLang.HolProg 64 :=
.seq RemovedBody173_8 RemovedBody173_23

def RemovedBody173_25 : StackLang.HolProg 64 :=
.seq RemovedBody173_7 RemovedBody173_24

def RemovedBody173_26 : StackLang.HolProg 64 :=
.seq RemovedBody173_6 RemovedBody173_25

def RemovedBody173_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody173_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody173_29 : StackLang.HolProg 64 :=
.seq RemovedBody173_27 RemovedBody173_28

def RemovedBody173_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody173_26 RemovedBody173_29

def RemovedBody173_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody173_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_33 : StackLang.HolProg 64 :=
.seq RemovedBody173_31 RemovedBody173_32

def RemovedBody173_34 : StackLang.HolProg 64 :=
.seq RemovedBody173_30 RemovedBody173_33

def RemovedBody173_35 : StackLang.HolProg 64 :=
.seq RemovedBody173_5 RemovedBody173_34

def RemovedBody173_36 : StackLang.HolProg 64 :=
.seq RemovedBody173_4 RemovedBody173_35

def RemovedBody173_37 : StackLang.HolProg 64 :=
.loop RemovedBody173_36

def RemovedBody173_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody173_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody173_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody173_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody173_42 : StackLang.HolProg 64 :=
.seq RemovedBody173_40 RemovedBody173_41

def RemovedBody173_43 : StackLang.HolProg 64 :=
.seq RemovedBody173_39 RemovedBody173_42

def RemovedBody173_44 : StackLang.HolProg 64 :=
.seq RemovedBody173_38 RemovedBody173_43

def RemovedBody173_45 : StackLang.HolProg 64 :=
.seq RemovedBody173_37 RemovedBody173_44

def RemovedBody173_46 : StackLang.HolProg 64 :=
.seq RemovedBody173_3 RemovedBody173_45

def RemovedBody173_47 : StackLang.HolProg 64 :=
.seq RemovedBody173_2 RemovedBody173_46

def RemovedBody173_48 : StackLang.HolProg 64 :=
.seq RemovedBody173_1 RemovedBody173_47

def RemovedBody173_49 : StackLang.HolProg 64 :=
.seq RemovedBody173_0 RemovedBody173_48

def Removed173 : Nat × StackLang.HolProg 64 := (173, RemovedBody173_49)
theorem Removed173_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc173 = Removed173 := by
  kernel_rfl
#print axioms Removed173_eq
end InitECandidate.Proofs.BackendStages
