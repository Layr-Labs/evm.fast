import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function491
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody491_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody491_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody491_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody491_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody491_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody491_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody491_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody491_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody491_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody491_9 : StackLang.HolProg 64 :=
.seq rawBody491_7 rawBody491_8

def rawBody491_10 : StackLang.HolProg 64 :=
.seq rawBody491_6 rawBody491_9

def rawBody491_11 : StackLang.HolProg 64 :=
.seq rawBody491_5 rawBody491_10

def rawBody491_12 : StackLang.HolProg 64 :=
.seq rawBody491_4 rawBody491_11

def rawBody491_13 : StackLang.HolProg 64 :=
.seq rawBody491_3 rawBody491_12

def rawBody491_14 : StackLang.HolProg 64 :=
.seq rawBody491_2 rawBody491_13

def rawBody491_15 : StackLang.HolProg 64 :=
.seq rawBody491_1 rawBody491_14

def rawBody491_16 : StackLang.HolProg 64 :=
.seq rawBody491_0 rawBody491_15

def raw491 : StackLang.HolProg 64 := rawBody491_16
theorem raw491_eq : StackRawCall.compTop RawInfo.rawInfo (function491 (.list [])).1 = raw491 := by
  kernel_rfl
#print axioms raw491_eq
end InitECandidate.Proofs.BackendStages
