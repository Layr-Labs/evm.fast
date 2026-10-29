import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function73
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody73_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody73_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody73_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody73_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody73_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody73_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def rawBody73_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody73_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody73_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody73_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody73_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody73_11 : StackLang.HolProg 64 :=
.seq rawBody73_9 rawBody73_10

def rawBody73_12 : StackLang.HolProg 64 :=
.seq rawBody73_8 rawBody73_11

def rawBody73_13 : StackLang.HolProg 64 :=
.seq rawBody73_7 rawBody73_12

def rawBody73_14 : StackLang.HolProg 64 :=
.seq rawBody73_6 rawBody73_13

def rawBody73_15 : StackLang.HolProg 64 :=
.seq rawBody73_5 rawBody73_14

def rawBody73_16 : StackLang.HolProg 64 :=
.seq rawBody73_4 rawBody73_15

def rawBody73_17 : StackLang.HolProg 64 :=
.seq rawBody73_3 rawBody73_16

def rawBody73_18 : StackLang.HolProg 64 :=
.seq rawBody73_2 rawBody73_17

def rawBody73_19 : StackLang.HolProg 64 :=
.seq rawBody73_1 rawBody73_18

def rawBody73_20 : StackLang.HolProg 64 :=
.seq rawBody73_0 rawBody73_19

def raw73 : StackLang.HolProg 64 := rawBody73_20
theorem raw73_eq : StackRawCall.compTop RawInfo.rawInfo (function73 (.list [])).1 = raw73 := by
  kernel_rfl
#print axioms raw73_eq
end InitECandidate.Proofs.BackendStages
