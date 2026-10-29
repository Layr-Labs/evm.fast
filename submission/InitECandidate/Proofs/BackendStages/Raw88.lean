import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function88
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody88_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody88_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody88_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody88_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody88_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody88_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody88_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody88_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody88_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody88_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody88_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody88_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody88_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody88_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody88_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody88_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody88_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody88_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody88_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody88_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody88_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody88_21 : StackLang.HolProg 64 :=
.seq rawBody88_19 rawBody88_20

def rawBody88_22 : StackLang.HolProg 64 :=
.seq rawBody88_18 rawBody88_21

def rawBody88_23 : StackLang.HolProg 64 :=
.seq rawBody88_17 rawBody88_22

def rawBody88_24 : StackLang.HolProg 64 :=
.seq rawBody88_16 rawBody88_23

def rawBody88_25 : StackLang.HolProg 64 :=
.seq rawBody88_15 rawBody88_24

def rawBody88_26 : StackLang.HolProg 64 :=
.seq rawBody88_14 rawBody88_25

def rawBody88_27 : StackLang.HolProg 64 :=
.seq rawBody88_13 rawBody88_26

def rawBody88_28 : StackLang.HolProg 64 :=
.seq rawBody88_12 rawBody88_27

def rawBody88_29 : StackLang.HolProg 64 :=
.seq rawBody88_11 rawBody88_28

def rawBody88_30 : StackLang.HolProg 64 :=
.seq rawBody88_10 rawBody88_29

def rawBody88_31 : StackLang.HolProg 64 :=
.seq rawBody88_9 rawBody88_30

def rawBody88_32 : StackLang.HolProg 64 :=
.seq rawBody88_8 rawBody88_31

def rawBody88_33 : StackLang.HolProg 64 :=
.seq rawBody88_7 rawBody88_32

def rawBody88_34 : StackLang.HolProg 64 :=
.seq rawBody88_6 rawBody88_33

def rawBody88_35 : StackLang.HolProg 64 :=
.seq rawBody88_5 rawBody88_34

def rawBody88_36 : StackLang.HolProg 64 :=
.seq rawBody88_4 rawBody88_35

def rawBody88_37 : StackLang.HolProg 64 :=
.seq rawBody88_3 rawBody88_36

def rawBody88_38 : StackLang.HolProg 64 :=
.seq rawBody88_2 rawBody88_37

def rawBody88_39 : StackLang.HolProg 64 :=
.seq rawBody88_1 rawBody88_38

def rawBody88_40 : StackLang.HolProg 64 :=
.seq rawBody88_0 rawBody88_39

def raw88 : StackLang.HolProg 64 := rawBody88_40
theorem raw88_eq : StackRawCall.compTop RawInfo.rawInfo (function88 (.list [])).1 = raw88 := by
  kernel_rfl
#print axioms raw88_eq
end InitECandidate.Proofs.BackendStages
