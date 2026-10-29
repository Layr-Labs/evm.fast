import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw173
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody173_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody173_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody173_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody173_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody173_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody173_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody173_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody173_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody173_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody173_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody173_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody173_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody173_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody173_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody173_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody173_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody173_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody173_17 : StackLang.HolProg 64 :=
.seq AllocBody173_15 AllocBody173_16

def AllocBody173_18 : StackLang.HolProg 64 :=
.seq AllocBody173_14 AllocBody173_17

def AllocBody173_19 : StackLang.HolProg 64 :=
.seq AllocBody173_13 AllocBody173_18

def AllocBody173_20 : StackLang.HolProg 64 :=
.seq AllocBody173_12 AllocBody173_19

def AllocBody173_21 : StackLang.HolProg 64 :=
.seq AllocBody173_11 AllocBody173_20

def AllocBody173_22 : StackLang.HolProg 64 :=
.seq AllocBody173_10 AllocBody173_21

def AllocBody173_23 : StackLang.HolProg 64 :=
.seq AllocBody173_9 AllocBody173_22

def AllocBody173_24 : StackLang.HolProg 64 :=
.seq AllocBody173_8 AllocBody173_23

def AllocBody173_25 : StackLang.HolProg 64 :=
.seq AllocBody173_7 AllocBody173_24

def AllocBody173_26 : StackLang.HolProg 64 :=
.seq AllocBody173_6 AllocBody173_25

def AllocBody173_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody173_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody173_29 : StackLang.HolProg 64 :=
.seq AllocBody173_27 AllocBody173_28

def AllocBody173_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody173_26 AllocBody173_29

def AllocBody173_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody173_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody173_33 : StackLang.HolProg 64 :=
.seq AllocBody173_31 AllocBody173_32

def AllocBody173_34 : StackLang.HolProg 64 :=
.seq AllocBody173_30 AllocBody173_33

def AllocBody173_35 : StackLang.HolProg 64 :=
.seq AllocBody173_5 AllocBody173_34

def AllocBody173_36 : StackLang.HolProg 64 :=
.seq AllocBody173_4 AllocBody173_35

def AllocBody173_37 : StackLang.HolProg 64 :=
.loop AllocBody173_36

def AllocBody173_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody173_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody173_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody173_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody173_42 : StackLang.HolProg 64 :=
.seq AllocBody173_40 AllocBody173_41

def AllocBody173_43 : StackLang.HolProg 64 :=
.seq AllocBody173_39 AllocBody173_42

def AllocBody173_44 : StackLang.HolProg 64 :=
.seq AllocBody173_38 AllocBody173_43

def AllocBody173_45 : StackLang.HolProg 64 :=
.seq AllocBody173_37 AllocBody173_44

def AllocBody173_46 : StackLang.HolProg 64 :=
.seq AllocBody173_3 AllocBody173_45

def AllocBody173_47 : StackLang.HolProg 64 :=
.seq AllocBody173_2 AllocBody173_46

def AllocBody173_48 : StackLang.HolProg 64 :=
.seq AllocBody173_1 AllocBody173_47

def AllocBody173_49 : StackLang.HolProg 64 :=
.seq AllocBody173_0 AllocBody173_48

def Alloc173 : Nat × StackLang.HolProg 64 := (173, AllocBody173_49)
theorem Alloc173_eq : StackAlloc.progComp (173, raw173) = Alloc173 := by
  kernel_rfl
#print axioms Alloc173_eq
end InitECandidate.Proofs.BackendStages
