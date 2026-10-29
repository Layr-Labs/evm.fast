import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed609
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody609_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody609_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody609_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody609_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody609_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody609_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 64#64))

def NamedBody609_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 64#64))

def NamedBody609_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody609_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody609_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody609_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody609_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 72#64))

def NamedBody609_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 72#64))

def NamedBody609_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody609_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody609_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody609_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def NamedBody609_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 184#64))

def NamedBody609_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 184#64))

def NamedBody609_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody609_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody609_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody609_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody609_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody609_37 : StackLang.HolProg 64 :=
.seq NamedBody609_35 NamedBody609_36

def NamedBody609_38 : StackLang.HolProg 64 :=
.seq NamedBody609_34 NamedBody609_37

def NamedBody609_39 : StackLang.HolProg 64 :=
.seq NamedBody609_33 NamedBody609_38

def NamedBody609_40 : StackLang.HolProg 64 :=
.seq NamedBody609_32 NamedBody609_39

def NamedBody609_41 : StackLang.HolProg 64 :=
.seq NamedBody609_31 NamedBody609_40

def NamedBody609_42 : StackLang.HolProg 64 :=
.seq NamedBody609_30 NamedBody609_41

def NamedBody609_43 : StackLang.HolProg 64 :=
.seq NamedBody609_29 NamedBody609_42

def NamedBody609_44 : StackLang.HolProg 64 :=
.seq NamedBody609_28 NamedBody609_43

def NamedBody609_45 : StackLang.HolProg 64 :=
.seq NamedBody609_27 NamedBody609_44

def NamedBody609_46 : StackLang.HolProg 64 :=
.seq NamedBody609_26 NamedBody609_45

def NamedBody609_47 : StackLang.HolProg 64 :=
.seq NamedBody609_25 NamedBody609_46

def NamedBody609_48 : StackLang.HolProg 64 :=
.seq NamedBody609_24 NamedBody609_47

def NamedBody609_49 : StackLang.HolProg 64 :=
.seq NamedBody609_23 NamedBody609_48

def NamedBody609_50 : StackLang.HolProg 64 :=
.seq NamedBody609_22 NamedBody609_49

def NamedBody609_51 : StackLang.HolProg 64 :=
.seq NamedBody609_21 NamedBody609_50

def NamedBody609_52 : StackLang.HolProg 64 :=
.seq NamedBody609_20 NamedBody609_51

def NamedBody609_53 : StackLang.HolProg 64 :=
.seq NamedBody609_19 NamedBody609_52

def NamedBody609_54 : StackLang.HolProg 64 :=
.seq NamedBody609_18 NamedBody609_53

def NamedBody609_55 : StackLang.HolProg 64 :=
.seq NamedBody609_17 NamedBody609_54

def NamedBody609_56 : StackLang.HolProg 64 :=
.seq NamedBody609_16 NamedBody609_55

def NamedBody609_57 : StackLang.HolProg 64 :=
.seq NamedBody609_15 NamedBody609_56

def NamedBody609_58 : StackLang.HolProg 64 :=
.seq NamedBody609_14 NamedBody609_57

def NamedBody609_59 : StackLang.HolProg 64 :=
.seq NamedBody609_13 NamedBody609_58

def NamedBody609_60 : StackLang.HolProg 64 :=
.seq NamedBody609_12 NamedBody609_59

def NamedBody609_61 : StackLang.HolProg 64 :=
.seq NamedBody609_11 NamedBody609_60

def NamedBody609_62 : StackLang.HolProg 64 :=
.seq NamedBody609_10 NamedBody609_61

def NamedBody609_63 : StackLang.HolProg 64 :=
.seq NamedBody609_9 NamedBody609_62

def NamedBody609_64 : StackLang.HolProg 64 :=
.seq NamedBody609_8 NamedBody609_63

def NamedBody609_65 : StackLang.HolProg 64 :=
.seq NamedBody609_7 NamedBody609_64

def NamedBody609_66 : StackLang.HolProg 64 :=
.seq NamedBody609_6 NamedBody609_65

def NamedBody609_67 : StackLang.HolProg 64 :=
.seq NamedBody609_5 NamedBody609_66

def NamedBody609_68 : StackLang.HolProg 64 :=
.seq NamedBody609_4 NamedBody609_67

def NamedBody609_69 : StackLang.HolProg 64 :=
.seq NamedBody609_3 NamedBody609_68

def NamedBody609_70 : StackLang.HolProg 64 :=
.seq NamedBody609_2 NamedBody609_69

def NamedBody609_71 : StackLang.HolProg 64 :=
.seq NamedBody609_1 NamedBody609_70

def NamedBody609_72 : StackLang.HolProg 64 :=
.seq NamedBody609_0 NamedBody609_71

def Named609 : Nat × StackLang.HolProg 64 := (609, NamedBody609_72)
theorem Named609_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed609 = Named609 := by
  kernel_rfl
#print axioms Named609_eq
end InitECandidate.Proofs.BackendStages
