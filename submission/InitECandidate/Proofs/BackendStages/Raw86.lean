import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function86
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody86_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody86_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody86_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody86_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody86_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody86_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody86_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody86_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody86_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody86_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody86_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody86_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody86_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody86_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody86_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody86_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody86_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody86_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody86_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody86_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody86_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody86_21 : StackLang.HolProg 64 :=
.seq rawBody86_19 rawBody86_20

def rawBody86_22 : StackLang.HolProg 64 :=
.seq rawBody86_18 rawBody86_21

def rawBody86_23 : StackLang.HolProg 64 :=
.seq rawBody86_17 rawBody86_22

def rawBody86_24 : StackLang.HolProg 64 :=
.seq rawBody86_16 rawBody86_23

def rawBody86_25 : StackLang.HolProg 64 :=
.seq rawBody86_15 rawBody86_24

def rawBody86_26 : StackLang.HolProg 64 :=
.seq rawBody86_14 rawBody86_25

def rawBody86_27 : StackLang.HolProg 64 :=
.seq rawBody86_13 rawBody86_26

def rawBody86_28 : StackLang.HolProg 64 :=
.seq rawBody86_12 rawBody86_27

def rawBody86_29 : StackLang.HolProg 64 :=
.seq rawBody86_11 rawBody86_28

def rawBody86_30 : StackLang.HolProg 64 :=
.seq rawBody86_10 rawBody86_29

def rawBody86_31 : StackLang.HolProg 64 :=
.seq rawBody86_9 rawBody86_30

def rawBody86_32 : StackLang.HolProg 64 :=
.seq rawBody86_8 rawBody86_31

def rawBody86_33 : StackLang.HolProg 64 :=
.seq rawBody86_7 rawBody86_32

def rawBody86_34 : StackLang.HolProg 64 :=
.seq rawBody86_6 rawBody86_33

def rawBody86_35 : StackLang.HolProg 64 :=
.seq rawBody86_5 rawBody86_34

def rawBody86_36 : StackLang.HolProg 64 :=
.seq rawBody86_4 rawBody86_35

def rawBody86_37 : StackLang.HolProg 64 :=
.seq rawBody86_3 rawBody86_36

def rawBody86_38 : StackLang.HolProg 64 :=
.seq rawBody86_2 rawBody86_37

def rawBody86_39 : StackLang.HolProg 64 :=
.seq rawBody86_1 rawBody86_38

def rawBody86_40 : StackLang.HolProg 64 :=
.seq rawBody86_0 rawBody86_39

def raw86 : StackLang.HolProg 64 := rawBody86_40
theorem raw86_eq : StackRawCall.compTop RawInfo.rawInfo (function86 (.list [])).1 = raw86 := by
  kernel_rfl
#print axioms raw86_eq
end InitECandidate.Proofs.BackendStages
