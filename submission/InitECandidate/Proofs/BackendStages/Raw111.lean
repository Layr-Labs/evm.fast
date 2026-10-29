import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function111
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody111_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody111_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody111_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody111_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody111_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody111_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody111_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody111_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody111_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody111_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody111_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody111_11 : StackLang.HolProg 64 :=
.seq rawBody111_9 rawBody111_10

def rawBody111_12 : StackLang.HolProg 64 :=
.seq rawBody111_8 rawBody111_11

def rawBody111_13 : StackLang.HolProg 64 :=
.seq rawBody111_7 rawBody111_12

def rawBody111_14 : StackLang.HolProg 64 :=
.seq rawBody111_6 rawBody111_13

def rawBody111_15 : StackLang.HolProg 64 :=
.seq rawBody111_5 rawBody111_14

def rawBody111_16 : StackLang.HolProg 64 :=
.seq rawBody111_4 rawBody111_15

def rawBody111_17 : StackLang.HolProg 64 :=
.seq rawBody111_3 rawBody111_16

def rawBody111_18 : StackLang.HolProg 64 :=
.seq rawBody111_2 rawBody111_17

def rawBody111_19 : StackLang.HolProg 64 :=
.seq rawBody111_1 rawBody111_18

def rawBody111_20 : StackLang.HolProg 64 :=
.seq rawBody111_0 rawBody111_19

def raw111 : StackLang.HolProg 64 := rawBody111_20
theorem raw111_eq : StackRawCall.compTop RawInfo.rawInfo (function111 (.list [])).1 = raw111 := by
  kernel_rfl
#print axioms raw111_eq
end InitECandidate.Proofs.BackendStages
