import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc105
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody105_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody105_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody105_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody105_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody105_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody105_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody105_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody105_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody105_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody105_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody105_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody105_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody105_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody105_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody105_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody105_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody105_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody105_17 : StackLang.HolProg 64 :=
.seq RemovedBody105_15 RemovedBody105_16

def RemovedBody105_18 : StackLang.HolProg 64 :=
.seq RemovedBody105_14 RemovedBody105_17

def RemovedBody105_19 : StackLang.HolProg 64 :=
.seq RemovedBody105_13 RemovedBody105_18

def RemovedBody105_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody105_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody105_19 RemovedBody105_20

def RemovedBody105_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody105_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody105_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody105_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody105_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody105_27 : StackLang.HolProg 64 :=
.seq RemovedBody105_25 RemovedBody105_26

def RemovedBody105_28 : StackLang.HolProg 64 :=
.seq RemovedBody105_24 RemovedBody105_27

def RemovedBody105_29 : StackLang.HolProg 64 :=
.seq RemovedBody105_23 RemovedBody105_28

def RemovedBody105_30 : StackLang.HolProg 64 :=
.seq RemovedBody105_22 RemovedBody105_29

def RemovedBody105_31 : StackLang.HolProg 64 :=
.seq RemovedBody105_21 RemovedBody105_30

def RemovedBody105_32 : StackLang.HolProg 64 :=
.seq RemovedBody105_12 RemovedBody105_31

def RemovedBody105_33 : StackLang.HolProg 64 :=
.seq RemovedBody105_11 RemovedBody105_32

def RemovedBody105_34 : StackLang.HolProg 64 :=
.seq RemovedBody105_10 RemovedBody105_33

def RemovedBody105_35 : StackLang.HolProg 64 :=
.seq RemovedBody105_9 RemovedBody105_34

def RemovedBody105_36 : StackLang.HolProg 64 :=
.seq RemovedBody105_8 RemovedBody105_35

def RemovedBody105_37 : StackLang.HolProg 64 :=
.seq RemovedBody105_7 RemovedBody105_36

def RemovedBody105_38 : StackLang.HolProg 64 :=
.seq RemovedBody105_6 RemovedBody105_37

def RemovedBody105_39 : StackLang.HolProg 64 :=
.seq RemovedBody105_5 RemovedBody105_38

def RemovedBody105_40 : StackLang.HolProg 64 :=
.seq RemovedBody105_4 RemovedBody105_39

def RemovedBody105_41 : StackLang.HolProg 64 :=
.seq RemovedBody105_3 RemovedBody105_40

def RemovedBody105_42 : StackLang.HolProg 64 :=
.seq RemovedBody105_2 RemovedBody105_41

def RemovedBody105_43 : StackLang.HolProg 64 :=
.seq RemovedBody105_1 RemovedBody105_42

def RemovedBody105_44 : StackLang.HolProg 64 :=
.seq RemovedBody105_0 RemovedBody105_43

def Removed105 : Nat × StackLang.HolProg 64 := (105, RemovedBody105_44)
theorem Removed105_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc105 = Removed105 := by
  kernel_rfl
#print axioms Removed105_eq
end InitECandidate.Proofs.BackendStages
