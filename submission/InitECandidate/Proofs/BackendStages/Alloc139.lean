import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw139
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody139_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody139_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody139_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody139_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 100#64)

def AllocBody139_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody139_5 : StackLang.HolProg 64 :=
.seq AllocBody139_3 AllocBody139_4

def AllocBody139_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody139_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody139_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody139_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 139 3

def AllocBody139_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody139_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody139_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody139_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody139_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody139_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody139_16 : StackLang.HolProg 64 :=
.seq AllocBody139_14 AllocBody139_15

def AllocBody139_17 : StackLang.HolProg 64 :=
.seq AllocBody139_13 AllocBody139_16

def AllocBody139_18 : StackLang.HolProg 64 :=
.seq AllocBody139_12 AllocBody139_17

def AllocBody139_19 : StackLang.HolProg 64 :=
.seq AllocBody139_11 AllocBody139_18

def AllocBody139_20 : StackLang.HolProg 64 :=
.seq AllocBody139_10 AllocBody139_19

def AllocBody139_21 : StackLang.HolProg 64 :=
.seq AllocBody139_9 AllocBody139_20

def AllocBody139_22 : StackLang.HolProg 64 :=
.seq AllocBody139_8 AllocBody139_21

def AllocBody139_23 : StackLang.HolProg 64 :=
.seq AllocBody139_7 AllocBody139_22

def AllocBody139_24 : StackLang.HolProg 64 :=
.seq AllocBody139_6 AllocBody139_23

def AllocBody139_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody139_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody139_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody139_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody139_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody139_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody139_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody139_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody139_33 : StackLang.HolProg 64 :=
.seq AllocBody139_31 AllocBody139_32

def AllocBody139_34 : StackLang.HolProg 64 :=
.seq AllocBody139_30 AllocBody139_33

def AllocBody139_35 : StackLang.HolProg 64 :=
.seq AllocBody139_29 AllocBody139_34

def AllocBody139_36 : StackLang.HolProg 64 :=
.seq AllocBody139_28 AllocBody139_35

def AllocBody139_37 : StackLang.HolProg 64 :=
.seq AllocBody139_27 AllocBody139_36

def AllocBody139_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody139_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody139_40 : StackLang.HolProg 64 :=
.seq AllocBody139_38 AllocBody139_39

def AllocBody139_41 : StackLang.HolProg 64 :=
.call (some (AllocBody139_37, 0, 139, 2)) (Sum.inl 138) (some (AllocBody139_40, 139, 3))

def AllocBody139_42 : StackLang.HolProg 64 :=
.seq AllocBody139_26 AllocBody139_41

def AllocBody139_43 : StackLang.HolProg 64 :=
.seq AllocBody139_25 AllocBody139_42

def AllocBody139_44 : StackLang.HolProg 64 :=
.seq AllocBody139_24 AllocBody139_43

def AllocBody139_45 : StackLang.HolProg 64 :=
.seq AllocBody139_5 AllocBody139_44

def AllocBody139_46 : StackLang.HolProg 64 :=
.seq AllocBody139_2 AllocBody139_45

def AllocBody139_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody139_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody139_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody139_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody139_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody139_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody139_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody139_54 : StackLang.HolProg 64 :=
.seq AllocBody139_52 AllocBody139_53

def AllocBody139_55 : StackLang.HolProg 64 :=
.seq AllocBody139_51 AllocBody139_54

def AllocBody139_56 : StackLang.HolProg 64 :=
.seq AllocBody139_50 AllocBody139_55

def AllocBody139_57 : StackLang.HolProg 64 :=
.seq AllocBody139_49 AllocBody139_56

def AllocBody139_58 : StackLang.HolProg 64 :=
.seq AllocBody139_48 AllocBody139_57

def AllocBody139_59 : StackLang.HolProg 64 :=
.seq AllocBody139_47 AllocBody139_58

def AllocBody139_60 : StackLang.HolProg 64 :=
.seq AllocBody139_46 AllocBody139_59

def AllocBody139_61 : StackLang.HolProg 64 :=
.seq AllocBody139_1 AllocBody139_60

def AllocBody139_62 : StackLang.HolProg 64 :=
.seq AllocBody139_0 AllocBody139_61

def Alloc139 : Nat × StackLang.HolProg 64 := (139, AllocBody139_62)
theorem Alloc139_eq : StackAlloc.progComp (139, raw139) = Alloc139 := by
  kernel_rfl
#print axioms Alloc139_eq
end InitECandidate.Proofs.BackendStages
