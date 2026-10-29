import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function809
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody809_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody809_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody809_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody809_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3986#64)

def rawBody809_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody809_5 : StackLang.HolProg 64 :=
.seq rawBody809_3 rawBody809_4

def rawBody809_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody809_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody809_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody809_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 809 3

def rawBody809_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody809_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody809_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody809_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody809_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody809_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody809_16 : StackLang.HolProg 64 :=
.seq rawBody809_14 rawBody809_15

def rawBody809_17 : StackLang.HolProg 64 :=
.seq rawBody809_13 rawBody809_16

def rawBody809_18 : StackLang.HolProg 64 :=
.seq rawBody809_12 rawBody809_17

def rawBody809_19 : StackLang.HolProg 64 :=
.seq rawBody809_11 rawBody809_18

def rawBody809_20 : StackLang.HolProg 64 :=
.seq rawBody809_10 rawBody809_19

def rawBody809_21 : StackLang.HolProg 64 :=
.seq rawBody809_9 rawBody809_20

def rawBody809_22 : StackLang.HolProg 64 :=
.seq rawBody809_8 rawBody809_21

def rawBody809_23 : StackLang.HolProg 64 :=
.seq rawBody809_7 rawBody809_22

def rawBody809_24 : StackLang.HolProg 64 :=
.seq rawBody809_6 rawBody809_23

def rawBody809_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody809_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody809_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody809_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody809_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody809_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody809_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody809_32 : StackLang.HolProg 64 :=
.seq rawBody809_30 rawBody809_31

def rawBody809_33 : StackLang.HolProg 64 :=
.seq rawBody809_29 rawBody809_32

def rawBody809_34 : StackLang.HolProg 64 :=
.seq rawBody809_28 rawBody809_33

def rawBody809_35 : StackLang.HolProg 64 :=
.seq rawBody809_27 rawBody809_34

def rawBody809_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody809_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody809_38 : StackLang.HolProg 64 :=
.seq rawBody809_36 rawBody809_37

def rawBody809_39 : StackLang.HolProg 64 :=
.call (some (rawBody809_35, 0, 809, 2)) (Sum.inl 704) (some (rawBody809_38, 809, 3))

def rawBody809_40 : StackLang.HolProg 64 :=
.seq rawBody809_26 rawBody809_39

def rawBody809_41 : StackLang.HolProg 64 :=
.seq rawBody809_25 rawBody809_40

def rawBody809_42 : StackLang.HolProg 64 :=
.seq rawBody809_24 rawBody809_41

def rawBody809_43 : StackLang.HolProg 64 :=
.seq rawBody809_5 rawBody809_42

def rawBody809_44 : StackLang.HolProg 64 :=
.seq rawBody809_2 rawBody809_43

def rawBody809_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody809_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody809_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody809_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody809_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody809_50 : StackLang.HolProg 64 :=
.seq rawBody809_48 rawBody809_49

def rawBody809_51 : StackLang.HolProg 64 :=
.seq rawBody809_47 rawBody809_50

def rawBody809_52 : StackLang.HolProg 64 :=
.seq rawBody809_46 rawBody809_51

def rawBody809_53 : StackLang.HolProg 64 :=
.seq rawBody809_45 rawBody809_52

def rawBody809_54 : StackLang.HolProg 64 :=
.seq rawBody809_44 rawBody809_53

def rawBody809_55 : StackLang.HolProg 64 :=
.seq rawBody809_1 rawBody809_54

def rawBody809_56 : StackLang.HolProg 64 :=
.seq rawBody809_0 rawBody809_55

def raw809 : StackLang.HolProg 64 := rawBody809_56
theorem raw809_eq : StackRawCall.compTop RawInfo.rawInfo (function809 (.list [])).1 = raw809 := by
  kernel_rfl
#print axioms raw809_eq
end InitECandidate.Proofs.BackendStages
