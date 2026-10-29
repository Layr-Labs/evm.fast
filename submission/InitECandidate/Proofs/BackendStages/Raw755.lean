import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function755
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody755_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody755_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody755_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 576#64)

def rawBody755_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody755_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody755_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3371#64)

def rawBody755_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody755_7 : StackLang.HolProg 64 :=
.seq rawBody755_5 rawBody755_6

def rawBody755_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody755_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody755_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody755_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 755 3

def rawBody755_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody755_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody755_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody755_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody755_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody755_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody755_18 : StackLang.HolProg 64 :=
.seq rawBody755_16 rawBody755_17

def rawBody755_19 : StackLang.HolProg 64 :=
.seq rawBody755_15 rawBody755_18

def rawBody755_20 : StackLang.HolProg 64 :=
.seq rawBody755_14 rawBody755_19

def rawBody755_21 : StackLang.HolProg 64 :=
.seq rawBody755_13 rawBody755_20

def rawBody755_22 : StackLang.HolProg 64 :=
.seq rawBody755_12 rawBody755_21

def rawBody755_23 : StackLang.HolProg 64 :=
.seq rawBody755_11 rawBody755_22

def rawBody755_24 : StackLang.HolProg 64 :=
.seq rawBody755_10 rawBody755_23

def rawBody755_25 : StackLang.HolProg 64 :=
.seq rawBody755_9 rawBody755_24

def rawBody755_26 : StackLang.HolProg 64 :=
.seq rawBody755_8 rawBody755_25

def rawBody755_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody755_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody755_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody755_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody755_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody755_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody755_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody755_34 : StackLang.HolProg 64 :=
.seq rawBody755_32 rawBody755_33

def rawBody755_35 : StackLang.HolProg 64 :=
.seq rawBody755_31 rawBody755_34

def rawBody755_36 : StackLang.HolProg 64 :=
.seq rawBody755_30 rawBody755_35

def rawBody755_37 : StackLang.HolProg 64 :=
.seq rawBody755_29 rawBody755_36

def rawBody755_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody755_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody755_40 : StackLang.HolProg 64 :=
.seq rawBody755_38 rawBody755_39

def rawBody755_41 : StackLang.HolProg 64 :=
.call (some (rawBody755_37, 0, 755, 2)) (Sum.inl 77) (some (rawBody755_40, 755, 3))

def rawBody755_42 : StackLang.HolProg 64 :=
.seq rawBody755_28 rawBody755_41

def rawBody755_43 : StackLang.HolProg 64 :=
.seq rawBody755_27 rawBody755_42

def rawBody755_44 : StackLang.HolProg 64 :=
.seq rawBody755_26 rawBody755_43

def rawBody755_45 : StackLang.HolProg 64 :=
.seq rawBody755_7 rawBody755_44

def rawBody755_46 : StackLang.HolProg 64 :=
.seq rawBody755_4 rawBody755_45

def rawBody755_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody755_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody755_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody755_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody755_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody755_52 : StackLang.HolProg 64 :=
.seq rawBody755_50 rawBody755_51

def rawBody755_53 : StackLang.HolProg 64 :=
.seq rawBody755_49 rawBody755_52

def rawBody755_54 : StackLang.HolProg 64 :=
.seq rawBody755_48 rawBody755_53

def rawBody755_55 : StackLang.HolProg 64 :=
.seq rawBody755_47 rawBody755_54

def rawBody755_56 : StackLang.HolProg 64 :=
.seq rawBody755_46 rawBody755_55

def rawBody755_57 : StackLang.HolProg 64 :=
.seq rawBody755_3 rawBody755_56

def rawBody755_58 : StackLang.HolProg 64 :=
.seq rawBody755_2 rawBody755_57

def rawBody755_59 : StackLang.HolProg 64 :=
.seq rawBody755_1 rawBody755_58

def rawBody755_60 : StackLang.HolProg 64 :=
.seq rawBody755_0 rawBody755_59

def raw755 : StackLang.HolProg 64 := rawBody755_60
theorem raw755_eq : StackRawCall.compTop RawInfo.rawInfo (function755 (.list [])).1 = raw755 := by
  kernel_rfl
#print axioms raw755_eq
end InitECandidate.Proofs.BackendStages
