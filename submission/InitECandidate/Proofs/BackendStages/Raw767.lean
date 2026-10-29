import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function767
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody767_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody767_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody767_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 96#64))

def rawBody767_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody767_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 104#64))

def rawBody767_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody767_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 112#64))

def rawBody767_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody767_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 120#64))

def rawBody767_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody767_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 128#64))

def rawBody767_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody767_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 136#64))

def rawBody767_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody767_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody767_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 705) none

def rawBody767_16 : StackLang.HolProg 64 :=
.seq rawBody767_14 rawBody767_15

def rawBody767_17 : StackLang.HolProg 64 :=
.seq rawBody767_13 rawBody767_16

def rawBody767_18 : StackLang.HolProg 64 :=
.seq rawBody767_12 rawBody767_17

def rawBody767_19 : StackLang.HolProg 64 :=
.seq rawBody767_11 rawBody767_18

def rawBody767_20 : StackLang.HolProg 64 :=
.seq rawBody767_10 rawBody767_19

def rawBody767_21 : StackLang.HolProg 64 :=
.seq rawBody767_9 rawBody767_20

def rawBody767_22 : StackLang.HolProg 64 :=
.seq rawBody767_8 rawBody767_21

def rawBody767_23 : StackLang.HolProg 64 :=
.seq rawBody767_7 rawBody767_22

def rawBody767_24 : StackLang.HolProg 64 :=
.seq rawBody767_6 rawBody767_23

def rawBody767_25 : StackLang.HolProg 64 :=
.seq rawBody767_5 rawBody767_24

def rawBody767_26 : StackLang.HolProg 64 :=
.seq rawBody767_4 rawBody767_25

def rawBody767_27 : StackLang.HolProg 64 :=
.seq rawBody767_3 rawBody767_26

def rawBody767_28 : StackLang.HolProg 64 :=
.seq rawBody767_2 rawBody767_27

def rawBody767_29 : StackLang.HolProg 64 :=
.seq rawBody767_1 rawBody767_28

def rawBody767_30 : StackLang.HolProg 64 :=
.seq rawBody767_0 rawBody767_29

def raw767 : StackLang.HolProg 64 := rawBody767_30
theorem raw767_eq : StackRawCall.compTop RawInfo.rawInfo (function767 (.list [])).1 = raw767 := by
  kernel_rfl
#print axioms raw767_eq
end InitECandidate.Proofs.BackendStages
