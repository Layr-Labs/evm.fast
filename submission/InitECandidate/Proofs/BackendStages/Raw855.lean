import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function855
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody855_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody855_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody855_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody855_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def rawBody855_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody855_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody855_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody855_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody855_8 : StackLang.HolProg 64 :=
.seq rawBody855_6 rawBody855_7

def rawBody855_9 : StackLang.HolProg 64 :=
.seq rawBody855_5 rawBody855_8

def rawBody855_10 : StackLang.HolProg 64 :=
.seq rawBody855_4 rawBody855_9

def rawBody855_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody855_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody855_10 rawBody855_11

def rawBody855_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody855_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody855_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody855_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody855_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody855_18 : StackLang.HolProg 64 :=
.seq rawBody855_16 rawBody855_17

def rawBody855_19 : StackLang.HolProg 64 :=
.seq rawBody855_15 rawBody855_18

def rawBody855_20 : StackLang.HolProg 64 :=
.seq rawBody855_14 rawBody855_19

def rawBody855_21 : StackLang.HolProg 64 :=
.seq rawBody855_13 rawBody855_20

def rawBody855_22 : StackLang.HolProg 64 :=
.seq rawBody855_12 rawBody855_21

def rawBody855_23 : StackLang.HolProg 64 :=
.seq rawBody855_3 rawBody855_22

def rawBody855_24 : StackLang.HolProg 64 :=
.seq rawBody855_2 rawBody855_23

def rawBody855_25 : StackLang.HolProg 64 :=
.seq rawBody855_1 rawBody855_24

def rawBody855_26 : StackLang.HolProg 64 :=
.seq rawBody855_0 rawBody855_25

def raw855 : StackLang.HolProg 64 := rawBody855_26
theorem raw855_eq : StackRawCall.compTop RawInfo.rawInfo (function855 (.list [])).1 = raw855 := by
  kernel_rfl
#print axioms raw855_eq
end InitECandidate.Proofs.BackendStages
