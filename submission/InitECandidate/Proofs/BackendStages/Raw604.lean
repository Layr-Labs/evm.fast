import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function604
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody604_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody604_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody604_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody604_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody604_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody604_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody604_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def rawBody604_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody604_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def rawBody604_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody604_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 184#64))

def rawBody604_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody604_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody604_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody604_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody604_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody604_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody604_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody604_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody604_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody604_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody604_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody604_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def rawBody604_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody604_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody604_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody604_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody604_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody604_28 : StackLang.HolProg 64 :=
.seq rawBody604_26 rawBody604_27

def rawBody604_29 : StackLang.HolProg 64 :=
.seq rawBody604_25 rawBody604_28

def rawBody604_30 : StackLang.HolProg 64 :=
.seq rawBody604_24 rawBody604_29

def rawBody604_31 : StackLang.HolProg 64 :=
.seq rawBody604_23 rawBody604_30

def rawBody604_32 : StackLang.HolProg 64 :=
.seq rawBody604_22 rawBody604_31

def rawBody604_33 : StackLang.HolProg 64 :=
.seq rawBody604_21 rawBody604_32

def rawBody604_34 : StackLang.HolProg 64 :=
.seq rawBody604_20 rawBody604_33

def rawBody604_35 : StackLang.HolProg 64 :=
.seq rawBody604_19 rawBody604_34

def rawBody604_36 : StackLang.HolProg 64 :=
.seq rawBody604_18 rawBody604_35

def rawBody604_37 : StackLang.HolProg 64 :=
.seq rawBody604_17 rawBody604_36

def rawBody604_38 : StackLang.HolProg 64 :=
.seq rawBody604_16 rawBody604_37

def rawBody604_39 : StackLang.HolProg 64 :=
.seq rawBody604_15 rawBody604_38

def rawBody604_40 : StackLang.HolProg 64 :=
.seq rawBody604_14 rawBody604_39

def rawBody604_41 : StackLang.HolProg 64 :=
.seq rawBody604_13 rawBody604_40

def rawBody604_42 : StackLang.HolProg 64 :=
.seq rawBody604_12 rawBody604_41

def rawBody604_43 : StackLang.HolProg 64 :=
.seq rawBody604_11 rawBody604_42

def rawBody604_44 : StackLang.HolProg 64 :=
.seq rawBody604_10 rawBody604_43

def rawBody604_45 : StackLang.HolProg 64 :=
.seq rawBody604_9 rawBody604_44

def rawBody604_46 : StackLang.HolProg 64 :=
.seq rawBody604_8 rawBody604_45

def rawBody604_47 : StackLang.HolProg 64 :=
.seq rawBody604_7 rawBody604_46

def rawBody604_48 : StackLang.HolProg 64 :=
.seq rawBody604_6 rawBody604_47

def rawBody604_49 : StackLang.HolProg 64 :=
.seq rawBody604_5 rawBody604_48

def rawBody604_50 : StackLang.HolProg 64 :=
.seq rawBody604_4 rawBody604_49

def rawBody604_51 : StackLang.HolProg 64 :=
.seq rawBody604_3 rawBody604_50

def rawBody604_52 : StackLang.HolProg 64 :=
.seq rawBody604_2 rawBody604_51

def rawBody604_53 : StackLang.HolProg 64 :=
.seq rawBody604_1 rawBody604_52

def rawBody604_54 : StackLang.HolProg 64 :=
.seq rawBody604_0 rawBody604_53

def raw604 : StackLang.HolProg 64 := rawBody604_54
theorem raw604_eq : StackRawCall.compTop RawInfo.rawInfo (function604 (.list [])).1 = raw604 := by
  kernel_rfl
#print axioms raw604_eq
end InitECandidate.Proofs.BackendStages
