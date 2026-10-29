import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc299
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody299_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody299_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody299_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody299_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody299_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody299_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody299_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody299_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody299_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody299_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody299_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody299_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody299_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody299_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody299_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody299_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody299_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody299_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody299_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody299_19 : StackLang.HolProg 64 :=
.seq RemovedBody299_17 RemovedBody299_18

def RemovedBody299_20 : StackLang.HolProg 64 :=
.seq RemovedBody299_16 RemovedBody299_19

def RemovedBody299_21 : StackLang.HolProg 64 :=
.seq RemovedBody299_15 RemovedBody299_20

def RemovedBody299_22 : StackLang.HolProg 64 :=
.seq RemovedBody299_14 RemovedBody299_21

def RemovedBody299_23 : StackLang.HolProg 64 :=
.seq RemovedBody299_13 RemovedBody299_22

def RemovedBody299_24 : StackLang.HolProg 64 :=
.seq RemovedBody299_12 RemovedBody299_23

def RemovedBody299_25 : StackLang.HolProg 64 :=
.seq RemovedBody299_11 RemovedBody299_24

def RemovedBody299_26 : StackLang.HolProg 64 :=
.seq RemovedBody299_10 RemovedBody299_25

def RemovedBody299_27 : StackLang.HolProg 64 :=
.seq RemovedBody299_9 RemovedBody299_26

def RemovedBody299_28 : StackLang.HolProg 64 :=
.seq RemovedBody299_8 RemovedBody299_27

def RemovedBody299_29 : StackLang.HolProg 64 :=
.seq RemovedBody299_7 RemovedBody299_28

def RemovedBody299_30 : StackLang.HolProg 64 :=
.seq RemovedBody299_6 RemovedBody299_29

def RemovedBody299_31 : StackLang.HolProg 64 :=
.seq RemovedBody299_5 RemovedBody299_30

def RemovedBody299_32 : StackLang.HolProg 64 :=
.seq RemovedBody299_4 RemovedBody299_31

def RemovedBody299_33 : StackLang.HolProg 64 :=
.seq RemovedBody299_3 RemovedBody299_32

def RemovedBody299_34 : StackLang.HolProg 64 :=
.seq RemovedBody299_2 RemovedBody299_33

def RemovedBody299_35 : StackLang.HolProg 64 :=
.seq RemovedBody299_1 RemovedBody299_34

def RemovedBody299_36 : StackLang.HolProg 64 :=
.seq RemovedBody299_0 RemovedBody299_35

def Removed299 : Nat × StackLang.HolProg 64 := (299, RemovedBody299_36)
theorem Removed299_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc299 = Removed299 := by
  kernel_rfl
#print axioms Removed299_eq
end InitECandidate.Proofs.BackendStages
