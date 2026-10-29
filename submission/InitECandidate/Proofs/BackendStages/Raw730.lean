import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function730
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody730_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody730_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody730_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 96#64)

def rawBody730_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody730_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody730_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3262#64)

def rawBody730_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody730_7 : StackLang.HolProg 64 :=
.seq rawBody730_5 rawBody730_6

def rawBody730_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody730_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody730_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody730_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 730 3

def rawBody730_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody730_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody730_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody730_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody730_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody730_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody730_18 : StackLang.HolProg 64 :=
.seq rawBody730_16 rawBody730_17

def rawBody730_19 : StackLang.HolProg 64 :=
.seq rawBody730_15 rawBody730_18

def rawBody730_20 : StackLang.HolProg 64 :=
.seq rawBody730_14 rawBody730_19

def rawBody730_21 : StackLang.HolProg 64 :=
.seq rawBody730_13 rawBody730_20

def rawBody730_22 : StackLang.HolProg 64 :=
.seq rawBody730_12 rawBody730_21

def rawBody730_23 : StackLang.HolProg 64 :=
.seq rawBody730_11 rawBody730_22

def rawBody730_24 : StackLang.HolProg 64 :=
.seq rawBody730_10 rawBody730_23

def rawBody730_25 : StackLang.HolProg 64 :=
.seq rawBody730_9 rawBody730_24

def rawBody730_26 : StackLang.HolProg 64 :=
.seq rawBody730_8 rawBody730_25

def rawBody730_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody730_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody730_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody730_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody730_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody730_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody730_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody730_34 : StackLang.HolProg 64 :=
.seq rawBody730_32 rawBody730_33

def rawBody730_35 : StackLang.HolProg 64 :=
.seq rawBody730_31 rawBody730_34

def rawBody730_36 : StackLang.HolProg 64 :=
.seq rawBody730_30 rawBody730_35

def rawBody730_37 : StackLang.HolProg 64 :=
.seq rawBody730_29 rawBody730_36

def rawBody730_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody730_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody730_40 : StackLang.HolProg 64 :=
.seq rawBody730_38 rawBody730_39

def rawBody730_41 : StackLang.HolProg 64 :=
.call (some (rawBody730_37, 0, 730, 2)) (Sum.inl 78) (some (rawBody730_40, 730, 3))

def rawBody730_42 : StackLang.HolProg 64 :=
.seq rawBody730_28 rawBody730_41

def rawBody730_43 : StackLang.HolProg 64 :=
.seq rawBody730_27 rawBody730_42

def rawBody730_44 : StackLang.HolProg 64 :=
.seq rawBody730_26 rawBody730_43

def rawBody730_45 : StackLang.HolProg 64 :=
.seq rawBody730_7 rawBody730_44

def rawBody730_46 : StackLang.HolProg 64 :=
.seq rawBody730_4 rawBody730_45

def rawBody730_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody730_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody730_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody730_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody730_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody730_52 : StackLang.HolProg 64 :=
.seq rawBody730_50 rawBody730_51

def rawBody730_53 : StackLang.HolProg 64 :=
.seq rawBody730_49 rawBody730_52

def rawBody730_54 : StackLang.HolProg 64 :=
.seq rawBody730_48 rawBody730_53

def rawBody730_55 : StackLang.HolProg 64 :=
.seq rawBody730_47 rawBody730_54

def rawBody730_56 : StackLang.HolProg 64 :=
.seq rawBody730_46 rawBody730_55

def rawBody730_57 : StackLang.HolProg 64 :=
.seq rawBody730_3 rawBody730_56

def rawBody730_58 : StackLang.HolProg 64 :=
.seq rawBody730_2 rawBody730_57

def rawBody730_59 : StackLang.HolProg 64 :=
.seq rawBody730_1 rawBody730_58

def rawBody730_60 : StackLang.HolProg 64 :=
.seq rawBody730_0 rawBody730_59

def raw730 : StackLang.HolProg 64 := rawBody730_60
theorem raw730_eq : StackRawCall.compTop RawInfo.rawInfo (function730 (.list [])).1 = raw730 := by
  kernel_rfl
#print axioms raw730_eq
end InitECandidate.Proofs.BackendStages
