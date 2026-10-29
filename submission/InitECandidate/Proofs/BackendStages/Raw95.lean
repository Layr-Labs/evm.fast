import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function95
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody95_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody95_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody95_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody95_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 41#64)

def rawBody95_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody95_5 : StackLang.HolProg 64 :=
.seq rawBody95_3 rawBody95_4

def rawBody95_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody95_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody95_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody95_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 95 3

def rawBody95_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody95_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody95_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody95_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody95_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody95_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody95_16 : StackLang.HolProg 64 :=
.seq rawBody95_14 rawBody95_15

def rawBody95_17 : StackLang.HolProg 64 :=
.seq rawBody95_13 rawBody95_16

def rawBody95_18 : StackLang.HolProg 64 :=
.seq rawBody95_12 rawBody95_17

def rawBody95_19 : StackLang.HolProg 64 :=
.seq rawBody95_11 rawBody95_18

def rawBody95_20 : StackLang.HolProg 64 :=
.seq rawBody95_10 rawBody95_19

def rawBody95_21 : StackLang.HolProg 64 :=
.seq rawBody95_9 rawBody95_20

def rawBody95_22 : StackLang.HolProg 64 :=
.seq rawBody95_8 rawBody95_21

def rawBody95_23 : StackLang.HolProg 64 :=
.seq rawBody95_7 rawBody95_22

def rawBody95_24 : StackLang.HolProg 64 :=
.seq rawBody95_6 rawBody95_23

def rawBody95_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody95_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody95_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody95_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody95_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody95_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody95_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody95_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody95_33 : StackLang.HolProg 64 :=
.seq rawBody95_31 rawBody95_32

def rawBody95_34 : StackLang.HolProg 64 :=
.seq rawBody95_30 rawBody95_33

def rawBody95_35 : StackLang.HolProg 64 :=
.seq rawBody95_29 rawBody95_34

def rawBody95_36 : StackLang.HolProg 64 :=
.seq rawBody95_28 rawBody95_35

def rawBody95_37 : StackLang.HolProg 64 :=
.seq rawBody95_27 rawBody95_36

def rawBody95_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody95_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody95_40 : StackLang.HolProg 64 :=
.seq rawBody95_38 rawBody95_39

def rawBody95_41 : StackLang.HolProg 64 :=
.call (some (rawBody95_37, 0, 95, 2)) (Sum.inl 94) (some (rawBody95_40, 95, 3))

def rawBody95_42 : StackLang.HolProg 64 :=
.seq rawBody95_26 rawBody95_41

def rawBody95_43 : StackLang.HolProg 64 :=
.seq rawBody95_25 rawBody95_42

def rawBody95_44 : StackLang.HolProg 64 :=
.seq rawBody95_24 rawBody95_43

def rawBody95_45 : StackLang.HolProg 64 :=
.seq rawBody95_5 rawBody95_44

def rawBody95_46 : StackLang.HolProg 64 :=
.seq rawBody95_2 rawBody95_45

def rawBody95_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody95_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody95_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody95_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody95_51 : StackLang.HolProg 64 :=
.seq rawBody95_49 rawBody95_50

def rawBody95_52 : StackLang.HolProg 64 :=
.seq rawBody95_48 rawBody95_51

def rawBody95_53 : StackLang.HolProg 64 :=
.seq rawBody95_47 rawBody95_52

def rawBody95_54 : StackLang.HolProg 64 :=
.seq rawBody95_46 rawBody95_53

def rawBody95_55 : StackLang.HolProg 64 :=
.seq rawBody95_1 rawBody95_54

def rawBody95_56 : StackLang.HolProg 64 :=
.seq rawBody95_0 rawBody95_55

def raw95 : StackLang.HolProg 64 := rawBody95_56
theorem raw95_eq : StackRawCall.compTop RawInfo.rawInfo (function95 (.list [])).1 = raw95 := by
  kernel_rfl
#print axioms raw95_eq
end InitECandidate.Proofs.BackendStages
