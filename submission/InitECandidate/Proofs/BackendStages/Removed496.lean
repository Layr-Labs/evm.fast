import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc496
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody496_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody496_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody496_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody496_3 : StackLang.HolProg 64 :=
.seq RemovedBody496_1 RemovedBody496_2

def RemovedBody496_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody496_3 RemovedBody496_4

def RemovedBody496_6 : StackLang.HolProg 64 :=
.seq RemovedBody496_0 RemovedBody496_5

def RemovedBody496_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3000#64)

def RemovedBody496_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody496_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody496_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1543#64)

def RemovedBody496_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody496_14 : StackLang.HolProg 64 :=
.seq RemovedBody496_12 RemovedBody496_13

def RemovedBody496_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody496_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody496_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody496_18 : StackLang.HolProg 64 :=
.seq RemovedBody496_16 RemovedBody496_17

def RemovedBody496_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody496_18 RemovedBody496_19

def RemovedBody496_21 : StackLang.HolProg 64 :=
.seq RemovedBody496_15 RemovedBody496_20

def RemovedBody496_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody496_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody496_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 496 3

def RemovedBody496_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody496_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody496_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody496_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody496_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody496_31 : StackLang.HolProg 64 :=
.seq RemovedBody496_29 RemovedBody496_30

def RemovedBody496_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody496_33 : StackLang.HolProg 64 :=
.seq RemovedBody496_31 RemovedBody496_32

def RemovedBody496_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody496_35 : StackLang.HolProg 64 :=
.seq RemovedBody496_33 RemovedBody496_34

def RemovedBody496_36 : StackLang.HolProg 64 :=
.seq RemovedBody496_28 RemovedBody496_35

def RemovedBody496_37 : StackLang.HolProg 64 :=
.seq RemovedBody496_27 RemovedBody496_36

def RemovedBody496_38 : StackLang.HolProg 64 :=
.seq RemovedBody496_26 RemovedBody496_37

def RemovedBody496_39 : StackLang.HolProg 64 :=
.seq RemovedBody496_25 RemovedBody496_38

def RemovedBody496_40 : StackLang.HolProg 64 :=
.seq RemovedBody496_24 RemovedBody496_39

def RemovedBody496_41 : StackLang.HolProg 64 :=
.seq RemovedBody496_23 RemovedBody496_40

def RemovedBody496_42 : StackLang.HolProg 64 :=
.seq RemovedBody496_22 RemovedBody496_41

def RemovedBody496_43 : StackLang.HolProg 64 :=
.seq RemovedBody496_21 RemovedBody496_42

def RemovedBody496_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody496_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody496_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody496_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody496_51 : StackLang.HolProg 64 :=
.seq RemovedBody496_49 RemovedBody496_50

def RemovedBody496_52 : StackLang.HolProg 64 :=
.seq RemovedBody496_48 RemovedBody496_51

def RemovedBody496_53 : StackLang.HolProg 64 :=
.seq RemovedBody496_47 RemovedBody496_52

def RemovedBody496_54 : StackLang.HolProg 64 :=
.seq RemovedBody496_46 RemovedBody496_53

def RemovedBody496_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody496_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody496_57 : StackLang.HolProg 64 :=
.seq RemovedBody496_55 RemovedBody496_56

def RemovedBody496_58 : StackLang.HolProg 64 :=
.call (some (RemovedBody496_54, 0, 496, 2)) (Sum.inl 494) (some (RemovedBody496_57, 496, 3))

def RemovedBody496_59 : StackLang.HolProg 64 :=
.seq RemovedBody496_45 RemovedBody496_58

def RemovedBody496_60 : StackLang.HolProg 64 :=
.seq RemovedBody496_44 RemovedBody496_59

def RemovedBody496_61 : StackLang.HolProg 64 :=
.seq RemovedBody496_43 RemovedBody496_60

def RemovedBody496_62 : StackLang.HolProg 64 :=
.seq RemovedBody496_14 RemovedBody496_61

def RemovedBody496_63 : StackLang.HolProg 64 :=
.seq RemovedBody496_11 RemovedBody496_62

def RemovedBody496_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody496_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_66 : StackLang.HolProg 64 :=
.seq RemovedBody496_64 RemovedBody496_65

def RemovedBody496_67 : StackLang.HolProg 64 :=
.seq RemovedBody496_63 RemovedBody496_66

def RemovedBody496_68 : StackLang.HolProg 64 :=
.seq RemovedBody496_10 RemovedBody496_67

def RemovedBody496_69 : StackLang.HolProg 64 :=
.seq RemovedBody496_9 RemovedBody496_68

def RemovedBody496_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody496_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_72 : StackLang.HolProg 64 :=
.seq RemovedBody496_70 RemovedBody496_71

def RemovedBody496_73 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody496_69 RemovedBody496_72

def RemovedBody496_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody496_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody496_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody496_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody496_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody496_79 : StackLang.HolProg 64 :=
.seq RemovedBody496_77 RemovedBody496_78

def RemovedBody496_80 : StackLang.HolProg 64 :=
.seq RemovedBody496_76 RemovedBody496_79

def RemovedBody496_81 : StackLang.HolProg 64 :=
.seq RemovedBody496_75 RemovedBody496_80

def RemovedBody496_82 : StackLang.HolProg 64 :=
.seq RemovedBody496_74 RemovedBody496_81

def RemovedBody496_83 : StackLang.HolProg 64 :=
.seq RemovedBody496_73 RemovedBody496_82

def RemovedBody496_84 : StackLang.HolProg 64 :=
.seq RemovedBody496_8 RemovedBody496_83

def RemovedBody496_85 : StackLang.HolProg 64 :=
.seq RemovedBody496_7 RemovedBody496_84

def RemovedBody496_86 : StackLang.HolProg 64 :=
.seq RemovedBody496_6 RemovedBody496_85

def Removed496 : Nat × StackLang.HolProg 64 := (496, RemovedBody496_86)
theorem Removed496_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc496 = Removed496 := by
  kernel_rfl
#print axioms Removed496_eq
end InitECandidate.Proofs.BackendStages
