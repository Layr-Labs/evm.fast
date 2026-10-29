import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function465
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody465_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody465_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody465_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody465_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1489#64)

def rawBody465_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody465_5 : StackLang.HolProg 64 :=
.seq rawBody465_3 rawBody465_4

def rawBody465_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody465_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody465_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody465_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 465 3

def rawBody465_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody465_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody465_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody465_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody465_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody465_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody465_16 : StackLang.HolProg 64 :=
.seq rawBody465_14 rawBody465_15

def rawBody465_17 : StackLang.HolProg 64 :=
.seq rawBody465_13 rawBody465_16

def rawBody465_18 : StackLang.HolProg 64 :=
.seq rawBody465_12 rawBody465_17

def rawBody465_19 : StackLang.HolProg 64 :=
.seq rawBody465_11 rawBody465_18

def rawBody465_20 : StackLang.HolProg 64 :=
.seq rawBody465_10 rawBody465_19

def rawBody465_21 : StackLang.HolProg 64 :=
.seq rawBody465_9 rawBody465_20

def rawBody465_22 : StackLang.HolProg 64 :=
.seq rawBody465_8 rawBody465_21

def rawBody465_23 : StackLang.HolProg 64 :=
.seq rawBody465_7 rawBody465_22

def rawBody465_24 : StackLang.HolProg 64 :=
.seq rawBody465_6 rawBody465_23

def rawBody465_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody465_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody465_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody465_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody465_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody465_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody465_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody465_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody465_33 : StackLang.HolProg 64 :=
.seq rawBody465_31 rawBody465_32

def rawBody465_34 : StackLang.HolProg 64 :=
.seq rawBody465_30 rawBody465_33

def rawBody465_35 : StackLang.HolProg 64 :=
.seq rawBody465_29 rawBody465_34

def rawBody465_36 : StackLang.HolProg 64 :=
.seq rawBody465_28 rawBody465_35

def rawBody465_37 : StackLang.HolProg 64 :=
.seq rawBody465_27 rawBody465_36

def rawBody465_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody465_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody465_40 : StackLang.HolProg 64 :=
.seq rawBody465_38 rawBody465_39

def rawBody465_41 : StackLang.HolProg 64 :=
.call (some (rawBody465_37, 0, 465, 2)) (Sum.inl 464) (some (rawBody465_40, 465, 3))

def rawBody465_42 : StackLang.HolProg 64 :=
.seq rawBody465_26 rawBody465_41

def rawBody465_43 : StackLang.HolProg 64 :=
.seq rawBody465_25 rawBody465_42

def rawBody465_44 : StackLang.HolProg 64 :=
.seq rawBody465_24 rawBody465_43

def rawBody465_45 : StackLang.HolProg 64 :=
.seq rawBody465_5 rawBody465_44

def rawBody465_46 : StackLang.HolProg 64 :=
.seq rawBody465_2 rawBody465_45

def rawBody465_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody465_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody465_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody465_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody465_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody465_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody465_53 : StackLang.HolProg 64 :=
.seq rawBody465_51 rawBody465_52

def rawBody465_54 : StackLang.HolProg 64 :=
.seq rawBody465_50 rawBody465_53

def rawBody465_55 : StackLang.HolProg 64 :=
.seq rawBody465_49 rawBody465_54

def rawBody465_56 : StackLang.HolProg 64 :=
.seq rawBody465_48 rawBody465_55

def rawBody465_57 : StackLang.HolProg 64 :=
.seq rawBody465_47 rawBody465_56

def rawBody465_58 : StackLang.HolProg 64 :=
.seq rawBody465_46 rawBody465_57

def rawBody465_59 : StackLang.HolProg 64 :=
.seq rawBody465_1 rawBody465_58

def rawBody465_60 : StackLang.HolProg 64 :=
.seq rawBody465_0 rawBody465_59

def raw465 : StackLang.HolProg 64 := rawBody465_60
theorem raw465_eq : StackRawCall.compTop RawInfo.rawInfo (function465 (.list [])).1 = raw465 := by
  kernel_rfl
#print axioms raw465_eq
end InitECandidate.Proofs.BackendStages
