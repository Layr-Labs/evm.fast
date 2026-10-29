import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function67
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody67_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody67_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody67_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody67_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody67_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody67_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def rawBody67_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.currHeap

def rawBody67_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody67_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody67_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody67_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def rawBody67_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2965299200#64)

def rawBody67_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody67_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody67_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody67_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def rawBody67_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2952790016#64)

def rawBody67_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody67_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody67_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody67_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody67_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody67_22 : StackLang.HolProg 64 :=
.seq rawBody67_20 rawBody67_21

def rawBody67_23 : StackLang.HolProg 64 :=
.seq rawBody67_19 rawBody67_22

def rawBody67_24 : StackLang.HolProg 64 :=
.seq rawBody67_18 rawBody67_23

def rawBody67_25 : StackLang.HolProg 64 :=
.seq rawBody67_17 rawBody67_24

def rawBody67_26 : StackLang.HolProg 64 :=
.seq rawBody67_16 rawBody67_25

def rawBody67_27 : StackLang.HolProg 64 :=
.seq rawBody67_15 rawBody67_26

def rawBody67_28 : StackLang.HolProg 64 :=
.seq rawBody67_14 rawBody67_27

def rawBody67_29 : StackLang.HolProg 64 :=
.seq rawBody67_13 rawBody67_28

def rawBody67_30 : StackLang.HolProg 64 :=
.seq rawBody67_12 rawBody67_29

def rawBody67_31 : StackLang.HolProg 64 :=
.seq rawBody67_11 rawBody67_30

def rawBody67_32 : StackLang.HolProg 64 :=
.seq rawBody67_10 rawBody67_31

def rawBody67_33 : StackLang.HolProg 64 :=
.seq rawBody67_9 rawBody67_32

def rawBody67_34 : StackLang.HolProg 64 :=
.seq rawBody67_8 rawBody67_33

def rawBody67_35 : StackLang.HolProg 64 :=
.seq rawBody67_7 rawBody67_34

def rawBody67_36 : StackLang.HolProg 64 :=
.seq rawBody67_6 rawBody67_35

def rawBody67_37 : StackLang.HolProg 64 :=
.seq rawBody67_5 rawBody67_36

def rawBody67_38 : StackLang.HolProg 64 :=
.seq rawBody67_4 rawBody67_37

def rawBody67_39 : StackLang.HolProg 64 :=
.seq rawBody67_3 rawBody67_38

def rawBody67_40 : StackLang.HolProg 64 :=
.seq rawBody67_2 rawBody67_39

def rawBody67_41 : StackLang.HolProg 64 :=
.seq rawBody67_1 rawBody67_40

def rawBody67_42 : StackLang.HolProg 64 :=
.seq rawBody67_0 rawBody67_41

def raw67 : StackLang.HolProg 64 := rawBody67_42
theorem raw67_eq : StackRawCall.compTop RawInfo.rawInfo (function67 (.list [])).1 = raw67 := by
  kernel_rfl
#print axioms raw67_eq
end InitECandidate.Proofs.BackendStages
