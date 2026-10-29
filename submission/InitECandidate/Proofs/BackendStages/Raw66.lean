import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function66
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody66_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody66_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody66_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614433#64)

def rawBody66_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 2
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def rawBody66_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody66_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody66_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody66_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551608#64))

def rawBody66_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 2688614440#64)

def rawBody66_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 3
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64)

def rawBody66_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody66_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def rawBody66_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2688614448#64)

def rawBody66_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64)

def rawBody66_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.currHeap

def rawBody66_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody66_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody66_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody66_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody66_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody66_20 : StackLang.HolProg 64 :=
.seq rawBody66_18 rawBody66_19

def rawBody66_21 : StackLang.HolProg 64 :=
.seq rawBody66_17 rawBody66_20

def rawBody66_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ffi (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8])
  1 2 3 4 0

def rawBody66_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody66_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody66_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody66_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody66_27 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody66_28 : StackLang.HolProg 64 :=
.seq rawBody66_26 rawBody66_27

def rawBody66_29 : StackLang.HolProg 64 :=
.seq rawBody66_25 rawBody66_28

def rawBody66_30 : StackLang.HolProg 64 :=
.seq rawBody66_24 rawBody66_29

def rawBody66_31 : StackLang.HolProg 64 :=
.seq rawBody66_23 rawBody66_30

def rawBody66_32 : StackLang.HolProg 64 :=
.seq rawBody66_22 rawBody66_31

def rawBody66_33 : StackLang.HolProg 64 :=
.seq rawBody66_21 rawBody66_32

def rawBody66_34 : StackLang.HolProg 64 :=
.seq rawBody66_16 rawBody66_33

def rawBody66_35 : StackLang.HolProg 64 :=
.seq rawBody66_15 rawBody66_34

def rawBody66_36 : StackLang.HolProg 64 :=
.seq rawBody66_14 rawBody66_35

def rawBody66_37 : StackLang.HolProg 64 :=
.seq rawBody66_13 rawBody66_36

def rawBody66_38 : StackLang.HolProg 64 :=
.seq rawBody66_12 rawBody66_37

def rawBody66_39 : StackLang.HolProg 64 :=
.seq rawBody66_11 rawBody66_38

def rawBody66_40 : StackLang.HolProg 64 :=
.seq rawBody66_10 rawBody66_39

def rawBody66_41 : StackLang.HolProg 64 :=
.seq rawBody66_9 rawBody66_40

def rawBody66_42 : StackLang.HolProg 64 :=
.seq rawBody66_8 rawBody66_41

def rawBody66_43 : StackLang.HolProg 64 :=
.seq rawBody66_7 rawBody66_42

def rawBody66_44 : StackLang.HolProg 64 :=
.seq rawBody66_6 rawBody66_43

def rawBody66_45 : StackLang.HolProg 64 :=
.seq rawBody66_5 rawBody66_44

def rawBody66_46 : StackLang.HolProg 64 :=
.seq rawBody66_4 rawBody66_45

def rawBody66_47 : StackLang.HolProg 64 :=
.seq rawBody66_3 rawBody66_46

def rawBody66_48 : StackLang.HolProg 64 :=
.seq rawBody66_2 rawBody66_47

def rawBody66_49 : StackLang.HolProg 64 :=
.seq rawBody66_1 rawBody66_48

def rawBody66_50 : StackLang.HolProg 64 :=
.seq rawBody66_0 rawBody66_49

def raw66 : StackLang.HolProg 64 := rawBody66_50
theorem raw66_eq : StackRawCall.compTop RawInfo.rawInfo (function66 (.list [])).1 = raw66 := by
  kernel_rfl
#print axioms raw66_eq
end InitECandidate.Proofs.BackendStages
