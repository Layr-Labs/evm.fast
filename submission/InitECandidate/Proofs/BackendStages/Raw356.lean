import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function356
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody356_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody356_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody356_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 264#64))

def rawBody356_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 17#64)))

def rawBody356_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody356_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody356_6 : StackLang.HolProg 64 :=
.seq rawBody356_4 rawBody356_5

def rawBody356_7 : StackLang.HolProg 64 :=
.seq rawBody356_3 rawBody356_6

def rawBody356_8 : StackLang.HolProg 64 :=
.seq rawBody356_2 rawBody356_7

def rawBody356_9 : StackLang.HolProg 64 :=
.seq rawBody356_1 rawBody356_8

def rawBody356_10 : StackLang.HolProg 64 :=
.seq rawBody356_0 rawBody356_9

def raw356 : StackLang.HolProg 64 := rawBody356_10
theorem raw356_eq : StackRawCall.compTop RawInfo.rawInfo (function356 (.list [])).1 = raw356 := by
  kernel_rfl
#print axioms raw356_eq
end InitECandidate.Proofs.BackendStages
