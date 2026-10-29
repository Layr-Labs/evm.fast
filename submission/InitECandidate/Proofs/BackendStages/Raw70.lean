import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function70
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody70_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody70_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody70_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody70_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody70_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody70_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def rawBody70_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody70_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody70_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody70_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody70_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody70_11 : StackLang.HolProg 64 :=
.seq rawBody70_9 rawBody70_10

def rawBody70_12 : StackLang.HolProg 64 :=
.seq rawBody70_8 rawBody70_11

def rawBody70_13 : StackLang.HolProg 64 :=
.seq rawBody70_7 rawBody70_12

def rawBody70_14 : StackLang.HolProg 64 :=
.seq rawBody70_6 rawBody70_13

def rawBody70_15 : StackLang.HolProg 64 :=
.seq rawBody70_5 rawBody70_14

def rawBody70_16 : StackLang.HolProg 64 :=
.seq rawBody70_4 rawBody70_15

def rawBody70_17 : StackLang.HolProg 64 :=
.seq rawBody70_3 rawBody70_16

def rawBody70_18 : StackLang.HolProg 64 :=
.seq rawBody70_2 rawBody70_17

def rawBody70_19 : StackLang.HolProg 64 :=
.seq rawBody70_1 rawBody70_18

def rawBody70_20 : StackLang.HolProg 64 :=
.seq rawBody70_0 rawBody70_19

def raw70 : StackLang.HolProg 64 := rawBody70_20
theorem raw70_eq : StackRawCall.compTop RawInfo.rawInfo (function70 (.list [])).1 = raw70 := by
  kernel_rfl
#print axioms raw70_eq
end InitECandidate.Proofs.BackendStages
