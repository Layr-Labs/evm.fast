import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function768
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody768_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody768_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody768_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 144#64)

def rawBody768_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody768_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody768_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3454#64)

def rawBody768_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody768_7 : StackLang.HolProg 64 :=
.seq rawBody768_5 rawBody768_6

def rawBody768_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody768_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody768_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody768_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 768 3

def rawBody768_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody768_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody768_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody768_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody768_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody768_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody768_18 : StackLang.HolProg 64 :=
.seq rawBody768_16 rawBody768_17

def rawBody768_19 : StackLang.HolProg 64 :=
.seq rawBody768_15 rawBody768_18

def rawBody768_20 : StackLang.HolProg 64 :=
.seq rawBody768_14 rawBody768_19

def rawBody768_21 : StackLang.HolProg 64 :=
.seq rawBody768_13 rawBody768_20

def rawBody768_22 : StackLang.HolProg 64 :=
.seq rawBody768_12 rawBody768_21

def rawBody768_23 : StackLang.HolProg 64 :=
.seq rawBody768_11 rawBody768_22

def rawBody768_24 : StackLang.HolProg 64 :=
.seq rawBody768_10 rawBody768_23

def rawBody768_25 : StackLang.HolProg 64 :=
.seq rawBody768_9 rawBody768_24

def rawBody768_26 : StackLang.HolProg 64 :=
.seq rawBody768_8 rawBody768_25

def rawBody768_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody768_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody768_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody768_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody768_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody768_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody768_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody768_34 : StackLang.HolProg 64 :=
.seq rawBody768_32 rawBody768_33

def rawBody768_35 : StackLang.HolProg 64 :=
.seq rawBody768_31 rawBody768_34

def rawBody768_36 : StackLang.HolProg 64 :=
.seq rawBody768_30 rawBody768_35

def rawBody768_37 : StackLang.HolProg 64 :=
.seq rawBody768_29 rawBody768_36

def rawBody768_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody768_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody768_40 : StackLang.HolProg 64 :=
.seq rawBody768_38 rawBody768_39

def rawBody768_41 : StackLang.HolProg 64 :=
.call (some (rawBody768_37, 0, 768, 2)) (Sum.inl 77) (some (rawBody768_40, 768, 3))

def rawBody768_42 : StackLang.HolProg 64 :=
.seq rawBody768_28 rawBody768_41

def rawBody768_43 : StackLang.HolProg 64 :=
.seq rawBody768_27 rawBody768_42

def rawBody768_44 : StackLang.HolProg 64 :=
.seq rawBody768_26 rawBody768_43

def rawBody768_45 : StackLang.HolProg 64 :=
.seq rawBody768_7 rawBody768_44

def rawBody768_46 : StackLang.HolProg 64 :=
.seq rawBody768_4 rawBody768_45

def rawBody768_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody768_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody768_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody768_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody768_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody768_52 : StackLang.HolProg 64 :=
.seq rawBody768_50 rawBody768_51

def rawBody768_53 : StackLang.HolProg 64 :=
.seq rawBody768_49 rawBody768_52

def rawBody768_54 : StackLang.HolProg 64 :=
.seq rawBody768_48 rawBody768_53

def rawBody768_55 : StackLang.HolProg 64 :=
.seq rawBody768_47 rawBody768_54

def rawBody768_56 : StackLang.HolProg 64 :=
.seq rawBody768_46 rawBody768_55

def rawBody768_57 : StackLang.HolProg 64 :=
.seq rawBody768_3 rawBody768_56

def rawBody768_58 : StackLang.HolProg 64 :=
.seq rawBody768_2 rawBody768_57

def rawBody768_59 : StackLang.HolProg 64 :=
.seq rawBody768_1 rawBody768_58

def rawBody768_60 : StackLang.HolProg 64 :=
.seq rawBody768_0 rawBody768_59

def raw768 : StackLang.HolProg 64 := rawBody768_60
theorem raw768_eq : StackRawCall.compTop RawInfo.rawInfo (function768 (.list [])).1 = raw768 := by
  kernel_rfl
#print axioms raw768_eq
end InitECandidate.Proofs.BackendStages
