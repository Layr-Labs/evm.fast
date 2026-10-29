import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function81
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody81_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody81_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody81_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody81_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody81_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody81_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody81_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody81_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody81_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody81_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody81_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody81_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody81_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody81_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody81_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody81_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody81_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody81_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody81_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody81_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody81_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody81_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody81_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody81_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody81_24 : StackLang.HolProg 64 :=
.seq rawBody81_22 rawBody81_23

def rawBody81_25 : StackLang.HolProg 64 :=
.seq rawBody81_21 rawBody81_24

def rawBody81_26 : StackLang.HolProg 64 :=
.seq rawBody81_20 rawBody81_25

def rawBody81_27 : StackLang.HolProg 64 :=
.seq rawBody81_19 rawBody81_26

def rawBody81_28 : StackLang.HolProg 64 :=
.seq rawBody81_18 rawBody81_27

def rawBody81_29 : StackLang.HolProg 64 :=
.seq rawBody81_17 rawBody81_28

def rawBody81_30 : StackLang.HolProg 64 :=
.seq rawBody81_16 rawBody81_29

def rawBody81_31 : StackLang.HolProg 64 :=
.seq rawBody81_15 rawBody81_30

def rawBody81_32 : StackLang.HolProg 64 :=
.seq rawBody81_14 rawBody81_31

def rawBody81_33 : StackLang.HolProg 64 :=
.seq rawBody81_13 rawBody81_32

def rawBody81_34 : StackLang.HolProg 64 :=
.seq rawBody81_12 rawBody81_33

def rawBody81_35 : StackLang.HolProg 64 :=
.seq rawBody81_11 rawBody81_34

def rawBody81_36 : StackLang.HolProg 64 :=
.seq rawBody81_10 rawBody81_35

def rawBody81_37 : StackLang.HolProg 64 :=
.seq rawBody81_9 rawBody81_36

def rawBody81_38 : StackLang.HolProg 64 :=
.seq rawBody81_8 rawBody81_37

def rawBody81_39 : StackLang.HolProg 64 :=
.seq rawBody81_7 rawBody81_38

def rawBody81_40 : StackLang.HolProg 64 :=
.seq rawBody81_6 rawBody81_39

def rawBody81_41 : StackLang.HolProg 64 :=
.seq rawBody81_5 rawBody81_40

def rawBody81_42 : StackLang.HolProg 64 :=
.seq rawBody81_4 rawBody81_41

def rawBody81_43 : StackLang.HolProg 64 :=
.seq rawBody81_3 rawBody81_42

def rawBody81_44 : StackLang.HolProg 64 :=
.seq rawBody81_2 rawBody81_43

def rawBody81_45 : StackLang.HolProg 64 :=
.seq rawBody81_1 rawBody81_44

def rawBody81_46 : StackLang.HolProg 64 :=
.seq rawBody81_0 rawBody81_45

def raw81 : StackLang.HolProg 64 := rawBody81_46
theorem raw81_eq : StackRawCall.compTop RawInfo.rawInfo (function81 (.list [])).1 = raw81 := by
  kernel_rfl
#print axioms raw81_eq
end InitECandidate.Proofs.BackendStages
