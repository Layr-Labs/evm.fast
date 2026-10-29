import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function354
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody354_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody354_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody354_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody354_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody354_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody354_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody354_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody354_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody354_8 : StackLang.HolProg 64 :=
.seq rawBody354_6 rawBody354_7

def rawBody354_9 : StackLang.HolProg 64 :=
.seq rawBody354_5 rawBody354_8

def rawBody354_10 : StackLang.HolProg 64 :=
.seq rawBody354_4 rawBody354_9

def rawBody354_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody354_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody354_10 rawBody354_11

def rawBody354_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody354_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody354_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody354_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody354_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody354_18 : StackLang.HolProg 64 :=
.seq rawBody354_16 rawBody354_17

def rawBody354_19 : StackLang.HolProg 64 :=
.seq rawBody354_15 rawBody354_18

def rawBody354_20 : StackLang.HolProg 64 :=
.seq rawBody354_14 rawBody354_19

def rawBody354_21 : StackLang.HolProg 64 :=
.seq rawBody354_13 rawBody354_20

def rawBody354_22 : StackLang.HolProg 64 :=
.seq rawBody354_12 rawBody354_21

def rawBody354_23 : StackLang.HolProg 64 :=
.seq rawBody354_3 rawBody354_22

def rawBody354_24 : StackLang.HolProg 64 :=
.seq rawBody354_2 rawBody354_23

def rawBody354_25 : StackLang.HolProg 64 :=
.seq rawBody354_1 rawBody354_24

def rawBody354_26 : StackLang.HolProg 64 :=
.seq rawBody354_0 rawBody354_25

def raw354 : StackLang.HolProg 64 := rawBody354_26
theorem raw354_eq : StackRawCall.compTop RawInfo.rawInfo (function354 (.list [])).1 = raw354 := by
  kernel_rfl
#print axioms raw354_eq
end InitECandidate.Proofs.BackendStages
