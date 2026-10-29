import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed131
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody131_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody131_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody131_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody131_3 : StackLang.HolProg 64 :=
.seq NamedBody131_1 NamedBody131_2

def NamedBody131_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody131_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody131_3 NamedBody131_4

def NamedBody131_6 : StackLang.HolProg 64 :=
.seq NamedBody131_0 NamedBody131_5

def NamedBody131_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody131_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody131_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 83#64)

def NamedBody131_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody131_11 : StackLang.HolProg 64 :=
.seq NamedBody131_9 NamedBody131_10

def NamedBody131_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody131_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody131_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody131_15 : StackLang.HolProg 64 :=
.seq NamedBody131_13 NamedBody131_14

def NamedBody131_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody131_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody131_15 NamedBody131_16

def NamedBody131_18 : StackLang.HolProg 64 :=
.seq NamedBody131_12 NamedBody131_17

def NamedBody131_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody131_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody131_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 131 3

def NamedBody131_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody131_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody131_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody131_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody131_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody131_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody131_28 : StackLang.HolProg 64 :=
.seq NamedBody131_26 NamedBody131_27

def NamedBody131_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody131_30 : StackLang.HolProg 64 :=
.seq NamedBody131_28 NamedBody131_29

def NamedBody131_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody131_32 : StackLang.HolProg 64 :=
.seq NamedBody131_30 NamedBody131_31

def NamedBody131_33 : StackLang.HolProg 64 :=
.seq NamedBody131_25 NamedBody131_32

def NamedBody131_34 : StackLang.HolProg 64 :=
.seq NamedBody131_24 NamedBody131_33

def NamedBody131_35 : StackLang.HolProg 64 :=
.seq NamedBody131_23 NamedBody131_34

def NamedBody131_36 : StackLang.HolProg 64 :=
.seq NamedBody131_22 NamedBody131_35

def NamedBody131_37 : StackLang.HolProg 64 :=
.seq NamedBody131_21 NamedBody131_36

def NamedBody131_38 : StackLang.HolProg 64 :=
.seq NamedBody131_20 NamedBody131_37

def NamedBody131_39 : StackLang.HolProg 64 :=
.seq NamedBody131_19 NamedBody131_38

def NamedBody131_40 : StackLang.HolProg 64 :=
.seq NamedBody131_18 NamedBody131_39

def NamedBody131_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody131_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody131_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody131_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody131_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody131_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody131_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody131_48 : StackLang.HolProg 64 :=
.seq NamedBody131_46 NamedBody131_47

def NamedBody131_49 : StackLang.HolProg 64 :=
.seq NamedBody131_45 NamedBody131_48

def NamedBody131_50 : StackLang.HolProg 64 :=
.seq NamedBody131_44 NamedBody131_49

def NamedBody131_51 : StackLang.HolProg 64 :=
.seq NamedBody131_43 NamedBody131_50

def NamedBody131_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody131_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody131_54 : StackLang.HolProg 64 :=
.seq NamedBody131_52 NamedBody131_53

def NamedBody131_55 : StackLang.HolProg 64 :=
.call (some (NamedBody131_51, 1, 131, 2)) (Sum.inl 129) (some (NamedBody131_54, 131, 3))

def NamedBody131_56 : StackLang.HolProg 64 :=
.seq NamedBody131_42 NamedBody131_55

def NamedBody131_57 : StackLang.HolProg 64 :=
.seq NamedBody131_41 NamedBody131_56

def NamedBody131_58 : StackLang.HolProg 64 :=
.seq NamedBody131_40 NamedBody131_57

def NamedBody131_59 : StackLang.HolProg 64 :=
.seq NamedBody131_11 NamedBody131_58

def NamedBody131_60 : StackLang.HolProg 64 :=
.seq NamedBody131_8 NamedBody131_59

def NamedBody131_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody131_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody131_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody131_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody131_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody131_66 : StackLang.HolProg 64 :=
.seq NamedBody131_64 NamedBody131_65

def NamedBody131_67 : StackLang.HolProg 64 :=
.seq NamedBody131_63 NamedBody131_66

def NamedBody131_68 : StackLang.HolProg 64 :=
.seq NamedBody131_62 NamedBody131_67

def NamedBody131_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody131_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody131_71 : StackLang.HolProg 64 :=
.seq NamedBody131_69 NamedBody131_70

def NamedBody131_72 : StackLang.HolProg 64 :=
.seq NamedBody131_68 NamedBody131_71

def NamedBody131_73 : StackLang.HolProg 64 :=
.seq NamedBody131_61 NamedBody131_72

def NamedBody131_74 : StackLang.HolProg 64 :=
.seq NamedBody131_60 NamedBody131_73

def NamedBody131_75 : StackLang.HolProg 64 :=
.seq NamedBody131_7 NamedBody131_74

def NamedBody131_76 : StackLang.HolProg 64 :=
.seq NamedBody131_6 NamedBody131_75

def Named131 : Nat × StackLang.HolProg 64 := (131, NamedBody131_76)
theorem Named131_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed131 = Named131 := by
  kernel_rfl
#print axioms Named131_eq
end InitECandidate.Proofs.BackendStages
