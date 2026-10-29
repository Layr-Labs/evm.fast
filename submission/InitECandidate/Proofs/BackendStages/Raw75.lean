import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function75
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody75_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody75_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody75_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody75_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody75_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody75_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551592#64))

def rawBody75_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody75_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody75_8 : StackLang.HolProg 64 :=
.seq rawBody75_6 rawBody75_7

def rawBody75_9 : StackLang.HolProg 64 :=
.seq rawBody75_5 rawBody75_8

def rawBody75_10 : StackLang.HolProg 64 :=
.seq rawBody75_4 rawBody75_9

def rawBody75_11 : StackLang.HolProg 64 :=
.seq rawBody75_3 rawBody75_10

def rawBody75_12 : StackLang.HolProg 64 :=
.seq rawBody75_2 rawBody75_11

def rawBody75_13 : StackLang.HolProg 64 :=
.seq rawBody75_1 rawBody75_12

def rawBody75_14 : StackLang.HolProg 64 :=
.seq rawBody75_0 rawBody75_13

def raw75 : StackLang.HolProg 64 := rawBody75_14
theorem raw75_eq : StackRawCall.compTop RawInfo.rawInfo (function75 (.list [])).1 = raw75 := by
  kernel_rfl
#print axioms raw75_eq
end InitECandidate.Proofs.BackendStages
