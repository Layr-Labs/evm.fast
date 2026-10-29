import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function663
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody663_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody663_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody663_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody663_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody663_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody663_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody663_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody663_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody663_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 661) none

def rawBody663_9 : StackLang.HolProg 64 :=
.seq rawBody663_7 rawBody663_8

def rawBody663_10 : StackLang.HolProg 64 :=
.seq rawBody663_6 rawBody663_9

def rawBody663_11 : StackLang.HolProg 64 :=
.seq rawBody663_5 rawBody663_10

def rawBody663_12 : StackLang.HolProg 64 :=
.seq rawBody663_4 rawBody663_11

def rawBody663_13 : StackLang.HolProg 64 :=
.seq rawBody663_3 rawBody663_12

def rawBody663_14 : StackLang.HolProg 64 :=
.seq rawBody663_2 rawBody663_13

def rawBody663_15 : StackLang.HolProg 64 :=
.seq rawBody663_1 rawBody663_14

def rawBody663_16 : StackLang.HolProg 64 :=
.seq rawBody663_0 rawBody663_15

def raw663 : StackLang.HolProg 64 := rawBody663_16
theorem raw663_eq : StackRawCall.compTop RawInfo.rawInfo (function663 (.list [])).1 = raw663 := by
  kernel_rfl
#print axioms raw663_eq
end InitECandidate.Proofs.BackendStages
