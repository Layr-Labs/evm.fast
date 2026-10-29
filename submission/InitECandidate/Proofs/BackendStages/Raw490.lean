import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function490
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody490_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody490_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody490_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody490_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody490_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody490_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody490_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody490_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody490_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody490_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody490_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody490_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody490_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody490_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody490_14 : StackLang.HolProg 64 :=
.seq rawBody490_12 rawBody490_13

def rawBody490_15 : StackLang.HolProg 64 :=
.seq rawBody490_11 rawBody490_14

def rawBody490_16 : StackLang.HolProg 64 :=
.seq rawBody490_10 rawBody490_15

def rawBody490_17 : StackLang.HolProg 64 :=
.seq rawBody490_9 rawBody490_16

def rawBody490_18 : StackLang.HolProg 64 :=
.seq rawBody490_8 rawBody490_17

def rawBody490_19 : StackLang.HolProg 64 :=
.seq rawBody490_7 rawBody490_18

def rawBody490_20 : StackLang.HolProg 64 :=
.seq rawBody490_6 rawBody490_19

def rawBody490_21 : StackLang.HolProg 64 :=
.seq rawBody490_5 rawBody490_20

def rawBody490_22 : StackLang.HolProg 64 :=
.seq rawBody490_4 rawBody490_21

def rawBody490_23 : StackLang.HolProg 64 :=
.seq rawBody490_3 rawBody490_22

def rawBody490_24 : StackLang.HolProg 64 :=
.seq rawBody490_2 rawBody490_23

def rawBody490_25 : StackLang.HolProg 64 :=
.seq rawBody490_1 rawBody490_24

def rawBody490_26 : StackLang.HolProg 64 :=
.seq rawBody490_0 rawBody490_25

def raw490 : StackLang.HolProg 64 := rawBody490_26
theorem raw490_eq : StackRawCall.compTop RawInfo.rawInfo (function490 (.list [])).1 = raw490 := by
  kernel_rfl
#print axioms raw490_eq
end InitECandidate.Proofs.BackendStages
