import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function139
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody139_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody139_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody139_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody139_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 100#64)

def rawBody139_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody139_5 : StackLang.HolProg 64 :=
.seq rawBody139_3 rawBody139_4

def rawBody139_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody139_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody139_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody139_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 139 3

def rawBody139_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody139_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody139_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody139_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody139_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody139_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody139_16 : StackLang.HolProg 64 :=
.seq rawBody139_14 rawBody139_15

def rawBody139_17 : StackLang.HolProg 64 :=
.seq rawBody139_13 rawBody139_16

def rawBody139_18 : StackLang.HolProg 64 :=
.seq rawBody139_12 rawBody139_17

def rawBody139_19 : StackLang.HolProg 64 :=
.seq rawBody139_11 rawBody139_18

def rawBody139_20 : StackLang.HolProg 64 :=
.seq rawBody139_10 rawBody139_19

def rawBody139_21 : StackLang.HolProg 64 :=
.seq rawBody139_9 rawBody139_20

def rawBody139_22 : StackLang.HolProg 64 :=
.seq rawBody139_8 rawBody139_21

def rawBody139_23 : StackLang.HolProg 64 :=
.seq rawBody139_7 rawBody139_22

def rawBody139_24 : StackLang.HolProg 64 :=
.seq rawBody139_6 rawBody139_23

def rawBody139_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody139_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody139_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody139_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody139_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody139_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody139_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody139_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody139_33 : StackLang.HolProg 64 :=
.seq rawBody139_31 rawBody139_32

def rawBody139_34 : StackLang.HolProg 64 :=
.seq rawBody139_30 rawBody139_33

def rawBody139_35 : StackLang.HolProg 64 :=
.seq rawBody139_29 rawBody139_34

def rawBody139_36 : StackLang.HolProg 64 :=
.seq rawBody139_28 rawBody139_35

def rawBody139_37 : StackLang.HolProg 64 :=
.seq rawBody139_27 rawBody139_36

def rawBody139_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody139_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody139_40 : StackLang.HolProg 64 :=
.seq rawBody139_38 rawBody139_39

def rawBody139_41 : StackLang.HolProg 64 :=
.call (some (rawBody139_37, 0, 139, 2)) (Sum.inl 138) (some (rawBody139_40, 139, 3))

def rawBody139_42 : StackLang.HolProg 64 :=
.seq rawBody139_26 rawBody139_41

def rawBody139_43 : StackLang.HolProg 64 :=
.seq rawBody139_25 rawBody139_42

def rawBody139_44 : StackLang.HolProg 64 :=
.seq rawBody139_24 rawBody139_43

def rawBody139_45 : StackLang.HolProg 64 :=
.seq rawBody139_5 rawBody139_44

def rawBody139_46 : StackLang.HolProg 64 :=
.seq rawBody139_2 rawBody139_45

def rawBody139_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody139_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody139_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody139_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody139_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody139_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody139_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody139_54 : StackLang.HolProg 64 :=
.seq rawBody139_52 rawBody139_53

def rawBody139_55 : StackLang.HolProg 64 :=
.seq rawBody139_51 rawBody139_54

def rawBody139_56 : StackLang.HolProg 64 :=
.seq rawBody139_50 rawBody139_55

def rawBody139_57 : StackLang.HolProg 64 :=
.seq rawBody139_49 rawBody139_56

def rawBody139_58 : StackLang.HolProg 64 :=
.seq rawBody139_48 rawBody139_57

def rawBody139_59 : StackLang.HolProg 64 :=
.seq rawBody139_47 rawBody139_58

def rawBody139_60 : StackLang.HolProg 64 :=
.seq rawBody139_46 rawBody139_59

def rawBody139_61 : StackLang.HolProg 64 :=
.seq rawBody139_1 rawBody139_60

def rawBody139_62 : StackLang.HolProg 64 :=
.seq rawBody139_0 rawBody139_61

def raw139 : StackLang.HolProg 64 := rawBody139_62
theorem raw139_eq : StackRawCall.compTop RawInfo.rawInfo (function139 (.list [])).1 = raw139 := by
  kernel_rfl
#print axioms raw139_eq
end InitECandidate.Proofs.BackendStages
