import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw474
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody474_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody474_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody474_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody474_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody474_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody474_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 112#64))

def AllocBody474_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody474_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 192#64))

def AllocBody474_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def AllocBody474_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody474_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody474_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody474_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def AllocBody474_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def AllocBody474_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody474_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody474_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody474_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody474_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody474_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody474_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody474_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody474_32 : StackLang.HolProg 64 :=
.seq AllocBody474_30 AllocBody474_31

def AllocBody474_33 : StackLang.HolProg 64 :=
.seq AllocBody474_29 AllocBody474_32

def AllocBody474_34 : StackLang.HolProg 64 :=
.seq AllocBody474_28 AllocBody474_33

def AllocBody474_35 : StackLang.HolProg 64 :=
.seq AllocBody474_27 AllocBody474_34

def AllocBody474_36 : StackLang.HolProg 64 :=
.seq AllocBody474_26 AllocBody474_35

def AllocBody474_37 : StackLang.HolProg 64 :=
.seq AllocBody474_25 AllocBody474_36

def AllocBody474_38 : StackLang.HolProg 64 :=
.seq AllocBody474_24 AllocBody474_37

def AllocBody474_39 : StackLang.HolProg 64 :=
.seq AllocBody474_23 AllocBody474_38

def AllocBody474_40 : StackLang.HolProg 64 :=
.seq AllocBody474_22 AllocBody474_39

def AllocBody474_41 : StackLang.HolProg 64 :=
.seq AllocBody474_21 AllocBody474_40

def AllocBody474_42 : StackLang.HolProg 64 :=
.seq AllocBody474_20 AllocBody474_41

def AllocBody474_43 : StackLang.HolProg 64 :=
.seq AllocBody474_19 AllocBody474_42

def AllocBody474_44 : StackLang.HolProg 64 :=
.seq AllocBody474_18 AllocBody474_43

def AllocBody474_45 : StackLang.HolProg 64 :=
.seq AllocBody474_17 AllocBody474_44

def AllocBody474_46 : StackLang.HolProg 64 :=
.seq AllocBody474_16 AllocBody474_45

def AllocBody474_47 : StackLang.HolProg 64 :=
.seq AllocBody474_15 AllocBody474_46

def AllocBody474_48 : StackLang.HolProg 64 :=
.seq AllocBody474_14 AllocBody474_47

def AllocBody474_49 : StackLang.HolProg 64 :=
.seq AllocBody474_13 AllocBody474_48

def AllocBody474_50 : StackLang.HolProg 64 :=
.seq AllocBody474_12 AllocBody474_49

def AllocBody474_51 : StackLang.HolProg 64 :=
.seq AllocBody474_11 AllocBody474_50

def AllocBody474_52 : StackLang.HolProg 64 :=
.seq AllocBody474_10 AllocBody474_51

def AllocBody474_53 : StackLang.HolProg 64 :=
.seq AllocBody474_9 AllocBody474_52

def AllocBody474_54 : StackLang.HolProg 64 :=
.seq AllocBody474_8 AllocBody474_53

def AllocBody474_55 : StackLang.HolProg 64 :=
.seq AllocBody474_7 AllocBody474_54

def AllocBody474_56 : StackLang.HolProg 64 :=
.seq AllocBody474_6 AllocBody474_55

def AllocBody474_57 : StackLang.HolProg 64 :=
.seq AllocBody474_5 AllocBody474_56

def AllocBody474_58 : StackLang.HolProg 64 :=
.seq AllocBody474_4 AllocBody474_57

def AllocBody474_59 : StackLang.HolProg 64 :=
.seq AllocBody474_3 AllocBody474_58

def AllocBody474_60 : StackLang.HolProg 64 :=
.seq AllocBody474_2 AllocBody474_59

def AllocBody474_61 : StackLang.HolProg 64 :=
.seq AllocBody474_1 AllocBody474_60

def AllocBody474_62 : StackLang.HolProg 64 :=
.seq AllocBody474_0 AllocBody474_61

def Alloc474 : Nat × StackLang.HolProg 64 := (474, AllocBody474_62)
theorem Alloc474_eq : StackAlloc.progComp (474, raw474) = Alloc474 := by
  kernel_rfl
#print axioms Alloc474_eq
end InitECandidate.Proofs.BackendStages
