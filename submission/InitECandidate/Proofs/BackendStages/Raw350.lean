import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function350
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody350_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody350_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody350_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 160#64))

def rawBody350_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody350_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def rawBody350_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody350_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 176#64))

def rawBody350_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody350_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def rawBody350_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody350_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody350_11 : StackLang.HolProg 64 :=
.seq rawBody350_9 rawBody350_10

def rawBody350_12 : StackLang.HolProg 64 :=
.seq rawBody350_8 rawBody350_11

def rawBody350_13 : StackLang.HolProg 64 :=
.seq rawBody350_7 rawBody350_12

def rawBody350_14 : StackLang.HolProg 64 :=
.seq rawBody350_6 rawBody350_13

def rawBody350_15 : StackLang.HolProg 64 :=
.seq rawBody350_5 rawBody350_14

def rawBody350_16 : StackLang.HolProg 64 :=
.seq rawBody350_4 rawBody350_15

def rawBody350_17 : StackLang.HolProg 64 :=
.seq rawBody350_3 rawBody350_16

def rawBody350_18 : StackLang.HolProg 64 :=
.seq rawBody350_2 rawBody350_17

def rawBody350_19 : StackLang.HolProg 64 :=
.seq rawBody350_1 rawBody350_18

def rawBody350_20 : StackLang.HolProg 64 :=
.seq rawBody350_0 rawBody350_19

def raw350 : StackLang.HolProg 64 := rawBody350_20
theorem raw350_eq : StackRawCall.compTop RawInfo.rawInfo (function350 (.list [])).1 = raw350 := by
  kernel_rfl
#print axioms raw350_eq
end InitECandidate.Proofs.BackendStages
