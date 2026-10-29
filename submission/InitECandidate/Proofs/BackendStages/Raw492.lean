import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function492
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody492_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody492_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody492_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody492_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody492_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody492_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody492_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody492_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def rawBody492_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody492_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody492_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody492_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody492_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody492_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody492_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody492_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody492_16 : StackLang.HolProg 64 :=
.seq rawBody492_14 rawBody492_15

def rawBody492_17 : StackLang.HolProg 64 :=
.seq rawBody492_13 rawBody492_16

def rawBody492_18 : StackLang.HolProg 64 :=
.seq rawBody492_12 rawBody492_17

def rawBody492_19 : StackLang.HolProg 64 :=
.seq rawBody492_11 rawBody492_18

def rawBody492_20 : StackLang.HolProg 64 :=
.seq rawBody492_10 rawBody492_19

def rawBody492_21 : StackLang.HolProg 64 :=
.seq rawBody492_9 rawBody492_20

def rawBody492_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody492_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody492_21 rawBody492_22

def rawBody492_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody492_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody492_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody492_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody492_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody492_29 : StackLang.HolProg 64 :=
.seq rawBody492_27 rawBody492_28

def rawBody492_30 : StackLang.HolProg 64 :=
.seq rawBody492_26 rawBody492_29

def rawBody492_31 : StackLang.HolProg 64 :=
.seq rawBody492_25 rawBody492_30

def rawBody492_32 : StackLang.HolProg 64 :=
.seq rawBody492_24 rawBody492_31

def rawBody492_33 : StackLang.HolProg 64 :=
.seq rawBody492_23 rawBody492_32

def rawBody492_34 : StackLang.HolProg 64 :=
.seq rawBody492_8 rawBody492_33

def rawBody492_35 : StackLang.HolProg 64 :=
.seq rawBody492_7 rawBody492_34

def rawBody492_36 : StackLang.HolProg 64 :=
.seq rawBody492_6 rawBody492_35

def rawBody492_37 : StackLang.HolProg 64 :=
.seq rawBody492_5 rawBody492_36

def rawBody492_38 : StackLang.HolProg 64 :=
.seq rawBody492_4 rawBody492_37

def rawBody492_39 : StackLang.HolProg 64 :=
.seq rawBody492_3 rawBody492_38

def rawBody492_40 : StackLang.HolProg 64 :=
.seq rawBody492_2 rawBody492_39

def rawBody492_41 : StackLang.HolProg 64 :=
.seq rawBody492_1 rawBody492_40

def rawBody492_42 : StackLang.HolProg 64 :=
.seq rawBody492_0 rawBody492_41

def raw492 : StackLang.HolProg 64 := rawBody492_42
theorem raw492_eq : StackRawCall.compTop RawInfo.rawInfo (function492 (.list [])).1 = raw492 := by
  kernel_rfl
#print axioms raw492_eq
end InitECandidate.Proofs.BackendStages
