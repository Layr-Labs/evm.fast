import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function572
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody572_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody572_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody572_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody572_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody572_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody572_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody572_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody572_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody572_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody572_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody572_10 : StackLang.HolProg 64 :=
.seq rawBody572_8 rawBody572_9

def rawBody572_11 : StackLang.HolProg 64 :=
.seq rawBody572_7 rawBody572_10

def rawBody572_12 : StackLang.HolProg 64 :=
.seq rawBody572_6 rawBody572_11

def rawBody572_13 : StackLang.HolProg 64 :=
.seq rawBody572_5 rawBody572_12

def rawBody572_14 : StackLang.HolProg 64 :=
.seq rawBody572_4 rawBody572_13

def rawBody572_15 : StackLang.HolProg 64 :=
.seq rawBody572_3 rawBody572_14

def rawBody572_16 : StackLang.HolProg 64 :=
.seq rawBody572_2 rawBody572_15

def rawBody572_17 : StackLang.HolProg 64 :=
.seq rawBody572_1 rawBody572_16

def rawBody572_18 : StackLang.HolProg 64 :=
.seq rawBody572_0 rawBody572_17

def raw572 : StackLang.HolProg 64 := rawBody572_18
theorem raw572_eq : StackRawCall.compTop RawInfo.rawInfo (function572 (.list [])).1 = raw572 := by
  kernel_rfl
#print axioms raw572_eq
end InitECandidate.Proofs.BackendStages
