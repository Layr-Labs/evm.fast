import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw172
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody172_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody172_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody172_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody172_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody172_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody172_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody172_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody172_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody172_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody172_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody172_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody172_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody172_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody172_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody172_14 : StackLang.HolProg 64 :=
.seq AllocBody172_12 AllocBody172_13

def AllocBody172_15 : StackLang.HolProg 64 :=
.seq AllocBody172_11 AllocBody172_14

def AllocBody172_16 : StackLang.HolProg 64 :=
.seq AllocBody172_10 AllocBody172_15

def AllocBody172_17 : StackLang.HolProg 64 :=
.seq AllocBody172_9 AllocBody172_16

def AllocBody172_18 : StackLang.HolProg 64 :=
.seq AllocBody172_8 AllocBody172_17

def AllocBody172_19 : StackLang.HolProg 64 :=
.seq AllocBody172_7 AllocBody172_18

def AllocBody172_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody172_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody172_22 : StackLang.HolProg 64 :=
.seq AllocBody172_20 AllocBody172_21

def AllocBody172_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody172_19 AllocBody172_22

def AllocBody172_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody172_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody172_26 : StackLang.HolProg 64 :=
.seq AllocBody172_24 AllocBody172_25

def AllocBody172_27 : StackLang.HolProg 64 :=
.seq AllocBody172_23 AllocBody172_26

def AllocBody172_28 : StackLang.HolProg 64 :=
.seq AllocBody172_6 AllocBody172_27

def AllocBody172_29 : StackLang.HolProg 64 :=
.seq AllocBody172_5 AllocBody172_28

def AllocBody172_30 : StackLang.HolProg 64 :=
.loop AllocBody172_29

def AllocBody172_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody172_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody172_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody172_34 : StackLang.HolProg 64 :=
.seq AllocBody172_32 AllocBody172_33

def AllocBody172_35 : StackLang.HolProg 64 :=
.seq AllocBody172_31 AllocBody172_34

def AllocBody172_36 : StackLang.HolProg 64 :=
.seq AllocBody172_30 AllocBody172_35

def AllocBody172_37 : StackLang.HolProg 64 :=
.seq AllocBody172_4 AllocBody172_36

def AllocBody172_38 : StackLang.HolProg 64 :=
.seq AllocBody172_3 AllocBody172_37

def AllocBody172_39 : StackLang.HolProg 64 :=
.seq AllocBody172_2 AllocBody172_38

def AllocBody172_40 : StackLang.HolProg 64 :=
.seq AllocBody172_1 AllocBody172_39

def AllocBody172_41 : StackLang.HolProg 64 :=
.seq AllocBody172_0 AllocBody172_40

def Alloc172 : Nat × StackLang.HolProg 64 := (172, AllocBody172_41)
theorem Alloc172_eq : StackAlloc.progComp (172, raw172) = Alloc172 := by
  kernel_rfl
#print axioms Alloc172_eq
end InitECandidate.Proofs.BackendStages
