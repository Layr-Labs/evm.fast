import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc872
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody872_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody872_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody872_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody872_3 : StackLang.HolProg 64 :=
.seq RemovedBody872_1 RemovedBody872_2

def RemovedBody872_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody872_3 RemovedBody872_4

def RemovedBody872_6 : StackLang.HolProg 64 :=
.seq RemovedBody872_0 RemovedBody872_5

def RemovedBody872_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody872_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4598#64)

def RemovedBody872_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody872_11 : StackLang.HolProg 64 :=
.seq RemovedBody872_9 RemovedBody872_10

def RemovedBody872_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody872_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody872_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody872_15 : StackLang.HolProg 64 :=
.seq RemovedBody872_13 RemovedBody872_14

def RemovedBody872_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody872_15 RemovedBody872_16

def RemovedBody872_18 : StackLang.HolProg 64 :=
.seq RemovedBody872_12 RemovedBody872_17

def RemovedBody872_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody872_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody872_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 872 3

def RemovedBody872_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody872_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody872_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody872_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody872_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody872_28 : StackLang.HolProg 64 :=
.seq RemovedBody872_26 RemovedBody872_27

def RemovedBody872_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody872_30 : StackLang.HolProg 64 :=
.seq RemovedBody872_28 RemovedBody872_29

def RemovedBody872_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody872_32 : StackLang.HolProg 64 :=
.seq RemovedBody872_30 RemovedBody872_31

def RemovedBody872_33 : StackLang.HolProg 64 :=
.seq RemovedBody872_25 RemovedBody872_32

def RemovedBody872_34 : StackLang.HolProg 64 :=
.seq RemovedBody872_24 RemovedBody872_33

def RemovedBody872_35 : StackLang.HolProg 64 :=
.seq RemovedBody872_23 RemovedBody872_34

def RemovedBody872_36 : StackLang.HolProg 64 :=
.seq RemovedBody872_22 RemovedBody872_35

def RemovedBody872_37 : StackLang.HolProg 64 :=
.seq RemovedBody872_21 RemovedBody872_36

def RemovedBody872_38 : StackLang.HolProg 64 :=
.seq RemovedBody872_20 RemovedBody872_37

def RemovedBody872_39 : StackLang.HolProg 64 :=
.seq RemovedBody872_19 RemovedBody872_38

def RemovedBody872_40 : StackLang.HolProg 64 :=
.seq RemovedBody872_18 RemovedBody872_39

def RemovedBody872_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody872_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody872_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody872_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody872_48 : StackLang.HolProg 64 :=
.seq RemovedBody872_46 RemovedBody872_47

def RemovedBody872_49 : StackLang.HolProg 64 :=
.seq RemovedBody872_45 RemovedBody872_48

def RemovedBody872_50 : StackLang.HolProg 64 :=
.seq RemovedBody872_44 RemovedBody872_49

def RemovedBody872_51 : StackLang.HolProg 64 :=
.seq RemovedBody872_43 RemovedBody872_50

def RemovedBody872_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody872_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody872_55 : StackLang.HolProg 64 :=
.seq RemovedBody872_53 RemovedBody872_54

def RemovedBody872_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody872_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody872_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def RemovedBody872_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def RemovedBody872_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 3#64)

def RemovedBody872_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody872_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def RemovedBody872_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody872_67 : StackLang.HolProg 64 :=
.seq RemovedBody872_65 RemovedBody872_66

def RemovedBody872_68 : StackLang.HolProg 64 :=
.seq RemovedBody872_64 RemovedBody872_67

def RemovedBody872_69 : StackLang.HolProg 64 :=
.seq RemovedBody872_63 RemovedBody872_68

def RemovedBody872_70 : StackLang.HolProg 64 :=
.seq RemovedBody872_62 RemovedBody872_69

def RemovedBody872_71 : StackLang.HolProg 64 :=
.seq RemovedBody872_61 RemovedBody872_70

def RemovedBody872_72 : StackLang.HolProg 64 :=
.seq RemovedBody872_60 RemovedBody872_71

def RemovedBody872_73 : StackLang.HolProg 64 :=
.seq RemovedBody872_59 RemovedBody872_72

def RemovedBody872_74 : StackLang.HolProg 64 :=
.seq RemovedBody872_58 RemovedBody872_73

def RemovedBody872_75 : StackLang.HolProg 64 :=
.seq RemovedBody872_57 RemovedBody872_74

def RemovedBody872_76 : StackLang.HolProg 64 :=
.seq RemovedBody872_56 RemovedBody872_75

def RemovedBody872_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) RemovedBody872_55 RemovedBody872_76

def RemovedBody872_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody872_79 : StackLang.HolProg 64 :=
.seq RemovedBody872_77 RemovedBody872_78

def RemovedBody872_80 : StackLang.HolProg 64 :=
.seq RemovedBody872_52 RemovedBody872_79

def RemovedBody872_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody872_51, 0, 872, 2)) (Sum.inl 871) (some (RemovedBody872_80, 872, 3))

def RemovedBody872_82 : StackLang.HolProg 64 :=
.seq RemovedBody872_42 RemovedBody872_81

def RemovedBody872_83 : StackLang.HolProg 64 :=
.seq RemovedBody872_41 RemovedBody872_82

def RemovedBody872_84 : StackLang.HolProg 64 :=
.seq RemovedBody872_40 RemovedBody872_83

def RemovedBody872_85 : StackLang.HolProg 64 :=
.seq RemovedBody872_11 RemovedBody872_84

def RemovedBody872_86 : StackLang.HolProg 64 :=
.seq RemovedBody872_8 RemovedBody872_85

def RemovedBody872_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody872_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody872_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody872_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody872_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody872_92 : StackLang.HolProg 64 :=
.seq RemovedBody872_90 RemovedBody872_91

def RemovedBody872_93 : StackLang.HolProg 64 :=
.seq RemovedBody872_89 RemovedBody872_92

def RemovedBody872_94 : StackLang.HolProg 64 :=
.seq RemovedBody872_88 RemovedBody872_93

def RemovedBody872_95 : StackLang.HolProg 64 :=
.seq RemovedBody872_87 RemovedBody872_94

def RemovedBody872_96 : StackLang.HolProg 64 :=
.seq RemovedBody872_86 RemovedBody872_95

def RemovedBody872_97 : StackLang.HolProg 64 :=
.seq RemovedBody872_7 RemovedBody872_96

def RemovedBody872_98 : StackLang.HolProg 64 :=
.seq RemovedBody872_6 RemovedBody872_97

def Removed872 : Nat × StackLang.HolProg 64 := (872, RemovedBody872_98)
theorem Removed872_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc872 = Removed872 := by
  kernel_rfl
#print axioms Removed872_eq
end InitECandidate.Proofs.BackendStages
