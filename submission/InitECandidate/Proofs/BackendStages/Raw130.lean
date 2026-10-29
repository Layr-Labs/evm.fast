import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function130
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody130_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody130_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody130_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody130_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 82#64)

def rawBody130_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody130_5 : StackLang.HolProg 64 :=
.seq rawBody130_3 rawBody130_4

def rawBody130_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody130_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody130_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody130_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 130 3

def rawBody130_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody130_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody130_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody130_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody130_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody130_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody130_16 : StackLang.HolProg 64 :=
.seq rawBody130_14 rawBody130_15

def rawBody130_17 : StackLang.HolProg 64 :=
.seq rawBody130_13 rawBody130_16

def rawBody130_18 : StackLang.HolProg 64 :=
.seq rawBody130_12 rawBody130_17

def rawBody130_19 : StackLang.HolProg 64 :=
.seq rawBody130_11 rawBody130_18

def rawBody130_20 : StackLang.HolProg 64 :=
.seq rawBody130_10 rawBody130_19

def rawBody130_21 : StackLang.HolProg 64 :=
.seq rawBody130_9 rawBody130_20

def rawBody130_22 : StackLang.HolProg 64 :=
.seq rawBody130_8 rawBody130_21

def rawBody130_23 : StackLang.HolProg 64 :=
.seq rawBody130_7 rawBody130_22

def rawBody130_24 : StackLang.HolProg 64 :=
.seq rawBody130_6 rawBody130_23

def rawBody130_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody130_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody130_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody130_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody130_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody130_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody130_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody130_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody130_33 : StackLang.HolProg 64 :=
.seq rawBody130_31 rawBody130_32

def rawBody130_34 : StackLang.HolProg 64 :=
.seq rawBody130_30 rawBody130_33

def rawBody130_35 : StackLang.HolProg 64 :=
.seq rawBody130_29 rawBody130_34

def rawBody130_36 : StackLang.HolProg 64 :=
.seq rawBody130_28 rawBody130_35

def rawBody130_37 : StackLang.HolProg 64 :=
.seq rawBody130_27 rawBody130_36

def rawBody130_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody130_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody130_40 : StackLang.HolProg 64 :=
.seq rawBody130_38 rawBody130_39

def rawBody130_41 : StackLang.HolProg 64 :=
.call (some (rawBody130_37, 0, 130, 2)) (Sum.inl 129) (some (rawBody130_40, 130, 3))

def rawBody130_42 : StackLang.HolProg 64 :=
.seq rawBody130_26 rawBody130_41

def rawBody130_43 : StackLang.HolProg 64 :=
.seq rawBody130_25 rawBody130_42

def rawBody130_44 : StackLang.HolProg 64 :=
.seq rawBody130_24 rawBody130_43

def rawBody130_45 : StackLang.HolProg 64 :=
.seq rawBody130_5 rawBody130_44

def rawBody130_46 : StackLang.HolProg 64 :=
.seq rawBody130_2 rawBody130_45

def rawBody130_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody130_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody130_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody130_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody130_51 : StackLang.HolProg 64 :=
.seq rawBody130_49 rawBody130_50

def rawBody130_52 : StackLang.HolProg 64 :=
.seq rawBody130_48 rawBody130_51

def rawBody130_53 : StackLang.HolProg 64 :=
.seq rawBody130_47 rawBody130_52

def rawBody130_54 : StackLang.HolProg 64 :=
.seq rawBody130_46 rawBody130_53

def rawBody130_55 : StackLang.HolProg 64 :=
.seq rawBody130_1 rawBody130_54

def rawBody130_56 : StackLang.HolProg 64 :=
.seq rawBody130_0 rawBody130_55

def raw130 : StackLang.HolProg 64 := rawBody130_56
theorem raw130_eq : StackRawCall.compTop RawInfo.rawInfo (function130 (.list [])).1 = raw130 := by
  kernel_rfl
#print axioms raw130_eq
end InitECandidate.Proofs.BackendStages
