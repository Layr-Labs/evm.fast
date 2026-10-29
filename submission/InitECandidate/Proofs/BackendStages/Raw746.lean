import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function746
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody746_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody746_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody746_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 288#64)

def rawBody746_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody746_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody746_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3306#64)

def rawBody746_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody746_7 : StackLang.HolProg 64 :=
.seq rawBody746_5 rawBody746_6

def rawBody746_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody746_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody746_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody746_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 746 3

def rawBody746_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody746_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody746_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody746_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody746_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody746_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody746_18 : StackLang.HolProg 64 :=
.seq rawBody746_16 rawBody746_17

def rawBody746_19 : StackLang.HolProg 64 :=
.seq rawBody746_15 rawBody746_18

def rawBody746_20 : StackLang.HolProg 64 :=
.seq rawBody746_14 rawBody746_19

def rawBody746_21 : StackLang.HolProg 64 :=
.seq rawBody746_13 rawBody746_20

def rawBody746_22 : StackLang.HolProg 64 :=
.seq rawBody746_12 rawBody746_21

def rawBody746_23 : StackLang.HolProg 64 :=
.seq rawBody746_11 rawBody746_22

def rawBody746_24 : StackLang.HolProg 64 :=
.seq rawBody746_10 rawBody746_23

def rawBody746_25 : StackLang.HolProg 64 :=
.seq rawBody746_9 rawBody746_24

def rawBody746_26 : StackLang.HolProg 64 :=
.seq rawBody746_8 rawBody746_25

def rawBody746_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody746_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody746_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody746_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody746_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody746_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody746_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody746_34 : StackLang.HolProg 64 :=
.seq rawBody746_32 rawBody746_33

def rawBody746_35 : StackLang.HolProg 64 :=
.seq rawBody746_31 rawBody746_34

def rawBody746_36 : StackLang.HolProg 64 :=
.seq rawBody746_30 rawBody746_35

def rawBody746_37 : StackLang.HolProg 64 :=
.seq rawBody746_29 rawBody746_36

def rawBody746_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody746_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody746_40 : StackLang.HolProg 64 :=
.seq rawBody746_38 rawBody746_39

def rawBody746_41 : StackLang.HolProg 64 :=
.call (some (rawBody746_37, 0, 746, 2)) (Sum.inl 77) (some (rawBody746_40, 746, 3))

def rawBody746_42 : StackLang.HolProg 64 :=
.seq rawBody746_28 rawBody746_41

def rawBody746_43 : StackLang.HolProg 64 :=
.seq rawBody746_27 rawBody746_42

def rawBody746_44 : StackLang.HolProg 64 :=
.seq rawBody746_26 rawBody746_43

def rawBody746_45 : StackLang.HolProg 64 :=
.seq rawBody746_7 rawBody746_44

def rawBody746_46 : StackLang.HolProg 64 :=
.seq rawBody746_4 rawBody746_45

def rawBody746_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody746_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody746_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody746_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody746_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody746_52 : StackLang.HolProg 64 :=
.seq rawBody746_50 rawBody746_51

def rawBody746_53 : StackLang.HolProg 64 :=
.seq rawBody746_49 rawBody746_52

def rawBody746_54 : StackLang.HolProg 64 :=
.seq rawBody746_48 rawBody746_53

def rawBody746_55 : StackLang.HolProg 64 :=
.seq rawBody746_47 rawBody746_54

def rawBody746_56 : StackLang.HolProg 64 :=
.seq rawBody746_46 rawBody746_55

def rawBody746_57 : StackLang.HolProg 64 :=
.seq rawBody746_3 rawBody746_56

def rawBody746_58 : StackLang.HolProg 64 :=
.seq rawBody746_2 rawBody746_57

def rawBody746_59 : StackLang.HolProg 64 :=
.seq rawBody746_1 rawBody746_58

def rawBody746_60 : StackLang.HolProg 64 :=
.seq rawBody746_0 rawBody746_59

def raw746 : StackLang.HolProg 64 := rawBody746_60
theorem raw746_eq : StackRawCall.compTop RawInfo.rawInfo (function746 (.list [])).1 = raw746 := by
  kernel_rfl
#print axioms raw746_eq
end InitECandidate.Proofs.BackendStages
