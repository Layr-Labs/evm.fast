import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function96
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody96_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody96_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody96_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody96_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 42#64)

def rawBody96_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody96_5 : StackLang.HolProg 64 :=
.seq rawBody96_3 rawBody96_4

def rawBody96_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody96_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody96_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody96_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 96 3

def rawBody96_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody96_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody96_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody96_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody96_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody96_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody96_16 : StackLang.HolProg 64 :=
.seq rawBody96_14 rawBody96_15

def rawBody96_17 : StackLang.HolProg 64 :=
.seq rawBody96_13 rawBody96_16

def rawBody96_18 : StackLang.HolProg 64 :=
.seq rawBody96_12 rawBody96_17

def rawBody96_19 : StackLang.HolProg 64 :=
.seq rawBody96_11 rawBody96_18

def rawBody96_20 : StackLang.HolProg 64 :=
.seq rawBody96_10 rawBody96_19

def rawBody96_21 : StackLang.HolProg 64 :=
.seq rawBody96_9 rawBody96_20

def rawBody96_22 : StackLang.HolProg 64 :=
.seq rawBody96_8 rawBody96_21

def rawBody96_23 : StackLang.HolProg 64 :=
.seq rawBody96_7 rawBody96_22

def rawBody96_24 : StackLang.HolProg 64 :=
.seq rawBody96_6 rawBody96_23

def rawBody96_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody96_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody96_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody96_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody96_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody96_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody96_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody96_32 : StackLang.HolProg 64 :=
.seq rawBody96_30 rawBody96_31

def rawBody96_33 : StackLang.HolProg 64 :=
.seq rawBody96_29 rawBody96_32

def rawBody96_34 : StackLang.HolProg 64 :=
.seq rawBody96_28 rawBody96_33

def rawBody96_35 : StackLang.HolProg 64 :=
.seq rawBody96_27 rawBody96_34

def rawBody96_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody96_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody96_38 : StackLang.HolProg 64 :=
.seq rawBody96_36 rawBody96_37

def rawBody96_39 : StackLang.HolProg 64 :=
.call (some (rawBody96_35, 0, 96, 2)) (Sum.inl 94) (some (rawBody96_38, 96, 3))

def rawBody96_40 : StackLang.HolProg 64 :=
.seq rawBody96_26 rawBody96_39

def rawBody96_41 : StackLang.HolProg 64 :=
.seq rawBody96_25 rawBody96_40

def rawBody96_42 : StackLang.HolProg 64 :=
.seq rawBody96_24 rawBody96_41

def rawBody96_43 : StackLang.HolProg 64 :=
.seq rawBody96_5 rawBody96_42

def rawBody96_44 : StackLang.HolProg 64 :=
.seq rawBody96_2 rawBody96_43

def rawBody96_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody96_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody96_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody96_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody96_49 : StackLang.HolProg 64 :=
.seq rawBody96_47 rawBody96_48

def rawBody96_50 : StackLang.HolProg 64 :=
.seq rawBody96_46 rawBody96_49

def rawBody96_51 : StackLang.HolProg 64 :=
.seq rawBody96_45 rawBody96_50

def rawBody96_52 : StackLang.HolProg 64 :=
.seq rawBody96_44 rawBody96_51

def rawBody96_53 : StackLang.HolProg 64 :=
.seq rawBody96_1 rawBody96_52

def rawBody96_54 : StackLang.HolProg 64 :=
.seq rawBody96_0 rawBody96_53

def raw96 : StackLang.HolProg 64 := rawBody96_54
theorem raw96_eq : StackRawCall.compTop RawInfo.rawInfo (function96 (.list [])).1 = raw96 := by
  kernel_rfl
#print axioms raw96_eq
end InitECandidate.Proofs.BackendStages
