import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw475
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody475_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody475_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody475_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody475_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 1

def AllocBody475_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody475_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def AllocBody475_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody475_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody475_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody475_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody475_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody475_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody475_16 : StackLang.HolProg 64 :=
.seq AllocBody475_14 AllocBody475_15

def AllocBody475_17 : StackLang.HolProg 64 :=
.seq AllocBody475_13 AllocBody475_16

def AllocBody475_18 : StackLang.HolProg 64 :=
.seq AllocBody475_12 AllocBody475_17

def AllocBody475_19 : StackLang.HolProg 64 :=
.seq AllocBody475_11 AllocBody475_18

def AllocBody475_20 : StackLang.HolProg 64 :=
.seq AllocBody475_10 AllocBody475_19

def AllocBody475_21 : StackLang.HolProg 64 :=
.seq AllocBody475_9 AllocBody475_20

def AllocBody475_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody475_21 AllocBody475_22

def AllocBody475_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody475_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody475_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody475_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody475_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody475_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody475_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody475_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody475_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody475_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody475_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody475_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody475_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody475_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody475_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody475_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody475_48 : StackLang.HolProg 64 :=
.seq AllocBody475_46 AllocBody475_47

def AllocBody475_49 : StackLang.HolProg 64 :=
.seq AllocBody475_45 AllocBody475_48

def AllocBody475_50 : StackLang.HolProg 64 :=
.seq AllocBody475_44 AllocBody475_49

def AllocBody475_51 : StackLang.HolProg 64 :=
.seq AllocBody475_43 AllocBody475_50

def AllocBody475_52 : StackLang.HolProg 64 :=
.seq AllocBody475_42 AllocBody475_51

def AllocBody475_53 : StackLang.HolProg 64 :=
.seq AllocBody475_41 AllocBody475_52

def AllocBody475_54 : StackLang.HolProg 64 :=
.seq AllocBody475_40 AllocBody475_53

def AllocBody475_55 : StackLang.HolProg 64 :=
.seq AllocBody475_39 AllocBody475_54

def AllocBody475_56 : StackLang.HolProg 64 :=
.seq AllocBody475_38 AllocBody475_55

def AllocBody475_57 : StackLang.HolProg 64 :=
.seq AllocBody475_37 AllocBody475_56

def AllocBody475_58 : StackLang.HolProg 64 :=
.seq AllocBody475_36 AllocBody475_57

def AllocBody475_59 : StackLang.HolProg 64 :=
.seq AllocBody475_35 AllocBody475_58

def AllocBody475_60 : StackLang.HolProg 64 :=
.seq AllocBody475_34 AllocBody475_59

def AllocBody475_61 : StackLang.HolProg 64 :=
.seq AllocBody475_33 AllocBody475_60

def AllocBody475_62 : StackLang.HolProg 64 :=
.seq AllocBody475_32 AllocBody475_61

def AllocBody475_63 : StackLang.HolProg 64 :=
.seq AllocBody475_31 AllocBody475_62

def AllocBody475_64 : StackLang.HolProg 64 :=
.seq AllocBody475_30 AllocBody475_63

def AllocBody475_65 : StackLang.HolProg 64 :=
.seq AllocBody475_29 AllocBody475_64

def AllocBody475_66 : StackLang.HolProg 64 :=
.seq AllocBody475_28 AllocBody475_65

def AllocBody475_67 : StackLang.HolProg 64 :=
.seq AllocBody475_27 AllocBody475_66

def AllocBody475_68 : StackLang.HolProg 64 :=
.seq AllocBody475_26 AllocBody475_67

def AllocBody475_69 : StackLang.HolProg 64 :=
.seq AllocBody475_25 AllocBody475_68

def AllocBody475_70 : StackLang.HolProg 64 :=
.seq AllocBody475_24 AllocBody475_69

def AllocBody475_71 : StackLang.HolProg 64 :=
.seq AllocBody475_23 AllocBody475_70

def AllocBody475_72 : StackLang.HolProg 64 :=
.seq AllocBody475_8 AllocBody475_71

def AllocBody475_73 : StackLang.HolProg 64 :=
.seq AllocBody475_7 AllocBody475_72

def AllocBody475_74 : StackLang.HolProg 64 :=
.seq AllocBody475_6 AllocBody475_73

def AllocBody475_75 : StackLang.HolProg 64 :=
.seq AllocBody475_5 AllocBody475_74

def AllocBody475_76 : StackLang.HolProg 64 :=
.seq AllocBody475_4 AllocBody475_75

def AllocBody475_77 : StackLang.HolProg 64 :=
.seq AllocBody475_3 AllocBody475_76

def AllocBody475_78 : StackLang.HolProg 64 :=
.seq AllocBody475_2 AllocBody475_77

def AllocBody475_79 : StackLang.HolProg 64 :=
.seq AllocBody475_1 AllocBody475_78

def AllocBody475_80 : StackLang.HolProg 64 :=
.seq AllocBody475_0 AllocBody475_79

def Alloc475 : Nat × StackLang.HolProg 64 := (475, AllocBody475_80)
theorem Alloc475_eq : StackAlloc.progComp (475, raw475) = Alloc475 := by
  kernel_rfl
#print axioms Alloc475_eq
end InitECandidate.Proofs.BackendStages
