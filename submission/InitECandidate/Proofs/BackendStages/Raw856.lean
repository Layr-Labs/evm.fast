import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function856
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody856_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody856_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody856_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody856_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4#64)

def rawBody856_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody856_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody856_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody856_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody856_8 : StackLang.HolProg 64 :=
.seq rawBody856_6 rawBody856_7

def rawBody856_9 : StackLang.HolProg 64 :=
.seq rawBody856_5 rawBody856_8

def rawBody856_10 : StackLang.HolProg 64 :=
.seq rawBody856_4 rawBody856_9

def rawBody856_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody856_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody856_10 rawBody856_11

def rawBody856_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody856_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody856_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody856_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody856_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody856_18 : StackLang.HolProg 64 :=
.seq rawBody856_16 rawBody856_17

def rawBody856_19 : StackLang.HolProg 64 :=
.seq rawBody856_15 rawBody856_18

def rawBody856_20 : StackLang.HolProg 64 :=
.seq rawBody856_14 rawBody856_19

def rawBody856_21 : StackLang.HolProg 64 :=
.seq rawBody856_13 rawBody856_20

def rawBody856_22 : StackLang.HolProg 64 :=
.seq rawBody856_12 rawBody856_21

def rawBody856_23 : StackLang.HolProg 64 :=
.seq rawBody856_3 rawBody856_22

def rawBody856_24 : StackLang.HolProg 64 :=
.seq rawBody856_2 rawBody856_23

def rawBody856_25 : StackLang.HolProg 64 :=
.seq rawBody856_1 rawBody856_24

def rawBody856_26 : StackLang.HolProg 64 :=
.seq rawBody856_0 rawBody856_25

def raw856 : StackLang.HolProg 64 := rawBody856_26
theorem raw856_eq : StackRawCall.compTop RawInfo.rawInfo (function856 (.list [])).1 = raw856 := by
  kernel_rfl
#print axioms raw856_eq
end InitECandidate.Proofs.BackendStages
