import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function747
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody747_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody747_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody747_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 288#64)

def rawBody747_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody747_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody747_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3307#64)

def rawBody747_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody747_7 : StackLang.HolProg 64 :=
.seq rawBody747_5 rawBody747_6

def rawBody747_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody747_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody747_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody747_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 747 3

def rawBody747_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody747_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody747_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody747_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody747_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody747_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody747_18 : StackLang.HolProg 64 :=
.seq rawBody747_16 rawBody747_17

def rawBody747_19 : StackLang.HolProg 64 :=
.seq rawBody747_15 rawBody747_18

def rawBody747_20 : StackLang.HolProg 64 :=
.seq rawBody747_14 rawBody747_19

def rawBody747_21 : StackLang.HolProg 64 :=
.seq rawBody747_13 rawBody747_20

def rawBody747_22 : StackLang.HolProg 64 :=
.seq rawBody747_12 rawBody747_21

def rawBody747_23 : StackLang.HolProg 64 :=
.seq rawBody747_11 rawBody747_22

def rawBody747_24 : StackLang.HolProg 64 :=
.seq rawBody747_10 rawBody747_23

def rawBody747_25 : StackLang.HolProg 64 :=
.seq rawBody747_9 rawBody747_24

def rawBody747_26 : StackLang.HolProg 64 :=
.seq rawBody747_8 rawBody747_25

def rawBody747_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody747_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody747_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody747_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody747_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody747_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody747_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody747_34 : StackLang.HolProg 64 :=
.seq rawBody747_32 rawBody747_33

def rawBody747_35 : StackLang.HolProg 64 :=
.seq rawBody747_31 rawBody747_34

def rawBody747_36 : StackLang.HolProg 64 :=
.seq rawBody747_30 rawBody747_35

def rawBody747_37 : StackLang.HolProg 64 :=
.seq rawBody747_29 rawBody747_36

def rawBody747_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody747_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody747_40 : StackLang.HolProg 64 :=
.seq rawBody747_38 rawBody747_39

def rawBody747_41 : StackLang.HolProg 64 :=
.call (some (rawBody747_37, 0, 747, 2)) (Sum.inl 78) (some (rawBody747_40, 747, 3))

def rawBody747_42 : StackLang.HolProg 64 :=
.seq rawBody747_28 rawBody747_41

def rawBody747_43 : StackLang.HolProg 64 :=
.seq rawBody747_27 rawBody747_42

def rawBody747_44 : StackLang.HolProg 64 :=
.seq rawBody747_26 rawBody747_43

def rawBody747_45 : StackLang.HolProg 64 :=
.seq rawBody747_7 rawBody747_44

def rawBody747_46 : StackLang.HolProg 64 :=
.seq rawBody747_4 rawBody747_45

def rawBody747_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody747_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody747_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody747_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody747_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody747_52 : StackLang.HolProg 64 :=
.seq rawBody747_50 rawBody747_51

def rawBody747_53 : StackLang.HolProg 64 :=
.seq rawBody747_49 rawBody747_52

def rawBody747_54 : StackLang.HolProg 64 :=
.seq rawBody747_48 rawBody747_53

def rawBody747_55 : StackLang.HolProg 64 :=
.seq rawBody747_47 rawBody747_54

def rawBody747_56 : StackLang.HolProg 64 :=
.seq rawBody747_46 rawBody747_55

def rawBody747_57 : StackLang.HolProg 64 :=
.seq rawBody747_3 rawBody747_56

def rawBody747_58 : StackLang.HolProg 64 :=
.seq rawBody747_2 rawBody747_57

def rawBody747_59 : StackLang.HolProg 64 :=
.seq rawBody747_1 rawBody747_58

def rawBody747_60 : StackLang.HolProg 64 :=
.seq rawBody747_0 rawBody747_59

def raw747 : StackLang.HolProg 64 := rawBody747_60
theorem raw747_eq : StackRawCall.compTop RawInfo.rawInfo (function747 (.list [])).1 = raw747 := by
  kernel_rfl
#print axioms raw747_eq
end InitECandidate.Proofs.BackendStages
