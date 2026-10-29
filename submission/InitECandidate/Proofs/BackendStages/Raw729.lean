import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function729
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody729_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody729_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody729_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 96#64)

def rawBody729_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody729_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody729_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3261#64)

def rawBody729_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody729_7 : StackLang.HolProg 64 :=
.seq rawBody729_5 rawBody729_6

def rawBody729_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody729_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody729_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody729_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 729 3

def rawBody729_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody729_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody729_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody729_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody729_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody729_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody729_18 : StackLang.HolProg 64 :=
.seq rawBody729_16 rawBody729_17

def rawBody729_19 : StackLang.HolProg 64 :=
.seq rawBody729_15 rawBody729_18

def rawBody729_20 : StackLang.HolProg 64 :=
.seq rawBody729_14 rawBody729_19

def rawBody729_21 : StackLang.HolProg 64 :=
.seq rawBody729_13 rawBody729_20

def rawBody729_22 : StackLang.HolProg 64 :=
.seq rawBody729_12 rawBody729_21

def rawBody729_23 : StackLang.HolProg 64 :=
.seq rawBody729_11 rawBody729_22

def rawBody729_24 : StackLang.HolProg 64 :=
.seq rawBody729_10 rawBody729_23

def rawBody729_25 : StackLang.HolProg 64 :=
.seq rawBody729_9 rawBody729_24

def rawBody729_26 : StackLang.HolProg 64 :=
.seq rawBody729_8 rawBody729_25

def rawBody729_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody729_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody729_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody729_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody729_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody729_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody729_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody729_34 : StackLang.HolProg 64 :=
.seq rawBody729_32 rawBody729_33

def rawBody729_35 : StackLang.HolProg 64 :=
.seq rawBody729_31 rawBody729_34

def rawBody729_36 : StackLang.HolProg 64 :=
.seq rawBody729_30 rawBody729_35

def rawBody729_37 : StackLang.HolProg 64 :=
.seq rawBody729_29 rawBody729_36

def rawBody729_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody729_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody729_40 : StackLang.HolProg 64 :=
.seq rawBody729_38 rawBody729_39

def rawBody729_41 : StackLang.HolProg 64 :=
.call (some (rawBody729_37, 0, 729, 2)) (Sum.inl 77) (some (rawBody729_40, 729, 3))

def rawBody729_42 : StackLang.HolProg 64 :=
.seq rawBody729_28 rawBody729_41

def rawBody729_43 : StackLang.HolProg 64 :=
.seq rawBody729_27 rawBody729_42

def rawBody729_44 : StackLang.HolProg 64 :=
.seq rawBody729_26 rawBody729_43

def rawBody729_45 : StackLang.HolProg 64 :=
.seq rawBody729_7 rawBody729_44

def rawBody729_46 : StackLang.HolProg 64 :=
.seq rawBody729_4 rawBody729_45

def rawBody729_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody729_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody729_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody729_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody729_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody729_52 : StackLang.HolProg 64 :=
.seq rawBody729_50 rawBody729_51

def rawBody729_53 : StackLang.HolProg 64 :=
.seq rawBody729_49 rawBody729_52

def rawBody729_54 : StackLang.HolProg 64 :=
.seq rawBody729_48 rawBody729_53

def rawBody729_55 : StackLang.HolProg 64 :=
.seq rawBody729_47 rawBody729_54

def rawBody729_56 : StackLang.HolProg 64 :=
.seq rawBody729_46 rawBody729_55

def rawBody729_57 : StackLang.HolProg 64 :=
.seq rawBody729_3 rawBody729_56

def rawBody729_58 : StackLang.HolProg 64 :=
.seq rawBody729_2 rawBody729_57

def rawBody729_59 : StackLang.HolProg 64 :=
.seq rawBody729_1 rawBody729_58

def rawBody729_60 : StackLang.HolProg 64 :=
.seq rawBody729_0 rawBody729_59

def raw729 : StackLang.HolProg 64 := rawBody729_60
theorem raw729_eq : StackRawCall.compTop RawInfo.rawInfo (function729 (.list [])).1 = raw729 := by
  kernel_rfl
#print axioms raw729_eq
end InitECandidate.Proofs.BackendStages
