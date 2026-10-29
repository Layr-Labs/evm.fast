import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function69
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody69_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody69_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody69_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody69_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody69_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody69_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551608#64))

def rawBody69_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody69_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody69_8 : StackLang.HolProg 64 :=
.seq rawBody69_6 rawBody69_7

def rawBody69_9 : StackLang.HolProg 64 :=
.seq rawBody69_5 rawBody69_8

def rawBody69_10 : StackLang.HolProg 64 :=
.seq rawBody69_4 rawBody69_9

def rawBody69_11 : StackLang.HolProg 64 :=
.seq rawBody69_3 rawBody69_10

def rawBody69_12 : StackLang.HolProg 64 :=
.seq rawBody69_2 rawBody69_11

def rawBody69_13 : StackLang.HolProg 64 :=
.seq rawBody69_1 rawBody69_12

def rawBody69_14 : StackLang.HolProg 64 :=
.seq rawBody69_0 rawBody69_13

def raw69 : StackLang.HolProg 64 := rawBody69_14
theorem raw69_eq : StackRawCall.compTop RawInfo.rawInfo (function69 (.list [])).1 = raw69 := by
  kernel_rfl
#print axioms raw69_eq
end InitECandidate.Proofs.BackendStages
