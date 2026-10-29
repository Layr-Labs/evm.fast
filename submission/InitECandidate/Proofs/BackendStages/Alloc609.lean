import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw609
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody609_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody609_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody609_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody609_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody609_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody609_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody609_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def AllocBody609_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def AllocBody609_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody609_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody609_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody609_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def AllocBody609_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def AllocBody609_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 72#64))

def AllocBody609_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody609_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody609_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody609_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def AllocBody609_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def AllocBody609_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 184#64))

def AllocBody609_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody609_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody609_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody609_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody609_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody609_37 : StackLang.HolProg 64 :=
.seq AllocBody609_35 AllocBody609_36

def AllocBody609_38 : StackLang.HolProg 64 :=
.seq AllocBody609_34 AllocBody609_37

def AllocBody609_39 : StackLang.HolProg 64 :=
.seq AllocBody609_33 AllocBody609_38

def AllocBody609_40 : StackLang.HolProg 64 :=
.seq AllocBody609_32 AllocBody609_39

def AllocBody609_41 : StackLang.HolProg 64 :=
.seq AllocBody609_31 AllocBody609_40

def AllocBody609_42 : StackLang.HolProg 64 :=
.seq AllocBody609_30 AllocBody609_41

def AllocBody609_43 : StackLang.HolProg 64 :=
.seq AllocBody609_29 AllocBody609_42

def AllocBody609_44 : StackLang.HolProg 64 :=
.seq AllocBody609_28 AllocBody609_43

def AllocBody609_45 : StackLang.HolProg 64 :=
.seq AllocBody609_27 AllocBody609_44

def AllocBody609_46 : StackLang.HolProg 64 :=
.seq AllocBody609_26 AllocBody609_45

def AllocBody609_47 : StackLang.HolProg 64 :=
.seq AllocBody609_25 AllocBody609_46

def AllocBody609_48 : StackLang.HolProg 64 :=
.seq AllocBody609_24 AllocBody609_47

def AllocBody609_49 : StackLang.HolProg 64 :=
.seq AllocBody609_23 AllocBody609_48

def AllocBody609_50 : StackLang.HolProg 64 :=
.seq AllocBody609_22 AllocBody609_49

def AllocBody609_51 : StackLang.HolProg 64 :=
.seq AllocBody609_21 AllocBody609_50

def AllocBody609_52 : StackLang.HolProg 64 :=
.seq AllocBody609_20 AllocBody609_51

def AllocBody609_53 : StackLang.HolProg 64 :=
.seq AllocBody609_19 AllocBody609_52

def AllocBody609_54 : StackLang.HolProg 64 :=
.seq AllocBody609_18 AllocBody609_53

def AllocBody609_55 : StackLang.HolProg 64 :=
.seq AllocBody609_17 AllocBody609_54

def AllocBody609_56 : StackLang.HolProg 64 :=
.seq AllocBody609_16 AllocBody609_55

def AllocBody609_57 : StackLang.HolProg 64 :=
.seq AllocBody609_15 AllocBody609_56

def AllocBody609_58 : StackLang.HolProg 64 :=
.seq AllocBody609_14 AllocBody609_57

def AllocBody609_59 : StackLang.HolProg 64 :=
.seq AllocBody609_13 AllocBody609_58

def AllocBody609_60 : StackLang.HolProg 64 :=
.seq AllocBody609_12 AllocBody609_59

def AllocBody609_61 : StackLang.HolProg 64 :=
.seq AllocBody609_11 AllocBody609_60

def AllocBody609_62 : StackLang.HolProg 64 :=
.seq AllocBody609_10 AllocBody609_61

def AllocBody609_63 : StackLang.HolProg 64 :=
.seq AllocBody609_9 AllocBody609_62

def AllocBody609_64 : StackLang.HolProg 64 :=
.seq AllocBody609_8 AllocBody609_63

def AllocBody609_65 : StackLang.HolProg 64 :=
.seq AllocBody609_7 AllocBody609_64

def AllocBody609_66 : StackLang.HolProg 64 :=
.seq AllocBody609_6 AllocBody609_65

def AllocBody609_67 : StackLang.HolProg 64 :=
.seq AllocBody609_5 AllocBody609_66

def AllocBody609_68 : StackLang.HolProg 64 :=
.seq AllocBody609_4 AllocBody609_67

def AllocBody609_69 : StackLang.HolProg 64 :=
.seq AllocBody609_3 AllocBody609_68

def AllocBody609_70 : StackLang.HolProg 64 :=
.seq AllocBody609_2 AllocBody609_69

def AllocBody609_71 : StackLang.HolProg 64 :=
.seq AllocBody609_1 AllocBody609_70

def AllocBody609_72 : StackLang.HolProg 64 :=
.seq AllocBody609_0 AllocBody609_71

def Alloc609 : Nat × StackLang.HolProg 64 := (609, AllocBody609_72)
theorem Alloc609_eq : StackAlloc.progComp (609, raw609) = Alloc609 := by
  kernel_rfl
#print axioms Alloc609_eq
end InitECandidate.Proofs.BackendStages
