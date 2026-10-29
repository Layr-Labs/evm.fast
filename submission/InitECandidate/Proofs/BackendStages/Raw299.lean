import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function299
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody299_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody299_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody299_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody299_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody299_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody299_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody299_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody299_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody299_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody299_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody299_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody299_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody299_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody299_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody299_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody299_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody299_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody299_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody299_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody299_19 : StackLang.HolProg 64 :=
.seq rawBody299_17 rawBody299_18

def rawBody299_20 : StackLang.HolProg 64 :=
.seq rawBody299_16 rawBody299_19

def rawBody299_21 : StackLang.HolProg 64 :=
.seq rawBody299_15 rawBody299_20

def rawBody299_22 : StackLang.HolProg 64 :=
.seq rawBody299_14 rawBody299_21

def rawBody299_23 : StackLang.HolProg 64 :=
.seq rawBody299_13 rawBody299_22

def rawBody299_24 : StackLang.HolProg 64 :=
.seq rawBody299_12 rawBody299_23

def rawBody299_25 : StackLang.HolProg 64 :=
.seq rawBody299_11 rawBody299_24

def rawBody299_26 : StackLang.HolProg 64 :=
.seq rawBody299_10 rawBody299_25

def rawBody299_27 : StackLang.HolProg 64 :=
.seq rawBody299_9 rawBody299_26

def rawBody299_28 : StackLang.HolProg 64 :=
.seq rawBody299_8 rawBody299_27

def rawBody299_29 : StackLang.HolProg 64 :=
.seq rawBody299_7 rawBody299_28

def rawBody299_30 : StackLang.HolProg 64 :=
.seq rawBody299_6 rawBody299_29

def rawBody299_31 : StackLang.HolProg 64 :=
.seq rawBody299_5 rawBody299_30

def rawBody299_32 : StackLang.HolProg 64 :=
.seq rawBody299_4 rawBody299_31

def rawBody299_33 : StackLang.HolProg 64 :=
.seq rawBody299_3 rawBody299_32

def rawBody299_34 : StackLang.HolProg 64 :=
.seq rawBody299_2 rawBody299_33

def rawBody299_35 : StackLang.HolProg 64 :=
.seq rawBody299_1 rawBody299_34

def rawBody299_36 : StackLang.HolProg 64 :=
.seq rawBody299_0 rawBody299_35

def raw299 : StackLang.HolProg 64 := rawBody299_36
theorem raw299_eq : StackRawCall.compTop RawInfo.rawInfo (function299 (.list [])).1 = raw299 := by
  kernel_rfl
#print axioms raw299_eq
end InitECandidate.Proofs.BackendStages
