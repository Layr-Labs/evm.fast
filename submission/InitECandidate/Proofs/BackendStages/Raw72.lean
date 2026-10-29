import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function72
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody72_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody72_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody72_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody72_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody72_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody72_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551584#64))

def rawBody72_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody72_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody72_8 : StackLang.HolProg 64 :=
.seq rawBody72_6 rawBody72_7

def rawBody72_9 : StackLang.HolProg 64 :=
.seq rawBody72_5 rawBody72_8

def rawBody72_10 : StackLang.HolProg 64 :=
.seq rawBody72_4 rawBody72_9

def rawBody72_11 : StackLang.HolProg 64 :=
.seq rawBody72_3 rawBody72_10

def rawBody72_12 : StackLang.HolProg 64 :=
.seq rawBody72_2 rawBody72_11

def rawBody72_13 : StackLang.HolProg 64 :=
.seq rawBody72_1 rawBody72_12

def rawBody72_14 : StackLang.HolProg 64 :=
.seq rawBody72_0 rawBody72_13

def raw72 : StackLang.HolProg 64 := rawBody72_14
theorem raw72_eq : StackRawCall.compTop RawInfo.rawInfo (function72 (.list [])).1 = raw72 := by
  kernel_rfl
#print axioms raw72_eq
end InitECandidate.Proofs.BackendStages
