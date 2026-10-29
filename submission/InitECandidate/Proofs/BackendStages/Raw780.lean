import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function780
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody780_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody780_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody780_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 288#64)

def rawBody780_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody780_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody780_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3546#64)

def rawBody780_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody780_7 : StackLang.HolProg 64 :=
.seq rawBody780_5 rawBody780_6

def rawBody780_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody780_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody780_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody780_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 780 3

def rawBody780_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody780_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody780_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody780_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody780_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody780_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody780_18 : StackLang.HolProg 64 :=
.seq rawBody780_16 rawBody780_17

def rawBody780_19 : StackLang.HolProg 64 :=
.seq rawBody780_15 rawBody780_18

def rawBody780_20 : StackLang.HolProg 64 :=
.seq rawBody780_14 rawBody780_19

def rawBody780_21 : StackLang.HolProg 64 :=
.seq rawBody780_13 rawBody780_20

def rawBody780_22 : StackLang.HolProg 64 :=
.seq rawBody780_12 rawBody780_21

def rawBody780_23 : StackLang.HolProg 64 :=
.seq rawBody780_11 rawBody780_22

def rawBody780_24 : StackLang.HolProg 64 :=
.seq rawBody780_10 rawBody780_23

def rawBody780_25 : StackLang.HolProg 64 :=
.seq rawBody780_9 rawBody780_24

def rawBody780_26 : StackLang.HolProg 64 :=
.seq rawBody780_8 rawBody780_25

def rawBody780_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody780_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody780_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody780_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody780_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody780_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody780_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody780_34 : StackLang.HolProg 64 :=
.seq rawBody780_32 rawBody780_33

def rawBody780_35 : StackLang.HolProg 64 :=
.seq rawBody780_31 rawBody780_34

def rawBody780_36 : StackLang.HolProg 64 :=
.seq rawBody780_30 rawBody780_35

def rawBody780_37 : StackLang.HolProg 64 :=
.seq rawBody780_29 rawBody780_36

def rawBody780_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody780_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody780_40 : StackLang.HolProg 64 :=
.seq rawBody780_38 rawBody780_39

def rawBody780_41 : StackLang.HolProg 64 :=
.call (some (rawBody780_37, 0, 780, 2)) (Sum.inl 77) (some (rawBody780_40, 780, 3))

def rawBody780_42 : StackLang.HolProg 64 :=
.seq rawBody780_28 rawBody780_41

def rawBody780_43 : StackLang.HolProg 64 :=
.seq rawBody780_27 rawBody780_42

def rawBody780_44 : StackLang.HolProg 64 :=
.seq rawBody780_26 rawBody780_43

def rawBody780_45 : StackLang.HolProg 64 :=
.seq rawBody780_7 rawBody780_44

def rawBody780_46 : StackLang.HolProg 64 :=
.seq rawBody780_4 rawBody780_45

def rawBody780_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody780_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody780_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody780_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody780_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody780_52 : StackLang.HolProg 64 :=
.seq rawBody780_50 rawBody780_51

def rawBody780_53 : StackLang.HolProg 64 :=
.seq rawBody780_49 rawBody780_52

def rawBody780_54 : StackLang.HolProg 64 :=
.seq rawBody780_48 rawBody780_53

def rawBody780_55 : StackLang.HolProg 64 :=
.seq rawBody780_47 rawBody780_54

def rawBody780_56 : StackLang.HolProg 64 :=
.seq rawBody780_46 rawBody780_55

def rawBody780_57 : StackLang.HolProg 64 :=
.seq rawBody780_3 rawBody780_56

def rawBody780_58 : StackLang.HolProg 64 :=
.seq rawBody780_2 rawBody780_57

def rawBody780_59 : StackLang.HolProg 64 :=
.seq rawBody780_1 rawBody780_58

def rawBody780_60 : StackLang.HolProg 64 :=
.seq rawBody780_0 rawBody780_59

def raw780 : StackLang.HolProg 64 := rawBody780_60
theorem raw780_eq : StackRawCall.compTop RawInfo.rawInfo (function780 (.list [])).1 = raw780 := by
  kernel_rfl
#print axioms raw780_eq
end InitECandidate.Proofs.BackendStages
