import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function326
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody326_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody326_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody326_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody326_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody326_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody326_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody326_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody326_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody326_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody326_9 : StackLang.HolProg 64 :=
.seq rawBody326_7 rawBody326_8

def rawBody326_10 : StackLang.HolProg 64 :=
.seq rawBody326_6 rawBody326_9

def rawBody326_11 : StackLang.HolProg 64 :=
.seq rawBody326_5 rawBody326_10

def rawBody326_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody326_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody326_14 : StackLang.HolProg 64 :=
.seq rawBody326_12 rawBody326_13

def rawBody326_15 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody326_11 rawBody326_14

def rawBody326_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody326_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody326_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody326_19 : StackLang.HolProg 64 :=
.call none (Sum.inl 179) none

def rawBody326_20 : StackLang.HolProg 64 :=
.seq rawBody326_18 rawBody326_19

def rawBody326_21 : StackLang.HolProg 64 :=
.seq rawBody326_17 rawBody326_20

def rawBody326_22 : StackLang.HolProg 64 :=
.seq rawBody326_16 rawBody326_21

def rawBody326_23 : StackLang.HolProg 64 :=
.seq rawBody326_15 rawBody326_22

def rawBody326_24 : StackLang.HolProg 64 :=
.seq rawBody326_4 rawBody326_23

def rawBody326_25 : StackLang.HolProg 64 :=
.seq rawBody326_3 rawBody326_24

def rawBody326_26 : StackLang.HolProg 64 :=
.seq rawBody326_2 rawBody326_25

def rawBody326_27 : StackLang.HolProg 64 :=
.seq rawBody326_1 rawBody326_26

def rawBody326_28 : StackLang.HolProg 64 :=
.seq rawBody326_0 rawBody326_27

def raw326 : StackLang.HolProg 64 := rawBody326_28
theorem raw326_eq : StackRawCall.compTop RawInfo.rawInfo (function326 (.list [])).1 = raw326 := by
  kernel_rfl
#print axioms raw326_eq
end InitECandidate.Proofs.BackendStages
