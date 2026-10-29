import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify672
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body688_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body688_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body688_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "l1",
      Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "l3"])
  (Flapjack.Exp.const 0#64)) body688_0 body688_1

def body688_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_set_inf"
  [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body688_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body688_5 : Prog (BitVec 64) :=
.seq body688_3 body688_4

def body688_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)) body688_5 body688_1

def body688_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x0"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "x0"]

def body688_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x1"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "x1"]

def body688_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y0"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "y0"]

def body688_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y1"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "y1"]

def body688_11 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "x0")

def body688_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "x1")

def body688_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y0")

def body688_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y1")

def body688_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def body688_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body688_17 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "b2")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4321547867055981224#64, Flapjack.Exp.const 147241268046680925#64,
      Flapjack.Exp.const 2789960110459671136#64, Flapjack.Exp.const 2671978398120978541#64])

def body688_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b2", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4100506350182530919#64, Flapjack.Exp.const 7345568344173317438#64,
      Flapjack.Exp.const 15513160039642431658#64, Flapjack.Exp.const 90557763186888013#64])

def body688_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64]]

def body688_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body688_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body688_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_add"
  [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "b2"]

def body688_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body688_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body688_0 body688_1

def body688_25 : Prog (BitVec 64) :=
.seq body688_24 body688_4

def body688_26 : Prog (BitVec 64) :=
.seq body688_23 body688_25

def body688_27 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.const 64#64]) body688_26

def body688_28 : Prog (BitVec 64) :=
.seq body688_22 body688_27

def body688_29 : Prog (BitVec 64) :=
.seq body688_21 body688_28

def body688_30 : Prog (BitVec 64) :=
.seq body688_20 body688_29

def body688_31 : Prog (BitVec 64) :=
.seq body688_19 body688_30

def body688_32 : Prog (BitVec 64) :=
.seq body688_18 body688_31

def body688_33 : Prog (BitVec 64) :=
.seq body688_17 body688_32

def body688_34 : Prog (BitVec 64) :=
.decCall ("b2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body688_33

def body688_35 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body688_34

def body688_36 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body688_35

def body688_37 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body688_36

def body688_38 : Prog (BitVec 64) :=
.seq body688_16 body688_37

def body688_39 : Prog (BitVec 64) :=
.seq body688_15 body688_38

def body688_40 : Prog (BitVec 64) :=
.seq body688_14 body688_39

def body688_41 : Prog (BitVec 64) :=
.seq body688_13 body688_40

def body688_42 : Prog (BitVec 64) :=
.seq body688_12 body688_41

def body688_43 : Prog (BitVec 64) :=
.seq body688_11 body688_42

def body688_44 : Prog (BitVec 64) :=
.seq body688_10 body688_43

def body688_45 : Prog (BitVec 64) :=
.seq body688_9 body688_44

def body688_46 : Prog (BitVec 64) :=
.seq body688_8 body688_45

def body688_47 : Prog (BitVec 64) :=
.seq body688_7 body688_46

def body688_48 : Prog (BitVec 64) :=
.seq body688_6 body688_47

def body688_49 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 128#64]) body688_48

def body688_50 : Prog (BitVec 64) :=
.seq body688_2 body688_49

def body688_51 : Prog (BitVec 64) :=
.decCall ("l3") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y1",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body688_50

def body688_52 : Prog (BitVec 64) :=
.decCall ("l2") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y0",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body688_51

def body688_53 : Prog (BitVec 64) :=
.decCall ("l1") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x1",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body688_52

def body688_54 : Prog (BitVec 64) :=
.decCall ("l0") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x0",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body688_53

def body688_55 : Prog (BitVec 64) :=
.decCall ("y0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 96#64],
  Flapjack.Exp.const 32#64]) body688_54

def body688_56 : Prog (BitVec 64) :=
.decCall ("y1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) body688_55

def body688_57 : Prog (BitVec 64) :=
.decCall ("x0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) body688_56

def body688_58 : Prog (BitVec 64) :=
.decCall ("x1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64]) body688_57

def body688_59 : Prog (BitVec 64) :=
.seq body688_6 body688_7

def body688_60 : Prog (BitVec 64) :=
.seq body688_59 body688_8

def body688_61 : Prog (BitVec 64) :=
.seq body688_60 body688_9

def body688_62 : Prog (BitVec 64) :=
.seq body688_61 body688_10

def body688_63 : Prog (BitVec 64) :=
.seq body688_62 body688_11

def body688_64 : Prog (BitVec 64) :=
.seq body688_63 body688_12

def body688_65 : Prog (BitVec 64) :=
.seq body688_64 body688_13

def body688_66 : Prog (BitVec 64) :=
.seq body688_65 body688_14

def body688_67 : Prog (BitVec 64) :=
.seq body688_66 body688_15

def body688_68 : Prog (BitVec 64) :=
.seq body688_67 body688_16

def body688_69 : Prog (BitVec 64) :=
.seq body688_17 body688_18

def body688_70 : Prog (BitVec 64) :=
.seq body688_69 body688_19

def body688_71 : Prog (BitVec 64) :=
.seq body688_70 body688_20

def body688_72 : Prog (BitVec 64) :=
.seq body688_71 body688_21

def body688_73 : Prog (BitVec 64) :=
.seq body688_72 body688_22

def body688_74 : Prog (BitVec 64) :=
.seq body688_23 body688_24

def body688_75 : Prog (BitVec 64) :=
.seq body688_74 body688_4

def body688_76 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.const 64#64]) body688_75

def body688_77 : Prog (BitVec 64) :=
.seq body688_73 body688_76

def body688_78 : Prog (BitVec 64) :=
.decCall ("b2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body688_77

def body688_79 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body688_78

def body688_80 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body688_79

def body688_81 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body688_80

def body688_82 : Prog (BitVec 64) :=
.seq body688_68 body688_81

def body688_83 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 128#64]) body688_82

def body688_84 : Prog (BitVec 64) :=
.seq body688_2 body688_83

def body688_85 : Prog (BitVec 64) :=
.decCall ("l3") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y1",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body688_84

def body688_86 : Prog (BitVec 64) :=
.decCall ("l2") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y0",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body688_85

def body688_87 : Prog (BitVec 64) :=
.decCall ("l1") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x1",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body688_86

def body688_88 : Prog (BitVec 64) :=
.decCall ("l0") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x0",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body688_87

def body688_89 : Prog (BitVec 64) :=
.decCall ("y0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 96#64],
  Flapjack.Exp.const 32#64]) body688_88

def body688_90 : Prog (BitVec 64) :=
.decCall ("y1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) body688_89

def body688_91 : Prog (BitVec 64) :=
.decCall ("x0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) body688_90

def body688_92 : Prog (BitVec 64) :=
.decCall ("x1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64]) body688_91

def originalData688 : Decl (BitVec 64) :=
.function { name := "bn254_parse_g2", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body688_58, returnShape := (Flapjack.Shape.one) }
def simplifiedData688 : Decl (BitVec 64) :=
.function { name := "bn254_parse_g2", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body688_92, returnShape := (Flapjack.Shape.one) }
def original688 := Pancake.PanLang.declToHOL originalData688
def simplified688 := Pancake.PanLang.declToHOL simplifiedData688
end InitECandidate.Proofs.FrontendStages.Declarations
