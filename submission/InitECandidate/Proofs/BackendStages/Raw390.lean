import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function390
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody390_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody390_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody390_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody390_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody390_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody390_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def rawBody390_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody390_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody390_8 : StackLang.HolProg 64 :=
.seq rawBody390_6 rawBody390_7

def rawBody390_9 : StackLang.HolProg 64 :=
.seq rawBody390_5 rawBody390_8

def rawBody390_10 : StackLang.HolProg 64 :=
.seq rawBody390_4 rawBody390_9

def rawBody390_11 : StackLang.HolProg 64 :=
.seq rawBody390_3 rawBody390_10

def rawBody390_12 : StackLang.HolProg 64 :=
.seq rawBody390_2 rawBody390_11

def rawBody390_13 : StackLang.HolProg 64 :=
.seq rawBody390_1 rawBody390_12

def rawBody390_14 : StackLang.HolProg 64 :=
.seq rawBody390_0 rawBody390_13

def raw390 : StackLang.HolProg 64 := rawBody390_14
theorem raw390_eq : StackRawCall.compTop RawInfo.rawInfo (function390 (.list [])).1 = raw390 := by
  kernel_rfl
#print axioms raw390_eq
end InitECandidate.Proofs.BackendStages
