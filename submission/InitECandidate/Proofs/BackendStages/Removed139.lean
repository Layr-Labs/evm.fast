import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc139
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody139_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody139_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody139_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody139_3 : StackLang.HolProg 64 :=
.seq RemovedBody139_1 RemovedBody139_2

def RemovedBody139_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody139_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody139_3 RemovedBody139_4

def RemovedBody139_6 : StackLang.HolProg 64 :=
.seq RemovedBody139_0 RemovedBody139_5

def RemovedBody139_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody139_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody139_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 100#64)

def RemovedBody139_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody139_11 : StackLang.HolProg 64 :=
.seq RemovedBody139_9 RemovedBody139_10

def RemovedBody139_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody139_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody139_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody139_15 : StackLang.HolProg 64 :=
.seq RemovedBody139_13 RemovedBody139_14

def RemovedBody139_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody139_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody139_15 RemovedBody139_16

def RemovedBody139_18 : StackLang.HolProg 64 :=
.seq RemovedBody139_12 RemovedBody139_17

def RemovedBody139_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody139_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody139_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 139 3

def RemovedBody139_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody139_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody139_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody139_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody139_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody139_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody139_28 : StackLang.HolProg 64 :=
.seq RemovedBody139_26 RemovedBody139_27

def RemovedBody139_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody139_30 : StackLang.HolProg 64 :=
.seq RemovedBody139_28 RemovedBody139_29

def RemovedBody139_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody139_32 : StackLang.HolProg 64 :=
.seq RemovedBody139_30 RemovedBody139_31

def RemovedBody139_33 : StackLang.HolProg 64 :=
.seq RemovedBody139_25 RemovedBody139_32

def RemovedBody139_34 : StackLang.HolProg 64 :=
.seq RemovedBody139_24 RemovedBody139_33

def RemovedBody139_35 : StackLang.HolProg 64 :=
.seq RemovedBody139_23 RemovedBody139_34

def RemovedBody139_36 : StackLang.HolProg 64 :=
.seq RemovedBody139_22 RemovedBody139_35

def RemovedBody139_37 : StackLang.HolProg 64 :=
.seq RemovedBody139_21 RemovedBody139_36

def RemovedBody139_38 : StackLang.HolProg 64 :=
.seq RemovedBody139_20 RemovedBody139_37

def RemovedBody139_39 : StackLang.HolProg 64 :=
.seq RemovedBody139_19 RemovedBody139_38

def RemovedBody139_40 : StackLang.HolProg 64 :=
.seq RemovedBody139_18 RemovedBody139_39

def RemovedBody139_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody139_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody139_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody139_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody139_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody139_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody139_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody139_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody139_49 : StackLang.HolProg 64 :=
.seq RemovedBody139_47 RemovedBody139_48

def RemovedBody139_50 : StackLang.HolProg 64 :=
.seq RemovedBody139_46 RemovedBody139_49

def RemovedBody139_51 : StackLang.HolProg 64 :=
.seq RemovedBody139_45 RemovedBody139_50

def RemovedBody139_52 : StackLang.HolProg 64 :=
.seq RemovedBody139_44 RemovedBody139_51

def RemovedBody139_53 : StackLang.HolProg 64 :=
.seq RemovedBody139_43 RemovedBody139_52

def RemovedBody139_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody139_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody139_56 : StackLang.HolProg 64 :=
.seq RemovedBody139_54 RemovedBody139_55

def RemovedBody139_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody139_53, 0, 139, 2)) (Sum.inl 138) (some (RemovedBody139_56, 139, 3))

def RemovedBody139_58 : StackLang.HolProg 64 :=
.seq RemovedBody139_42 RemovedBody139_57

def RemovedBody139_59 : StackLang.HolProg 64 :=
.seq RemovedBody139_41 RemovedBody139_58

def RemovedBody139_60 : StackLang.HolProg 64 :=
.seq RemovedBody139_40 RemovedBody139_59

def RemovedBody139_61 : StackLang.HolProg 64 :=
.seq RemovedBody139_11 RemovedBody139_60

def RemovedBody139_62 : StackLang.HolProg 64 :=
.seq RemovedBody139_8 RemovedBody139_61

def RemovedBody139_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody139_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody139_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody139_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody139_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody139_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody139_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody139_70 : StackLang.HolProg 64 :=
.seq RemovedBody139_68 RemovedBody139_69

def RemovedBody139_71 : StackLang.HolProg 64 :=
.seq RemovedBody139_67 RemovedBody139_70

def RemovedBody139_72 : StackLang.HolProg 64 :=
.seq RemovedBody139_66 RemovedBody139_71

def RemovedBody139_73 : StackLang.HolProg 64 :=
.seq RemovedBody139_65 RemovedBody139_72

def RemovedBody139_74 : StackLang.HolProg 64 :=
.seq RemovedBody139_64 RemovedBody139_73

def RemovedBody139_75 : StackLang.HolProg 64 :=
.seq RemovedBody139_63 RemovedBody139_74

def RemovedBody139_76 : StackLang.HolProg 64 :=
.seq RemovedBody139_62 RemovedBody139_75

def RemovedBody139_77 : StackLang.HolProg 64 :=
.seq RemovedBody139_7 RemovedBody139_76

def RemovedBody139_78 : StackLang.HolProg 64 :=
.seq RemovedBody139_6 RemovedBody139_77

def Removed139 : Nat × StackLang.HolProg 64 := (139, RemovedBody139_78)
theorem Removed139_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc139 = Removed139 := by
  kernel_rfl
#print axioms Removed139_eq
end InitECandidate.Proofs.BackendStages
