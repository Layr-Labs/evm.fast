import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw470
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody470_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody470_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody470_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody470_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody470_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody470_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def AllocBody470_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody470_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody470_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody470_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody470_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody470_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_14 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody470_15 : StackLang.HolProg 64 :=
.seq AllocBody470_13 AllocBody470_14

def AllocBody470_16 : StackLang.HolProg 64 :=
.seq AllocBody470_12 AllocBody470_15

def AllocBody470_17 : StackLang.HolProg 64 :=
.seq AllocBody470_11 AllocBody470_16

def AllocBody470_18 : StackLang.HolProg 64 :=
.seq AllocBody470_10 AllocBody470_17

def AllocBody470_19 : StackLang.HolProg 64 :=
.seq AllocBody470_9 AllocBody470_18

def AllocBody470_20 : StackLang.HolProg 64 :=
.seq AllocBody470_8 AllocBody470_19

def AllocBody470_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody470_20 AllocBody470_21

def AllocBody470_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody470_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody470_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody470_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody470_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody470_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody470_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def AllocBody470_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def AllocBody470_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody470_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody470_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody470_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody470_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody470_42 : StackLang.HolProg 64 :=
.seq AllocBody470_40 AllocBody470_41

def AllocBody470_43 : StackLang.HolProg 64 :=
.seq AllocBody470_39 AllocBody470_42

def AllocBody470_44 : StackLang.HolProg 64 :=
.seq AllocBody470_38 AllocBody470_43

def AllocBody470_45 : StackLang.HolProg 64 :=
.seq AllocBody470_37 AllocBody470_44

def AllocBody470_46 : StackLang.HolProg 64 :=
.seq AllocBody470_36 AllocBody470_45

def AllocBody470_47 : StackLang.HolProg 64 :=
.seq AllocBody470_35 AllocBody470_46

def AllocBody470_48 : StackLang.HolProg 64 :=
.seq AllocBody470_34 AllocBody470_47

def AllocBody470_49 : StackLang.HolProg 64 :=
.seq AllocBody470_33 AllocBody470_48

def AllocBody470_50 : StackLang.HolProg 64 :=
.seq AllocBody470_32 AllocBody470_49

def AllocBody470_51 : StackLang.HolProg 64 :=
.seq AllocBody470_31 AllocBody470_50

def AllocBody470_52 : StackLang.HolProg 64 :=
.seq AllocBody470_30 AllocBody470_51

def AllocBody470_53 : StackLang.HolProg 64 :=
.seq AllocBody470_29 AllocBody470_52

def AllocBody470_54 : StackLang.HolProg 64 :=
.seq AllocBody470_28 AllocBody470_53

def AllocBody470_55 : StackLang.HolProg 64 :=
.seq AllocBody470_27 AllocBody470_54

def AllocBody470_56 : StackLang.HolProg 64 :=
.seq AllocBody470_26 AllocBody470_55

def AllocBody470_57 : StackLang.HolProg 64 :=
.seq AllocBody470_25 AllocBody470_56

def AllocBody470_58 : StackLang.HolProg 64 :=
.seq AllocBody470_24 AllocBody470_57

def AllocBody470_59 : StackLang.HolProg 64 :=
.seq AllocBody470_23 AllocBody470_58

def AllocBody470_60 : StackLang.HolProg 64 :=
.seq AllocBody470_22 AllocBody470_59

def AllocBody470_61 : StackLang.HolProg 64 :=
.seq AllocBody470_7 AllocBody470_60

def AllocBody470_62 : StackLang.HolProg 64 :=
.seq AllocBody470_6 AllocBody470_61

def AllocBody470_63 : StackLang.HolProg 64 :=
.seq AllocBody470_5 AllocBody470_62

def AllocBody470_64 : StackLang.HolProg 64 :=
.seq AllocBody470_4 AllocBody470_63

def AllocBody470_65 : StackLang.HolProg 64 :=
.seq AllocBody470_3 AllocBody470_64

def AllocBody470_66 : StackLang.HolProg 64 :=
.seq AllocBody470_2 AllocBody470_65

def AllocBody470_67 : StackLang.HolProg 64 :=
.seq AllocBody470_1 AllocBody470_66

def AllocBody470_68 : StackLang.HolProg 64 :=
.seq AllocBody470_0 AllocBody470_67

def Alloc470 : Nat × StackLang.HolProg 64 := (470, AllocBody470_68)
theorem Alloc470_eq : StackAlloc.progComp (470, raw470) = Alloc470 := by
  kernel_rfl
#print axioms Alloc470_eq
end InitECandidate.Proofs.BackendStages
