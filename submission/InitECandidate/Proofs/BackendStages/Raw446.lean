import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function446
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody446_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody446_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody446_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody446_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1345#64)

def rawBody446_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody446_5 : StackLang.HolProg 64 :=
.seq rawBody446_3 rawBody446_4

def rawBody446_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody446_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody446_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody446_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 446 3

def rawBody446_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody446_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody446_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody446_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody446_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody446_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody446_16 : StackLang.HolProg 64 :=
.seq rawBody446_14 rawBody446_15

def rawBody446_17 : StackLang.HolProg 64 :=
.seq rawBody446_13 rawBody446_16

def rawBody446_18 : StackLang.HolProg 64 :=
.seq rawBody446_12 rawBody446_17

def rawBody446_19 : StackLang.HolProg 64 :=
.seq rawBody446_11 rawBody446_18

def rawBody446_20 : StackLang.HolProg 64 :=
.seq rawBody446_10 rawBody446_19

def rawBody446_21 : StackLang.HolProg 64 :=
.seq rawBody446_9 rawBody446_20

def rawBody446_22 : StackLang.HolProg 64 :=
.seq rawBody446_8 rawBody446_21

def rawBody446_23 : StackLang.HolProg 64 :=
.seq rawBody446_7 rawBody446_22

def rawBody446_24 : StackLang.HolProg 64 :=
.seq rawBody446_6 rawBody446_23

def rawBody446_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody446_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody446_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody446_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody446_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody446_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody446_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody446_32 : StackLang.HolProg 64 :=
.seq rawBody446_30 rawBody446_31

def rawBody446_33 : StackLang.HolProg 64 :=
.seq rawBody446_29 rawBody446_32

def rawBody446_34 : StackLang.HolProg 64 :=
.seq rawBody446_28 rawBody446_33

def rawBody446_35 : StackLang.HolProg 64 :=
.seq rawBody446_27 rawBody446_34

def rawBody446_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody446_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody446_38 : StackLang.HolProg 64 :=
.seq rawBody446_36 rawBody446_37

def rawBody446_39 : StackLang.HolProg 64 :=
.call (some (rawBody446_35, 0, 446, 2)) (Sum.inl 439) (some (rawBody446_38, 446, 3))

def rawBody446_40 : StackLang.HolProg 64 :=
.seq rawBody446_26 rawBody446_39

def rawBody446_41 : StackLang.HolProg 64 :=
.seq rawBody446_25 rawBody446_40

def rawBody446_42 : StackLang.HolProg 64 :=
.seq rawBody446_24 rawBody446_41

def rawBody446_43 : StackLang.HolProg 64 :=
.seq rawBody446_5 rawBody446_42

def rawBody446_44 : StackLang.HolProg 64 :=
.seq rawBody446_2 rawBody446_43

def rawBody446_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody446_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody446_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody446_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody446_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody446_50 : StackLang.HolProg 64 :=
.seq rawBody446_48 rawBody446_49

def rawBody446_51 : StackLang.HolProg 64 :=
.seq rawBody446_47 rawBody446_50

def rawBody446_52 : StackLang.HolProg 64 :=
.seq rawBody446_46 rawBody446_51

def rawBody446_53 : StackLang.HolProg 64 :=
.seq rawBody446_45 rawBody446_52

def rawBody446_54 : StackLang.HolProg 64 :=
.seq rawBody446_44 rawBody446_53

def rawBody446_55 : StackLang.HolProg 64 :=
.seq rawBody446_1 rawBody446_54

def rawBody446_56 : StackLang.HolProg 64 :=
.seq rawBody446_0 rawBody446_55

def raw446 : StackLang.HolProg 64 := rawBody446_56
theorem raw446_eq : StackRawCall.compTop RawInfo.rawInfo (function446 (.list [])).1 = raw446 := by
  kernel_rfl
#print axioms raw446_eq
end InitECandidate.Proofs.BackendStages
