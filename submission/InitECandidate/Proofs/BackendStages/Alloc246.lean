import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw246
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody246_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody246_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody246_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def AllocBody246_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1073741840#64)

def AllocBody246_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody246_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.load 2
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64)

def AllocBody246_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody246_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody246_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody246_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody246_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody246_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def AllocBody246_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody246_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody246_14 : StackLang.HolProg 64 :=
.seq AllocBody246_12 AllocBody246_13

def AllocBody246_15 : StackLang.HolProg 64 :=
.seq AllocBody246_11 AllocBody246_14

def AllocBody246_16 : StackLang.HolProg 64 :=
.seq AllocBody246_10 AllocBody246_15

def AllocBody246_17 : StackLang.HolProg 64 :=
.seq AllocBody246_9 AllocBody246_16

def AllocBody246_18 : StackLang.HolProg 64 :=
.seq AllocBody246_8 AllocBody246_17

def AllocBody246_19 : StackLang.HolProg 64 :=
.seq AllocBody246_7 AllocBody246_18

def AllocBody246_20 : StackLang.HolProg 64 :=
.seq AllocBody246_6 AllocBody246_19

def AllocBody246_21 : StackLang.HolProg 64 :=
.seq AllocBody246_5 AllocBody246_20

def AllocBody246_22 : StackLang.HolProg 64 :=
.seq AllocBody246_4 AllocBody246_21

def AllocBody246_23 : StackLang.HolProg 64 :=
.seq AllocBody246_3 AllocBody246_22

def AllocBody246_24 : StackLang.HolProg 64 :=
.seq AllocBody246_2 AllocBody246_23

def AllocBody246_25 : StackLang.HolProg 64 :=
.seq AllocBody246_1 AllocBody246_24

def AllocBody246_26 : StackLang.HolProg 64 :=
.seq AllocBody246_0 AllocBody246_25

def Alloc246 : Nat × StackLang.HolProg 64 := (246, AllocBody246_26)
theorem Alloc246_eq : StackAlloc.progComp (246, raw246) = Alloc246 := by
  kernel_rfl
#print axioms Alloc246_eq
end InitECandidate.Proofs.BackendStages
