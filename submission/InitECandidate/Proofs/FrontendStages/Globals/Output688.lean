import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data688
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate672
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody688_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody688_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody688_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "l1",
      Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "l3"])
  (Flapjack.Exp.const 0#64)) globalBody688_0 globalBody688_1

def globalBody688_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_set_inf"
  [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody688_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody688_5 : Prog (BitVec 64) :=
.seq globalBody688_3 globalBody688_4

def globalBody688_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)) globalBody688_5 globalBody688_1

def globalBody688_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x0"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "x0"]

def globalBody688_8 : Prog (BitVec 64) :=
.seq globalBody688_6 globalBody688_7

def globalBody688_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x1"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "x1"]

def globalBody688_10 : Prog (BitVec 64) :=
.seq globalBody688_8 globalBody688_9

def globalBody688_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y0"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "y0"]

def globalBody688_12 : Prog (BitVec 64) :=
.seq globalBody688_10 globalBody688_11

def globalBody688_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y1"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "y1"]

def globalBody688_14 : Prog (BitVec 64) :=
.seq globalBody688_12 globalBody688_13

def globalBody688_15 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "x0")

def globalBody688_16 : Prog (BitVec 64) :=
.seq globalBody688_14 globalBody688_15

def globalBody688_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "x1")

def globalBody688_18 : Prog (BitVec 64) :=
.seq globalBody688_16 globalBody688_17

def globalBody688_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y0")

def globalBody688_20 : Prog (BitVec 64) :=
.seq globalBody688_18 globalBody688_19

def globalBody688_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y1")

def globalBody688_22 : Prog (BitVec 64) :=
.seq globalBody688_20 globalBody688_21

def globalBody688_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def globalBody688_24 : Prog (BitVec 64) :=
.seq globalBody688_22 globalBody688_23

def globalBody688_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody688_26 : Prog (BitVec 64) :=
.seq globalBody688_24 globalBody688_25

def globalBody688_27 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "b2")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4321547867055981224#64, Flapjack.Exp.const 147241268046680925#64,
      Flapjack.Exp.const 2789960110459671136#64, Flapjack.Exp.const 2671978398120978541#64])

def globalBody688_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b2", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4100506350182530919#64, Flapjack.Exp.const 7345568344173317438#64,
      Flapjack.Exp.const 15513160039642431658#64, Flapjack.Exp.const 90557763186888013#64])

def globalBody688_29 : Prog (BitVec 64) :=
.seq globalBody688_27 globalBody688_28

def globalBody688_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64]]

def globalBody688_31 : Prog (BitVec 64) :=
.seq globalBody688_29 globalBody688_30

def globalBody688_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody688_33 : Prog (BitVec 64) :=
.seq globalBody688_31 globalBody688_32

def globalBody688_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody688_35 : Prog (BitVec 64) :=
.seq globalBody688_33 globalBody688_34

def globalBody688_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_add"
  [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "b2"]

def globalBody688_37 : Prog (BitVec 64) :=
.seq globalBody688_35 globalBody688_36

def globalBody688_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody688_39 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody688_0 globalBody688_1

def globalBody688_40 : Prog (BitVec 64) :=
.seq globalBody688_38 globalBody688_39

def globalBody688_41 : Prog (BitVec 64) :=
.seq globalBody688_40 globalBody688_4

def globalBody688_42 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.const 64#64]) globalBody688_41

def globalBody688_43 : Prog (BitVec 64) :=
.seq globalBody688_37 globalBody688_42

def globalBody688_44 : Prog (BitVec 64) :=
.decCall ("b2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody688_43

def globalBody688_45 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody688_44

def globalBody688_46 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody688_45

def globalBody688_47 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody688_46

def globalBody688_48 : Prog (BitVec 64) :=
.seq globalBody688_26 globalBody688_47

def globalBody688_49 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 128#64]) globalBody688_48

def globalBody688_50 : Prog (BitVec 64) :=
.seq globalBody688_2 globalBody688_49

def globalBody688_51 : Prog (BitVec 64) :=
.decCall ("l3") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y1",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) globalBody688_50

def globalBody688_52 : Prog (BitVec 64) :=
.decCall ("l2") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y0",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) globalBody688_51

def globalBody688_53 : Prog (BitVec 64) :=
.decCall ("l1") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x1",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) globalBody688_52

def globalBody688_54 : Prog (BitVec 64) :=
.decCall ("l0") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x0",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) globalBody688_53

def globalBody688_55 : Prog (BitVec 64) :=
.decCall ("y0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 96#64],
  Flapjack.Exp.const 32#64]) globalBody688_54

def globalBody688_56 : Prog (BitVec 64) :=
.decCall ("y1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) globalBody688_55

def globalBody688_57 : Prog (BitVec 64) :=
.decCall ("x0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) globalBody688_56

def globalBody688_58 : Prog (BitVec 64) :=
.decCall ("x1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64]) globalBody688_57

def globalData688 : Decl (BitVec 64) :=
.function { name := "bn254_parse_g2", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody688_58, returnShape := (Flapjack.Shape.one) }
def globalOutput688 := Pancake.PanLang.declToHOL globalData688
end InitECandidate.Proofs.FrontendStages.Declarations
