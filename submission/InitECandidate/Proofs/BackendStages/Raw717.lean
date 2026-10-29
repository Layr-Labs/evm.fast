import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function717
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody717_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody717_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody717_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def rawBody717_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def rawBody717_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def rawBody717_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def rawBody717_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody717_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def rawBody717_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody717_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody717_10 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def rawBody717_11 : StackLang.HolProg 64 :=
.seq rawBody717_9 rawBody717_10

def rawBody717_12 : StackLang.HolProg 64 :=
.seq rawBody717_8 rawBody717_11

def rawBody717_13 : StackLang.HolProg 64 :=
.seq rawBody717_7 rawBody717_12

def rawBody717_14 : StackLang.HolProg 64 :=
.seq rawBody717_6 rawBody717_13

def rawBody717_15 : StackLang.HolProg 64 :=
.seq rawBody717_5 rawBody717_14

def rawBody717_16 : StackLang.HolProg 64 :=
.seq rawBody717_4 rawBody717_15

def rawBody717_17 : StackLang.HolProg 64 :=
.seq rawBody717_3 rawBody717_16

def rawBody717_18 : StackLang.HolProg 64 :=
.seq rawBody717_2 rawBody717_17

def rawBody717_19 : StackLang.HolProg 64 :=
.seq rawBody717_1 rawBody717_18

def rawBody717_20 : StackLang.HolProg 64 :=
.seq rawBody717_0 rawBody717_19

def raw717 : StackLang.HolProg 64 := rawBody717_20
theorem raw717_eq : StackRawCall.compTop RawInfo.rawInfo (function717 (.list [])).1 = raw717 := by
  kernel_rfl
#print axioms raw717_eq
end InitECandidate.Proofs.BackendStages
