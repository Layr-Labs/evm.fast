import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function469
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody469_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody469_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody469_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody469_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody469_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody469_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody469_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 64#64))

def rawBody469_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody469_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody469_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def rawBody469_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody469_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody469_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody469_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody469_14 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody469_15 : StackLang.HolProg 64 :=
.seq rawBody469_13 rawBody469_14

def rawBody469_16 : StackLang.HolProg 64 :=
.seq rawBody469_12 rawBody469_15

def rawBody469_17 : StackLang.HolProg 64 :=
.seq rawBody469_11 rawBody469_16

def rawBody469_18 : StackLang.HolProg 64 :=
.seq rawBody469_10 rawBody469_17

def rawBody469_19 : StackLang.HolProg 64 :=
.seq rawBody469_9 rawBody469_18

def rawBody469_20 : StackLang.HolProg 64 :=
.seq rawBody469_8 rawBody469_19

def rawBody469_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody469_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody469_20 rawBody469_21

def rawBody469_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody469_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody469_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody469_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody469_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody469_28 : StackLang.HolProg 64 :=
.seq rawBody469_26 rawBody469_27

def rawBody469_29 : StackLang.HolProg 64 :=
.seq rawBody469_25 rawBody469_28

def rawBody469_30 : StackLang.HolProg 64 :=
.seq rawBody469_24 rawBody469_29

def rawBody469_31 : StackLang.HolProg 64 :=
.seq rawBody469_23 rawBody469_30

def rawBody469_32 : StackLang.HolProg 64 :=
.seq rawBody469_22 rawBody469_31

def rawBody469_33 : StackLang.HolProg 64 :=
.seq rawBody469_7 rawBody469_32

def rawBody469_34 : StackLang.HolProg 64 :=
.seq rawBody469_6 rawBody469_33

def rawBody469_35 : StackLang.HolProg 64 :=
.seq rawBody469_5 rawBody469_34

def rawBody469_36 : StackLang.HolProg 64 :=
.seq rawBody469_4 rawBody469_35

def rawBody469_37 : StackLang.HolProg 64 :=
.seq rawBody469_3 rawBody469_36

def rawBody469_38 : StackLang.HolProg 64 :=
.seq rawBody469_2 rawBody469_37

def rawBody469_39 : StackLang.HolProg 64 :=
.seq rawBody469_1 rawBody469_38

def rawBody469_40 : StackLang.HolProg 64 :=
.seq rawBody469_0 rawBody469_39

def raw469 : StackLang.HolProg 64 := rawBody469_40
theorem raw469_eq : StackRawCall.compTop RawInfo.rawInfo (function469 (.list [])).1 = raw469 := by
  kernel_rfl
#print axioms raw469_eq
end InitECandidate.Proofs.BackendStages
