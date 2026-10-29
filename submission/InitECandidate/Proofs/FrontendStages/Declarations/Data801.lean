import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify785
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body801_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "g2",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 480#64]]

def body801_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "g2", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 576#64]]

def body801_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "g2", Flapjack.Exp.const 192#64]]

def body801_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "kzg_neg_scalar"
  [Flapjack.Exp.var Flapjack.VarKind.local "zb", Flapjack.Exp.var Flapjack.VarKind.local "k"]

def body801_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "xmz", Flapjack.Exp.var Flapjack.VarKind.local "g2",
    Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 4#64]

def body801_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "setup",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 672#64]]

def body801_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "setup", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 768#64]]

def body801_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "setup", Flapjack.Exp.const 192#64]]

def body801_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "xmz", Flapjack.Exp.var Flapjack.VarKind.local "setup",
    Flapjack.Exp.var Flapjack.VarKind.local "xmz"]

def body801_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "g1",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 384#64],
    Flapjack.Exp.const 48#64]

def body801_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "g1", Flapjack.Exp.const 48#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 432#64],
    Flapjack.Exp.const 48#64]

def body801_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "g1", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
      Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
      Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64])

def body801_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "kzg_neg_scalar"
  [Flapjack.Exp.var Flapjack.VarKind.local "yb", Flapjack.Exp.var Flapjack.VarKind.local "k"]

def body801_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "pmy", Flapjack.Exp.var Flapjack.VarKind.local "g1",
    Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 4#64]

def body801_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "pmy", Flapjack.Exp.var Flapjack.VarKind.local "commitment",
    Flapjack.Exp.var Flapjack.VarKind.local "pmy"]

def body801_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "g2", Flapjack.Exp.var Flapjack.VarKind.local "g2"]

def body801_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body801_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_accumulate"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "pmy",
    Flapjack.Exp.var Flapjack.VarKind.local "g2"]

def body801_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_accumulate"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "proof",
    Flapjack.Exp.var Flapjack.VarKind.local "xmz"]

def body801_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_final_exp"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body801_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body801_21 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "one")

def body801_22 : Prog (BitVec 64) :=
.seq body801_20 body801_21

def body801_23 : Prog (BitVec 64) :=
.decCall ("one") (Flapjack.Shape.one) ("fp12_is_one") ([Flapjack.Exp.var Flapjack.VarKind.local "acc"]) body801_22

def body801_24 : Prog (BitVec 64) :=
.seq body801_19 body801_23

def body801_25 : Prog (BitVec 64) :=
.seq body801_18 body801_24

def body801_26 : Prog (BitVec 64) :=
.seq body801_17 body801_25

def body801_27 : Prog (BitVec 64) :=
.seq body801_16 body801_26

def body801_28 : Prog (BitVec 64) :=
.seq body801_15 body801_27

def body801_29 : Prog (BitVec 64) :=
.seq body801_14 body801_28

def body801_30 : Prog (BitVec 64) :=
.seq body801_13 body801_29

def body801_31 : Prog (BitVec 64) :=
.seq body801_12 body801_30

def body801_32 : Prog (BitVec 64) :=
.seq body801_11 body801_31

def body801_33 : Prog (BitVec 64) :=
.seq body801_10 body801_32

def body801_34 : Prog (BitVec 64) :=
.seq body801_9 body801_33

def body801_35 : Prog (BitVec 64) :=
.seq body801_8 body801_34

def body801_36 : Prog (BitVec 64) :=
.seq body801_7 body801_35

def body801_37 : Prog (BitVec 64) :=
.seq body801_6 body801_36

def body801_38 : Prog (BitVec 64) :=
.seq body801_5 body801_37

def body801_39 : Prog (BitVec 64) :=
.seq body801_4 body801_38

def body801_40 : Prog (BitVec 64) :=
.seq body801_3 body801_39

def body801_41 : Prog (BitVec 64) :=
.seq body801_2 body801_40

def body801_42 : Prog (BitVec 64) :=
.seq body801_1 body801_41

def body801_43 : Prog (BitVec 64) :=
.seq body801_0 body801_42

def body801_44 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body801_43

def body801_45 : Prog (BitVec 64) :=
.decCall ("xmz") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body801_44

def body801_46 : Prog (BitVec 64) :=
.decCall ("pmy") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body801_45

def body801_47 : Prog (BitVec 64) :=
.decCall ("setup") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body801_46

def body801_48 : Prog (BitVec 64) :=
.decCall ("g2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body801_47

def body801_49 : Prog (BitVec 64) :=
.decCall ("g1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body801_48

def body801_50 : Prog (BitVec 64) :=
.decCall ("k") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body801_49

def body801_51 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body801_50

def body801_52 : Prog (BitVec 64) :=
.seq body801_0 body801_1

def body801_53 : Prog (BitVec 64) :=
.seq body801_52 body801_2

def body801_54 : Prog (BitVec 64) :=
.seq body801_53 body801_3

def body801_55 : Prog (BitVec 64) :=
.seq body801_54 body801_4

def body801_56 : Prog (BitVec 64) :=
.seq body801_55 body801_5

def body801_57 : Prog (BitVec 64) :=
.seq body801_56 body801_6

def body801_58 : Prog (BitVec 64) :=
.seq body801_57 body801_7

def body801_59 : Prog (BitVec 64) :=
.seq body801_58 body801_8

def body801_60 : Prog (BitVec 64) :=
.seq body801_59 body801_9

def body801_61 : Prog (BitVec 64) :=
.seq body801_60 body801_10

def body801_62 : Prog (BitVec 64) :=
.seq body801_61 body801_11

def body801_63 : Prog (BitVec 64) :=
.seq body801_62 body801_12

def body801_64 : Prog (BitVec 64) :=
.seq body801_63 body801_13

def body801_65 : Prog (BitVec 64) :=
.seq body801_64 body801_14

def body801_66 : Prog (BitVec 64) :=
.seq body801_65 body801_15

def body801_67 : Prog (BitVec 64) :=
.seq body801_66 body801_16

def body801_68 : Prog (BitVec 64) :=
.seq body801_67 body801_17

def body801_69 : Prog (BitVec 64) :=
.seq body801_68 body801_18

def body801_70 : Prog (BitVec 64) :=
.seq body801_69 body801_19

def body801_71 : Prog (BitVec 64) :=
.seq body801_70 body801_23

def body801_72 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body801_71

def body801_73 : Prog (BitVec 64) :=
.decCall ("xmz") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body801_72

def body801_74 : Prog (BitVec 64) :=
.decCall ("pmy") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body801_73

def body801_75 : Prog (BitVec 64) :=
.decCall ("setup") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body801_74

def body801_76 : Prog (BitVec 64) :=
.decCall ("g2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body801_75

def body801_77 : Prog (BitVec 64) :=
.decCall ("g1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body801_76

def body801_78 : Prog (BitVec 64) :=
.decCall ("k") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body801_77

def body801_79 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body801_78

def originalData801 : Decl (BitVec 64) :=
.function { name := "kzg_verify", inline := false, exported := false, params := [("commitment", Flapjack.Shape.one), ("zb", Flapjack.Shape.one), ("yb", Flapjack.Shape.one),
  ("proof", Flapjack.Shape.one)], body := body801_51, returnShape := (Flapjack.Shape.one) }
def simplifiedData801 : Decl (BitVec 64) :=
.function { name := "kzg_verify", inline := false, exported := false, params := [("commitment", Flapjack.Shape.one), ("zb", Flapjack.Shape.one), ("yb", Flapjack.Shape.one),
  ("proof", Flapjack.Shape.one)], body := body801_79, returnShape := (Flapjack.Shape.one) }
def original801 := Pancake.PanLang.declToHOL originalData801
def simplified801 := Pancake.PanLang.declToHOL simplifiedData801
end InitECandidate.Proofs.FrontendStages.Declarations
