import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc359
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody359_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody359_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody359_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody359_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody359_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody359_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def RemovedBody359_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody359_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody359_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody359_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody359_10 : StackLang.HolProg 64 :=
.seq RemovedBody359_8 RemovedBody359_9

def RemovedBody359_11 : StackLang.HolProg 64 :=
.seq RemovedBody359_7 RemovedBody359_10

def RemovedBody359_12 : StackLang.HolProg 64 :=
.seq RemovedBody359_6 RemovedBody359_11

def RemovedBody359_13 : StackLang.HolProg 64 :=
.seq RemovedBody359_5 RemovedBody359_12

def RemovedBody359_14 : StackLang.HolProg 64 :=
.seq RemovedBody359_4 RemovedBody359_13

def RemovedBody359_15 : StackLang.HolProg 64 :=
.seq RemovedBody359_3 RemovedBody359_14

def RemovedBody359_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody359_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody359_15 RemovedBody359_16

def RemovedBody359_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody359_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody359_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody359_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def RemovedBody359_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody359_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody359_24 : StackLang.HolProg 64 :=
.call none (Sum.inl 176) none

def RemovedBody359_25 : StackLang.HolProg 64 :=
.seq RemovedBody359_23 RemovedBody359_24

def RemovedBody359_26 : StackLang.HolProg 64 :=
.seq RemovedBody359_22 RemovedBody359_25

def RemovedBody359_27 : StackLang.HolProg 64 :=
.seq RemovedBody359_21 RemovedBody359_26

def RemovedBody359_28 : StackLang.HolProg 64 :=
.seq RemovedBody359_20 RemovedBody359_27

def RemovedBody359_29 : StackLang.HolProg 64 :=
.seq RemovedBody359_19 RemovedBody359_28

def RemovedBody359_30 : StackLang.HolProg 64 :=
.seq RemovedBody359_18 RemovedBody359_29

def RemovedBody359_31 : StackLang.HolProg 64 :=
.seq RemovedBody359_17 RemovedBody359_30

def RemovedBody359_32 : StackLang.HolProg 64 :=
.seq RemovedBody359_2 RemovedBody359_31

def RemovedBody359_33 : StackLang.HolProg 64 :=
.seq RemovedBody359_1 RemovedBody359_32

def RemovedBody359_34 : StackLang.HolProg 64 :=
.seq RemovedBody359_0 RemovedBody359_33

def Removed359 : Nat × StackLang.HolProg 64 := (359, RemovedBody359_34)
theorem Removed359_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc359 = Removed359 := by
  kernel_rfl
#print axioms Removed359_eq
end InitECandidate.Proofs.BackendStages
