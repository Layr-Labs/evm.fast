import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc465
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody465_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody465_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody465_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody465_3 : StackLang.HolProg 64 :=
.seq RemovedBody465_1 RemovedBody465_2

def RemovedBody465_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody465_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody465_3 RemovedBody465_4

def RemovedBody465_6 : StackLang.HolProg 64 :=
.seq RemovedBody465_0 RemovedBody465_5

def RemovedBody465_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody465_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody465_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1489#64)

def RemovedBody465_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody465_11 : StackLang.HolProg 64 :=
.seq RemovedBody465_9 RemovedBody465_10

def RemovedBody465_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody465_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody465_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody465_15 : StackLang.HolProg 64 :=
.seq RemovedBody465_13 RemovedBody465_14

def RemovedBody465_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody465_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody465_15 RemovedBody465_16

def RemovedBody465_18 : StackLang.HolProg 64 :=
.seq RemovedBody465_12 RemovedBody465_17

def RemovedBody465_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody465_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody465_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 465 3

def RemovedBody465_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody465_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody465_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody465_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody465_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody465_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody465_28 : StackLang.HolProg 64 :=
.seq RemovedBody465_26 RemovedBody465_27

def RemovedBody465_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody465_30 : StackLang.HolProg 64 :=
.seq RemovedBody465_28 RemovedBody465_29

def RemovedBody465_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody465_32 : StackLang.HolProg 64 :=
.seq RemovedBody465_30 RemovedBody465_31

def RemovedBody465_33 : StackLang.HolProg 64 :=
.seq RemovedBody465_25 RemovedBody465_32

def RemovedBody465_34 : StackLang.HolProg 64 :=
.seq RemovedBody465_24 RemovedBody465_33

def RemovedBody465_35 : StackLang.HolProg 64 :=
.seq RemovedBody465_23 RemovedBody465_34

def RemovedBody465_36 : StackLang.HolProg 64 :=
.seq RemovedBody465_22 RemovedBody465_35

def RemovedBody465_37 : StackLang.HolProg 64 :=
.seq RemovedBody465_21 RemovedBody465_36

def RemovedBody465_38 : StackLang.HolProg 64 :=
.seq RemovedBody465_20 RemovedBody465_37

def RemovedBody465_39 : StackLang.HolProg 64 :=
.seq RemovedBody465_19 RemovedBody465_38

def RemovedBody465_40 : StackLang.HolProg 64 :=
.seq RemovedBody465_18 RemovedBody465_39

def RemovedBody465_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody465_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody465_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody465_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody465_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody465_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody465_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody465_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody465_49 : StackLang.HolProg 64 :=
.seq RemovedBody465_47 RemovedBody465_48

def RemovedBody465_50 : StackLang.HolProg 64 :=
.seq RemovedBody465_46 RemovedBody465_49

def RemovedBody465_51 : StackLang.HolProg 64 :=
.seq RemovedBody465_45 RemovedBody465_50

def RemovedBody465_52 : StackLang.HolProg 64 :=
.seq RemovedBody465_44 RemovedBody465_51

def RemovedBody465_53 : StackLang.HolProg 64 :=
.seq RemovedBody465_43 RemovedBody465_52

def RemovedBody465_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody465_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody465_56 : StackLang.HolProg 64 :=
.seq RemovedBody465_54 RemovedBody465_55

def RemovedBody465_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody465_53, 0, 465, 2)) (Sum.inl 464) (some (RemovedBody465_56, 465, 3))

def RemovedBody465_58 : StackLang.HolProg 64 :=
.seq RemovedBody465_42 RemovedBody465_57

def RemovedBody465_59 : StackLang.HolProg 64 :=
.seq RemovedBody465_41 RemovedBody465_58

def RemovedBody465_60 : StackLang.HolProg 64 :=
.seq RemovedBody465_40 RemovedBody465_59

def RemovedBody465_61 : StackLang.HolProg 64 :=
.seq RemovedBody465_11 RemovedBody465_60

def RemovedBody465_62 : StackLang.HolProg 64 :=
.seq RemovedBody465_8 RemovedBody465_61

def RemovedBody465_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody465_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody465_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody465_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody465_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody465_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody465_69 : StackLang.HolProg 64 :=
.seq RemovedBody465_67 RemovedBody465_68

def RemovedBody465_70 : StackLang.HolProg 64 :=
.seq RemovedBody465_66 RemovedBody465_69

def RemovedBody465_71 : StackLang.HolProg 64 :=
.seq RemovedBody465_65 RemovedBody465_70

def RemovedBody465_72 : StackLang.HolProg 64 :=
.seq RemovedBody465_64 RemovedBody465_71

def RemovedBody465_73 : StackLang.HolProg 64 :=
.seq RemovedBody465_63 RemovedBody465_72

def RemovedBody465_74 : StackLang.HolProg 64 :=
.seq RemovedBody465_62 RemovedBody465_73

def RemovedBody465_75 : StackLang.HolProg 64 :=
.seq RemovedBody465_7 RemovedBody465_74

def RemovedBody465_76 : StackLang.HolProg 64 :=
.seq RemovedBody465_6 RemovedBody465_75

def Removed465 : Nat × StackLang.HolProg 64 := (465, RemovedBody465_76)
theorem Removed465_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc465 = Removed465 := by
  kernel_rfl
#print axioms Removed465_eq
end InitECandidate.Proofs.BackendStages
