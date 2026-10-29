import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw604
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody604_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody604_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody604_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody604_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody604_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody604_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody604_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def AllocBody604_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody604_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def AllocBody604_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody604_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 184#64))

def AllocBody604_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody604_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody604_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody604_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody604_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody604_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody604_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody604_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody604_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody604_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody604_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody604_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def AllocBody604_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody604_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody604_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody604_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody604_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody604_28 : StackLang.HolProg 64 :=
.seq AllocBody604_26 AllocBody604_27

def AllocBody604_29 : StackLang.HolProg 64 :=
.seq AllocBody604_25 AllocBody604_28

def AllocBody604_30 : StackLang.HolProg 64 :=
.seq AllocBody604_24 AllocBody604_29

def AllocBody604_31 : StackLang.HolProg 64 :=
.seq AllocBody604_23 AllocBody604_30

def AllocBody604_32 : StackLang.HolProg 64 :=
.seq AllocBody604_22 AllocBody604_31

def AllocBody604_33 : StackLang.HolProg 64 :=
.seq AllocBody604_21 AllocBody604_32

def AllocBody604_34 : StackLang.HolProg 64 :=
.seq AllocBody604_20 AllocBody604_33

def AllocBody604_35 : StackLang.HolProg 64 :=
.seq AllocBody604_19 AllocBody604_34

def AllocBody604_36 : StackLang.HolProg 64 :=
.seq AllocBody604_18 AllocBody604_35

def AllocBody604_37 : StackLang.HolProg 64 :=
.seq AllocBody604_17 AllocBody604_36

def AllocBody604_38 : StackLang.HolProg 64 :=
.seq AllocBody604_16 AllocBody604_37

def AllocBody604_39 : StackLang.HolProg 64 :=
.seq AllocBody604_15 AllocBody604_38

def AllocBody604_40 : StackLang.HolProg 64 :=
.seq AllocBody604_14 AllocBody604_39

def AllocBody604_41 : StackLang.HolProg 64 :=
.seq AllocBody604_13 AllocBody604_40

def AllocBody604_42 : StackLang.HolProg 64 :=
.seq AllocBody604_12 AllocBody604_41

def AllocBody604_43 : StackLang.HolProg 64 :=
.seq AllocBody604_11 AllocBody604_42

def AllocBody604_44 : StackLang.HolProg 64 :=
.seq AllocBody604_10 AllocBody604_43

def AllocBody604_45 : StackLang.HolProg 64 :=
.seq AllocBody604_9 AllocBody604_44

def AllocBody604_46 : StackLang.HolProg 64 :=
.seq AllocBody604_8 AllocBody604_45

def AllocBody604_47 : StackLang.HolProg 64 :=
.seq AllocBody604_7 AllocBody604_46

def AllocBody604_48 : StackLang.HolProg 64 :=
.seq AllocBody604_6 AllocBody604_47

def AllocBody604_49 : StackLang.HolProg 64 :=
.seq AllocBody604_5 AllocBody604_48

def AllocBody604_50 : StackLang.HolProg 64 :=
.seq AllocBody604_4 AllocBody604_49

def AllocBody604_51 : StackLang.HolProg 64 :=
.seq AllocBody604_3 AllocBody604_50

def AllocBody604_52 : StackLang.HolProg 64 :=
.seq AllocBody604_2 AllocBody604_51

def AllocBody604_53 : StackLang.HolProg 64 :=
.seq AllocBody604_1 AllocBody604_52

def AllocBody604_54 : StackLang.HolProg 64 :=
.seq AllocBody604_0 AllocBody604_53

def Alloc604 : Nat × StackLang.HolProg 64 := (604, AllocBody604_54)
theorem Alloc604_eq : StackAlloc.progComp (604, raw604) = Alloc604 := by
  kernel_rfl
#print axioms Alloc604_eq
end InitECandidate.Proofs.BackendStages
