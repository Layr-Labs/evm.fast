import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw434
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody434_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody434_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody434_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody434_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody434_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551440#64))

def AllocBody434_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 56#64))

def AllocBody434_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody434_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody434_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def AllocBody434_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody434_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody434_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551440#64))

def AllocBody434_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody434_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody434_19 : StackLang.HolProg 64 :=
.seq AllocBody434_17 AllocBody434_18

def AllocBody434_20 : StackLang.HolProg 64 :=
.seq AllocBody434_16 AllocBody434_19

def AllocBody434_21 : StackLang.HolProg 64 :=
.seq AllocBody434_15 AllocBody434_20

def AllocBody434_22 : StackLang.HolProg 64 :=
.seq AllocBody434_14 AllocBody434_21

def AllocBody434_23 : StackLang.HolProg 64 :=
.seq AllocBody434_13 AllocBody434_22

def AllocBody434_24 : StackLang.HolProg 64 :=
.seq AllocBody434_12 AllocBody434_23

def AllocBody434_25 : StackLang.HolProg 64 :=
.seq AllocBody434_11 AllocBody434_24

def AllocBody434_26 : StackLang.HolProg 64 :=
.seq AllocBody434_10 AllocBody434_25

def AllocBody434_27 : StackLang.HolProg 64 :=
.seq AllocBody434_9 AllocBody434_26

def AllocBody434_28 : StackLang.HolProg 64 :=
.seq AllocBody434_8 AllocBody434_27

def AllocBody434_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody434_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def AllocBody434_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody434_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody434_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody434_38 : StackLang.HolProg 64 :=
.seq AllocBody434_36 AllocBody434_37

def AllocBody434_39 : StackLang.HolProg 64 :=
.seq AllocBody434_35 AllocBody434_38

def AllocBody434_40 : StackLang.HolProg 64 :=
.seq AllocBody434_34 AllocBody434_39

def AllocBody434_41 : StackLang.HolProg 64 :=
.seq AllocBody434_33 AllocBody434_40

def AllocBody434_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody434_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody434_41 AllocBody434_42

def AllocBody434_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody434_45 : StackLang.HolProg 64 :=
.seq AllocBody434_43 AllocBody434_44

def AllocBody434_46 : StackLang.HolProg 64 :=
.seq AllocBody434_32 AllocBody434_45

def AllocBody434_47 : StackLang.HolProg 64 :=
.seq AllocBody434_31 AllocBody434_46

def AllocBody434_48 : StackLang.HolProg 64 :=
.seq AllocBody434_30 AllocBody434_47

def AllocBody434_49 : StackLang.HolProg 64 :=
.seq AllocBody434_29 AllocBody434_48

def AllocBody434_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody434_28 AllocBody434_49

def AllocBody434_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody434_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody434_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody434_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody434_55 : StackLang.HolProg 64 :=
.seq AllocBody434_53 AllocBody434_54

def AllocBody434_56 : StackLang.HolProg 64 :=
.seq AllocBody434_52 AllocBody434_55

def AllocBody434_57 : StackLang.HolProg 64 :=
.seq AllocBody434_51 AllocBody434_56

def AllocBody434_58 : StackLang.HolProg 64 :=
.seq AllocBody434_50 AllocBody434_57

def AllocBody434_59 : StackLang.HolProg 64 :=
.seq AllocBody434_7 AllocBody434_58

def AllocBody434_60 : StackLang.HolProg 64 :=
.seq AllocBody434_6 AllocBody434_59

def AllocBody434_61 : StackLang.HolProg 64 :=
.seq AllocBody434_5 AllocBody434_60

def AllocBody434_62 : StackLang.HolProg 64 :=
.seq AllocBody434_4 AllocBody434_61

def AllocBody434_63 : StackLang.HolProg 64 :=
.seq AllocBody434_3 AllocBody434_62

def AllocBody434_64 : StackLang.HolProg 64 :=
.seq AllocBody434_2 AllocBody434_63

def AllocBody434_65 : StackLang.HolProg 64 :=
.seq AllocBody434_1 AllocBody434_64

def AllocBody434_66 : StackLang.HolProg 64 :=
.seq AllocBody434_0 AllocBody434_65

def Alloc434 : Nat × StackLang.HolProg 64 := (434, AllocBody434_66)
theorem Alloc434_eq : StackAlloc.progComp (434, raw434) = Alloc434 := by
  kernel_rfl
#print axioms Alloc434_eq
end InitECandidate.Proofs.BackendStages
