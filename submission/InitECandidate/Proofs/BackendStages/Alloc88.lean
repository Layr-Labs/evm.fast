import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw88
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody88_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody88_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody88_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody88_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody88_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody88_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody88_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody88_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody88_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody88_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody88_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody88_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody88_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody88_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody88_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody88_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody88_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody88_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody88_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody88_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody88_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody88_21 : StackLang.HolProg 64 :=
.seq AllocBody88_19 AllocBody88_20

def AllocBody88_22 : StackLang.HolProg 64 :=
.seq AllocBody88_18 AllocBody88_21

def AllocBody88_23 : StackLang.HolProg 64 :=
.seq AllocBody88_17 AllocBody88_22

def AllocBody88_24 : StackLang.HolProg 64 :=
.seq AllocBody88_16 AllocBody88_23

def AllocBody88_25 : StackLang.HolProg 64 :=
.seq AllocBody88_15 AllocBody88_24

def AllocBody88_26 : StackLang.HolProg 64 :=
.seq AllocBody88_14 AllocBody88_25

def AllocBody88_27 : StackLang.HolProg 64 :=
.seq AllocBody88_13 AllocBody88_26

def AllocBody88_28 : StackLang.HolProg 64 :=
.seq AllocBody88_12 AllocBody88_27

def AllocBody88_29 : StackLang.HolProg 64 :=
.seq AllocBody88_11 AllocBody88_28

def AllocBody88_30 : StackLang.HolProg 64 :=
.seq AllocBody88_10 AllocBody88_29

def AllocBody88_31 : StackLang.HolProg 64 :=
.seq AllocBody88_9 AllocBody88_30

def AllocBody88_32 : StackLang.HolProg 64 :=
.seq AllocBody88_8 AllocBody88_31

def AllocBody88_33 : StackLang.HolProg 64 :=
.seq AllocBody88_7 AllocBody88_32

def AllocBody88_34 : StackLang.HolProg 64 :=
.seq AllocBody88_6 AllocBody88_33

def AllocBody88_35 : StackLang.HolProg 64 :=
.seq AllocBody88_5 AllocBody88_34

def AllocBody88_36 : StackLang.HolProg 64 :=
.seq AllocBody88_4 AllocBody88_35

def AllocBody88_37 : StackLang.HolProg 64 :=
.seq AllocBody88_3 AllocBody88_36

def AllocBody88_38 : StackLang.HolProg 64 :=
.seq AllocBody88_2 AllocBody88_37

def AllocBody88_39 : StackLang.HolProg 64 :=
.seq AllocBody88_1 AllocBody88_38

def AllocBody88_40 : StackLang.HolProg 64 :=
.seq AllocBody88_0 AllocBody88_39

def Alloc88 : Nat × StackLang.HolProg 64 := (88, AllocBody88_40)
theorem Alloc88_eq : StackAlloc.progComp (88, raw88) = Alloc88 := by
  kernel_rfl
#print axioms Alloc88_eq
end InitECandidate.Proofs.BackendStages
