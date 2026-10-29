import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc117
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody117_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody117_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody117_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody117_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody117_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody117_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def RemovedBody117_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody117_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody117_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody117_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 5 0))

def RemovedBody117_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody117_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody117_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody117_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 5 0))

def RemovedBody117_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody117_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody117_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody117_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 5 0))

def RemovedBody117_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody117_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def RemovedBody117_20 : StackLang.HolProg 64 :=
.seq RemovedBody117_18 RemovedBody117_19

def RemovedBody117_21 : StackLang.HolProg 64 :=
.seq RemovedBody117_17 RemovedBody117_20

def RemovedBody117_22 : StackLang.HolProg 64 :=
.seq RemovedBody117_16 RemovedBody117_21

def RemovedBody117_23 : StackLang.HolProg 64 :=
.seq RemovedBody117_15 RemovedBody117_22

def RemovedBody117_24 : StackLang.HolProg 64 :=
.seq RemovedBody117_14 RemovedBody117_23

def RemovedBody117_25 : StackLang.HolProg 64 :=
.seq RemovedBody117_13 RemovedBody117_24

def RemovedBody117_26 : StackLang.HolProg 64 :=
.seq RemovedBody117_12 RemovedBody117_25

def RemovedBody117_27 : StackLang.HolProg 64 :=
.seq RemovedBody117_11 RemovedBody117_26

def RemovedBody117_28 : StackLang.HolProg 64 :=
.seq RemovedBody117_10 RemovedBody117_27

def RemovedBody117_29 : StackLang.HolProg 64 :=
.seq RemovedBody117_9 RemovedBody117_28

def RemovedBody117_30 : StackLang.HolProg 64 :=
.seq RemovedBody117_8 RemovedBody117_29

def RemovedBody117_31 : StackLang.HolProg 64 :=
.seq RemovedBody117_7 RemovedBody117_30

def RemovedBody117_32 : StackLang.HolProg 64 :=
.seq RemovedBody117_6 RemovedBody117_31

def RemovedBody117_33 : StackLang.HolProg 64 :=
.seq RemovedBody117_5 RemovedBody117_32

def RemovedBody117_34 : StackLang.HolProg 64 :=
.seq RemovedBody117_4 RemovedBody117_33

def RemovedBody117_35 : StackLang.HolProg 64 :=
.seq RemovedBody117_3 RemovedBody117_34

def RemovedBody117_36 : StackLang.HolProg 64 :=
.seq RemovedBody117_2 RemovedBody117_35

def RemovedBody117_37 : StackLang.HolProg 64 :=
.seq RemovedBody117_1 RemovedBody117_36

def RemovedBody117_38 : StackLang.HolProg 64 :=
.seq RemovedBody117_0 RemovedBody117_37

def Removed117 : Nat × StackLang.HolProg 64 := (117, RemovedBody117_38)
theorem Removed117_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc117 = Removed117 := by
  kernel_rfl
#print axioms Removed117_eq
end InitECandidate.Proofs.BackendStages
