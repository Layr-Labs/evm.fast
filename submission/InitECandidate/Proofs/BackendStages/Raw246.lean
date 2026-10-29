import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function246
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody246_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody246_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody246_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def rawBody246_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1073741840#64)

def rawBody246_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody246_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.load 2
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64)

def rawBody246_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody246_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody246_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody246_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody246_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody246_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def rawBody246_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody246_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody246_14 : StackLang.HolProg 64 :=
.seq rawBody246_12 rawBody246_13

def rawBody246_15 : StackLang.HolProg 64 :=
.seq rawBody246_11 rawBody246_14

def rawBody246_16 : StackLang.HolProg 64 :=
.seq rawBody246_10 rawBody246_15

def rawBody246_17 : StackLang.HolProg 64 :=
.seq rawBody246_9 rawBody246_16

def rawBody246_18 : StackLang.HolProg 64 :=
.seq rawBody246_8 rawBody246_17

def rawBody246_19 : StackLang.HolProg 64 :=
.seq rawBody246_7 rawBody246_18

def rawBody246_20 : StackLang.HolProg 64 :=
.seq rawBody246_6 rawBody246_19

def rawBody246_21 : StackLang.HolProg 64 :=
.seq rawBody246_5 rawBody246_20

def rawBody246_22 : StackLang.HolProg 64 :=
.seq rawBody246_4 rawBody246_21

def rawBody246_23 : StackLang.HolProg 64 :=
.seq rawBody246_3 rawBody246_22

def rawBody246_24 : StackLang.HolProg 64 :=
.seq rawBody246_2 rawBody246_23

def rawBody246_25 : StackLang.HolProg 64 :=
.seq rawBody246_1 rawBody246_24

def rawBody246_26 : StackLang.HolProg 64 :=
.seq rawBody246_0 rawBody246_25

def raw246 : StackLang.HolProg 64 := rawBody246_26
theorem raw246_eq : StackRawCall.compTop RawInfo.rawInfo (function246 (.list [])).1 = raw246 := by
  kernel_rfl
#print axioms raw246_eq
end InitECandidate.Proofs.BackendStages
