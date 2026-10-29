import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function76
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody76_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody76_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody76_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody76_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody76_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody76_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def rawBody76_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody76_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody76_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody76_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody76_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody76_11 : StackLang.HolProg 64 :=
.seq rawBody76_9 rawBody76_10

def rawBody76_12 : StackLang.HolProg 64 :=
.seq rawBody76_8 rawBody76_11

def rawBody76_13 : StackLang.HolProg 64 :=
.seq rawBody76_7 rawBody76_12

def rawBody76_14 : StackLang.HolProg 64 :=
.seq rawBody76_6 rawBody76_13

def rawBody76_15 : StackLang.HolProg 64 :=
.seq rawBody76_5 rawBody76_14

def rawBody76_16 : StackLang.HolProg 64 :=
.seq rawBody76_4 rawBody76_15

def rawBody76_17 : StackLang.HolProg 64 :=
.seq rawBody76_3 rawBody76_16

def rawBody76_18 : StackLang.HolProg 64 :=
.seq rawBody76_2 rawBody76_17

def rawBody76_19 : StackLang.HolProg 64 :=
.seq rawBody76_1 rawBody76_18

def rawBody76_20 : StackLang.HolProg 64 :=
.seq rawBody76_0 rawBody76_19

def raw76 : StackLang.HolProg 64 := rawBody76_20
theorem raw76_eq : StackRawCall.compTop RawInfo.rawInfo (function76 (.list [])).1 = raw76 := by
  kernel_rfl
#print axioms raw76_eq
end InitECandidate.Proofs.BackendStages
