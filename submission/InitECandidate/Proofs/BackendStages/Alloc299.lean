import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw299
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody299_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody299_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody299_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody299_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody299_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody299_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody299_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody299_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody299_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody299_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody299_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody299_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody299_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody299_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody299_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody299_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody299_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody299_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody299_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody299_19 : StackLang.HolProg 64 :=
.seq AllocBody299_17 AllocBody299_18

def AllocBody299_20 : StackLang.HolProg 64 :=
.seq AllocBody299_16 AllocBody299_19

def AllocBody299_21 : StackLang.HolProg 64 :=
.seq AllocBody299_15 AllocBody299_20

def AllocBody299_22 : StackLang.HolProg 64 :=
.seq AllocBody299_14 AllocBody299_21

def AllocBody299_23 : StackLang.HolProg 64 :=
.seq AllocBody299_13 AllocBody299_22

def AllocBody299_24 : StackLang.HolProg 64 :=
.seq AllocBody299_12 AllocBody299_23

def AllocBody299_25 : StackLang.HolProg 64 :=
.seq AllocBody299_11 AllocBody299_24

def AllocBody299_26 : StackLang.HolProg 64 :=
.seq AllocBody299_10 AllocBody299_25

def AllocBody299_27 : StackLang.HolProg 64 :=
.seq AllocBody299_9 AllocBody299_26

def AllocBody299_28 : StackLang.HolProg 64 :=
.seq AllocBody299_8 AllocBody299_27

def AllocBody299_29 : StackLang.HolProg 64 :=
.seq AllocBody299_7 AllocBody299_28

def AllocBody299_30 : StackLang.HolProg 64 :=
.seq AllocBody299_6 AllocBody299_29

def AllocBody299_31 : StackLang.HolProg 64 :=
.seq AllocBody299_5 AllocBody299_30

def AllocBody299_32 : StackLang.HolProg 64 :=
.seq AllocBody299_4 AllocBody299_31

def AllocBody299_33 : StackLang.HolProg 64 :=
.seq AllocBody299_3 AllocBody299_32

def AllocBody299_34 : StackLang.HolProg 64 :=
.seq AllocBody299_2 AllocBody299_33

def AllocBody299_35 : StackLang.HolProg 64 :=
.seq AllocBody299_1 AllocBody299_34

def AllocBody299_36 : StackLang.HolProg 64 :=
.seq AllocBody299_0 AllocBody299_35

def Alloc299 : Nat × StackLang.HolProg 64 := (299, AllocBody299_36)
theorem Alloc299_eq : StackAlloc.progComp (299, raw299) = Alloc299 := by
  kernel_rfl
#print axioms Alloc299_eq
end InitECandidate.Proofs.BackendStages
